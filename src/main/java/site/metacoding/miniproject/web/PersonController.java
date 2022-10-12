package site.metacoding.miniproject.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;
import site.metacoding.miniproject.domain.user.User;
import site.metacoding.miniproject.service.PersonService;
import site.metacoding.miniproject.service.UserService;
import site.metacoding.miniproject.web.dto.request.PersonJoinDto;
import site.metacoding.miniproject.web.dto.request.ResumeWriteDto;
import site.metacoding.miniproject.web.dto.response.CMRespDto;
import site.metacoding.miniproject.web.dto.response.ResumeFormDto;

@RequiredArgsConstructor
@Controller
public class PersonController {

	private final PersonService personService;
	private final UserService userService;

	@PostMapping("/person/join")
	public @ResponseBody CMRespDto<?> joinPerson(@RequestBody PersonJoinDto personJoinDto) {
		personService.회원가입(personJoinDto);
		User userPS = userService.유저네임으로유저찾기(personJoinDto.getUsername());
		if (userPS == null) {
			return new CMRespDto<>(-1, "회원가입 실패", null);
		}
		return new CMRespDto<>(1, "회원가입 성공", null);
	}

	@GetMapping("/person/resumeWrite/{personId}")
	public String resumeForm(@PathVariable Integer personId, Model model) {
		ResumeFormDto personPS = personService.이력서내용가져오기(personId);
		model.addAttribute("person", personPS);
		return "person/resumeSaveForm";
	}

	@PostMapping("/save/resume/{personId}")
	public @ResponseBody CMRespDto<?> resumeWrite(@RequestBody ResumeWriteDto resumeWriteDto,
			@PathVariable Integer personId) {
		personService.이력서등록(resumeWriteDto, personId);
		return new CMRespDto<>(1, "이력서 등록 성공", null);
	}

}