package com.example.nptel.exception;

@SuppressWarnings("serial")
public class UserIdAlreadyPresentException extends Exception {
		public UserIdAlreadyPresentException(String errMessage) {
			super(errMessage);
		}
}
