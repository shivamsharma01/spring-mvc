package com.example.nptel.service;

import com.example.nptel.exception.UserIdAlreadyPresentException;
import com.example.nptel.model.User;

public interface RegistrationService {
	public void addUser(User user) throws UserIdAlreadyPresentException;
}
