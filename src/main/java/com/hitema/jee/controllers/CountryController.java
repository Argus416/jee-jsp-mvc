package com.hitema.jee.controllers;


import com.hitema.jee.entities.Country;
import com.hitema.jee.interfaces.CountryService;
import jakarta.annotation.PostConstruct;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;


@Controller
public class CountryController {

    private static final Logger log = LogManager.getLogger(CountryController.class);

    private CountryService service;

    public CountryController(CountryService service) {
        this.service = service;
    }

    @PostConstruct
    private void check() {
        log.info("Check postconstruct called service Up : " + (service != null ? "Yes" : "No"));
    }


    @GetMapping("/countries")
    public ModelAndView getCountries() {
        List<Country> countries = service.readAll();
        return new ModelAndView("country/all", "countries", countries);
    }

    @GetMapping("/country/{id}")
    public ModelAndView getCountry(@PathVariable String id) {
        Long numericId = Long.parseLong(id);
        Country country = service.read(numericId);
        System.out.println("Country : " + country);
        return new ModelAndView("country/one", "country", country);
    }

    @GetMapping("/country/add")
    public ModelAndView addCountryGet() {
        return new ModelAndView("country/add");
    }

    @PostMapping("/country/add")
    public ModelAndView addCountryPost(@Validated @ModelAttribute("addCountryPost") Country country) {
        log.info("Country hi : " + country);
        service.create(country);
        return new ModelAndView("country/one", "country", country);
    }
}
