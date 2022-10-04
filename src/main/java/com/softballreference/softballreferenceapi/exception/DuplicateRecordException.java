package com.softballreference.softballreferenceapi.exception;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(value = HttpStatus.CONFLICT)
public class DuplicateRecordException extends ApiException {

    private static final long serialVersionUID = 1323367613806334690L;

    public DuplicateRecordException(String exceptionMessage, String id) {
        /*
         * Passes the exception message to the RuntimeException so that it'll show up in
         * the HttpResponse's message property.
         */
        super(exceptionMessage, id);

    }
}
