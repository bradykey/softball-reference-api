package com.softballreference.softballreferenceapi.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.server.ResponseStatusException;

import com.softballreference.softballreferenceapi.auth.JwtUtil;
import com.softballreference.softballreferenceapi.auth.LoginRequest;
import com.softballreference.softballreferenceapi.auth.LoginResponse;

@CrossOrigin
@RestController
@RequestMapping("/auth")
public class AuthController {

    private final JwtUtil jwtUtil;
    private final PasswordEncoder passwordEncoder;
    private final String adminUsername;
    private final String adminPasswordHash;
    private final long expirationMs;

    public AuthController(JwtUtil jwtUtil,
            PasswordEncoder passwordEncoder,
            @Value("${admin.username}") String adminUsername,
            @Value("${admin.password-hash}") String adminPasswordHash,
            @Value("${jwt.expiration-ms}") long expirationMs) {
        this.jwtUtil = jwtUtil;
        this.passwordEncoder = passwordEncoder;
        this.adminUsername = adminUsername;
        this.adminPasswordHash = adminPasswordHash;
        this.expirationMs = expirationMs;
    }

    @PostMapping("/login")
    public ResponseEntity<LoginResponse> login(@Valid @RequestBody LoginRequest request) {
        if (adminUsername == null || adminUsername.isBlank()
                || adminPasswordHash == null || adminPasswordHash.isBlank()) {
            throw new ResponseStatusException(HttpStatus.SERVICE_UNAVAILABLE, "Admin auth is not configured");
        }
        boolean usernameMatches = adminUsername.equals(request.getUsername());
        boolean passwordMatches = passwordEncoder.matches(request.getPassword(), adminPasswordHash);
        if (!usernameMatches || !passwordMatches) {
            throw new ResponseStatusException(HttpStatus.UNAUTHORIZED, "Invalid credentials");
        }
        String token = jwtUtil.generateToken(adminUsername);
        return ResponseEntity.ok(new LoginResponse(token, expirationMs));
    }
}
