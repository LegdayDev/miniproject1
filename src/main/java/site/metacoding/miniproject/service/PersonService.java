package site.metacoding.miniproject.service;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import site.metacoding.miniproject.domain.person.Person;
import site.metacoding.miniproject.domain.person.PersonDao;
import site.metacoding.miniproject.domain.person_skill.PersonSkillDao;
import site.metacoding.miniproject.domain.resume.ResumeDao;
import site.metacoding.miniproject.domain.user.User;
import site.metacoding.miniproject.domain.user.UserDao;
import site.metacoding.miniproject.web.dto.request.PersonJoinDto;
import site.metacoding.miniproject.web.dto.request.ResumeWriteDto;
import site.metacoding.miniproject.web.dto.response.ResumeFormDto;

@RequiredArgsConstructor
@Service
public class PersonService {

	private final PersonDao personDao;
	private final UserDao userDao;
	private final ResumeDao resumeDao;
	private final PersonSkillDao personSkillDao;

	public void 회원가입(PersonJoinDto personJoinDto) {
		userDao.insert(personJoinDto.toUser());
		User userPS = userDao.findByUsername(personJoinDto.getUsername());
		personDao.insert(personJoinDto.toPerson(userPS.getUserId()));
	}

	public ResumeFormDto 이력서내용가져오기(Integer personId) {
		Person person = personDao.findById(personId);
		ResumeFormDto resumeFormDto = new ResumeFormDto(person.getPersonName(), person.getPersonEmail(),
				person.getDegree(),
				personSkillDao.findByPersonId(personId));
		return resumeFormDto;

	}

	public void 이력서등록(ResumeWriteDto resumeWriteDto, Integer personId) {
		resumeDao.insert(resumeWriteDto.toEntity(personId));
	}

}
