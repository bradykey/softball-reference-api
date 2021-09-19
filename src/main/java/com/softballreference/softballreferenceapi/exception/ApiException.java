package com.softballreference.softballreferenceapi.exception;

public class ApiException extends RuntimeException{

	private static final long serialVersionUID = 1230660875812885138L;
	
	private String exceptionMessage;
    private Object fieldValue;

    public ApiException(String exceptionMessage, Object id) {
        /*
         * Passes the exception message to the RuntimeException so that it'll show up in
         * the HttpResponse's message property.
         */
        super(exceptionMessage);

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
