package cz.czechitas.java2webapps.ukol7.controller;

import cz.czechitas.java2webapps.ukol7.service.PostService;
import jakarta.validation.Valid;
import jakarta.validation.constraints.Past;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

import java.time.LocalDate;

@Controller
public class PostController {

    private final PostService postService;

    public PostController(PostService postService) {
        this.postService = postService;
    }

    @GetMapping("")
    public ModelAndView index(@Valid @Past LocalDate published) {
        ModelAndView modelAndView = new ModelAndView("/index");
        modelAndView.addObject("posty", postService.list());
        return modelAndView;
    }

    @GetMapping("/post/{slug}")
    public ModelAndView post(@PathVariable String slug) {
        ModelAndView modelAndView = new ModelAndView("/post");
        modelAndView.addObject("post", postService.singlePost(slug));
        return modelAndView;
    }
}
