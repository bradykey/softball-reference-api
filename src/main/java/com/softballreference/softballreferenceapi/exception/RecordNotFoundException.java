package com.softballreference.softballreferenceapi.exception;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(value = HttpStatus.NOT_FOUND)
public class RecordNotFoundException extends RuntimeException {

    private String exceptionMessage;
    private Object fieldValue;

    public RecordNotFoundException(String exceptionMessage, Long id) {
        /*
         * Passes the exception message to the RuntimeException so that it'll show up in
         * the HttpResponse's message property.
         */
        super(exceptionMessage + " - " + id);

        this.exceptionMessage = exceptionMessage;
        this.fieldValue = id;
    }

    public String getExceptionMessage() {
        return this.exceptionMessage;
    }

    public Object getFieldValue() {
        return fieldValue;
    }
}
