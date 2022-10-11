package site.metacoding.miniproject.web.dto.response;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Getter;
import site.metacoding.miniproject.domain.person_skill.PersonSkill;

@Getter
@AllArgsConstructor
public class ResumeFormDto {
    private String personName;
    private String personEmail;
    private String degree;
    private List<PersonSkill> personSkillList;

}
