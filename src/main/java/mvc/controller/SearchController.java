package mvc.controller;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import mvc.dao.OrganizationDao;
import mvc.model.Data;
import mvc.model.Organization;

@Controller
public class SearchController {

	@Autowired
	private OrganizationDao organizationDao;

	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public String searchGet(@ModelAttribute(value = "data", binding = false) Data data,
			@ModelAttribute(value = "newOrg", binding = false) Organization newOrg, Model model) {
		return "search";
	}

	@RequestMapping(value = "/search", method = RequestMethod.POST)
	public String searchPost(@ModelAttribute("data") Data data,
			@ModelAttribute(value = "newOrg", binding = false) Organization newOrg, Model model) {
		String search = data.getData();
		if (search.isEmpty()) {
			return "search";
		} else {
			List<Organization> findOrg = getFindOrg(search);
			model.addAttribute("organizations", findOrg);
			return "search";
		}
	}

	@GetMapping("/delete/{id}")
	public String delete(@PathVariable Long id, RedirectAttributes redirectAttributes) {
		organizationDao.deleteById(id);
		redirectAttributes.addFlashAttribute("deleteMessage", "Удалено!");
		return "redirect:/search";
	}
	
	@GetMapping("/update/{id}")
	public String update(@ModelAttribute(value = "data", binding = false) Data data,
			@PathVariable Long id, Model model) {
		Organization org = organizationDao.findById(id).get();
		model.addAttribute("newOrg", org);
		return "search";
	}

	@PostMapping("/save")
	public String save(@ModelAttribute("newOrg") @Valid Organization newOrg, BindingResult result,
			RedirectAttributes redirectAttributes, Model model) {
		if (result.hasErrors()) {
			model.addAttribute("organizations", organizationDao.findAll());
			return "search";
		}
		organizationDao.save(newOrg);
		redirectAttributes.addFlashAttribute("saveMessage", "Сохранено!");
		return "redirect:/search";
	}

	//Получение всей БД и выборка соответствующих результатов
	private List<Organization> getFindOrg(String search) {
		Page<Organization> allOrg = organizationDao.findAll(PageRequest.of(0, 20, Sort.by("name")));
		List<Organization> allOrgList = new ArrayList<Organization>();
		if (allOrgList != null & allOrg.hasContent()) {
			allOrgList = allOrg.getContent();
		}
		List<Organization> findOrg = new ArrayList<Organization>();
		if (allOrgList != null) {
			for (Organization org : allOrgList) {
				if (org.getName().toLowerCase().contains(search.toLowerCase())) {
					findOrg.add(org);
				}
			}
		}
		return findOrg;
	}
}
