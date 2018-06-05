package com.example.nptel.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.stereotype.Service;

import com.example.nptel.entity.UserEntity;
import com.example.nptel.exception.UserIdAlreadyPresentException;
import com.example.nptel.model.User;
import com.example.nptel.repository.UserRepository;

@Service
public class RegistrationServiceImpl implements RegistrationService {

	@Autowired
	private UserRepository userRepository;

	@Override
	public void addUser(User user) throws UserIdAlreadyPresentException {
		// TODO Auto-generated method stub
		Example<UserEntity> userToUserEntity = Example.of(new UserEntity());
		userToUserEntity.getProbe().setUserId(user.getUserId());
		Optional<UserEntity> userEntity = userRepository.findOne(userToUserEntity);
		if (userEntity != null) {
			throw new UserIdAlreadyPresentException("RegistrationService.USERID_PRESENT");
		}
		userEntity.get().setPassword(user.getPassword());
		userEntity.get().setName(user.getName());
		userEntity.get().setCity(user.getCity());
		userEntity.get().setPhone(user.getPhone());
		userEntity.get().setPassword(user.getPassword());
		userEntity.get().setEmail(user.getEmail());
		userRepository.saveAndFlush(userEntity.get());
	}

}
