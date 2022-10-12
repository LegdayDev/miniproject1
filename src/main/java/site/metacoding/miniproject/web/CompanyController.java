package site.metacoding.miniproject.web;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;
import site.metacoding.miniproject.domain.user.User;
import site.metacoding.miniproject.service.CompanyService;
import site.metacoding.miniproject.service.UserService;
import site.metacoding.miniproject.web.dto.request.CompanyJoinDto;
import site.metacoding.miniproject.web.dto.response.CMRespDto;
import site.metacoding.miniproject.web.dto.response.CompanyRecommendDto;

@RequiredArgsConstructor
@Controller
public class CompanyController {

	private final CompanyService companyService;
	private final UserService userService;

	@PostMapping("/company/join")
	public @ResponseBody CMRespDto<?> joinPerson(@RequestBody CompanyJoinDto companyJoinDto) {
		companyService.기업회원가입(companyJoinDto);
		User userPS = userService.유저네임으로유저찾기(companyJoinDto.getUsername());
		if (userPS == null) {
			return new CMRespDto<>(-1, "회원가입 실패", null);
		}
		return new CMRespDto<>(1, "회원가입 성공", null);
	}
	
	@GetMapping("/company/recommendList")
	public String recommendList(Model model) {
		List<CompanyRecommendDto> companyRecommendDto = companyService.기업추천리스트보기();
		model.addAttribute("companyRecommendList", companyRecommendDto);
		return "/company/companyRecommendList";
	}
	
	
}
