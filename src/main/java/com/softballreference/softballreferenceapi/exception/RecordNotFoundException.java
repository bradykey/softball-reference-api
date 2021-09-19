package com.softballreference.softballreferenceapi.exception;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(value = HttpStatus.NOT_FOUND)
public class RecordNotFoundException extends ApiException {

	private static final long serialVersionUID = -7451618369191616594L;
	
	public RecordNotFoundException(String exceptionMessage, Long id) {
		super(exceptionMessage, id);
	}
}