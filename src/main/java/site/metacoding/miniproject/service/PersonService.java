package site.metacoding.miniproject.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.RequiredArgsConstructor;
import site.metacoding.miniproject.domain.person.PersonDao;
import site.metacoding.miniproject.domain.user.User;
import site.metacoding.miniproject.domain.user.UserDao;
import site.metacoding.miniproject.web.dto.request.PersonJoinDto;

@RequiredArgsConstructor
@Service
public class PersonService {

	private final PersonDao personDao;
	private final UserDao userDao;

	@Transactional(rollbackFor = {RuntimeException.class})
	public void 회원가입(PersonJoinDto personJoinDto) {
		userDao.insert(personJoinDto.toUser());
		User userPS = userDao.findByUsername(personJoinDto.getUsername());
		personDao.insert(personJoinDto.toPerson(userPS.getUserId()));
	}
}
