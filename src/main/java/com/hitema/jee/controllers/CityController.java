package com.hitema.jee.controllers;


import com.hitema.jee.entities.City;
import com.hitema.jee.entities.Country;
import com.hitema.jee.interfaces.CityService;
import com.hitema.jee.interfaces.CountryService;
import jakarta.annotation.PostConstruct;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;


@Controller
public class CityController {

    private static final Logger log = LogManager.getLogger(CityController.class);

    private CityService cityService;
    private CountryService countryService;

    public CityController(CityService cityService, CountryService countryService) {

        this.cityService = cityService;
        this.countryService = countryService;
    }


    @PostConstruct
    private void check() {
        log.info("Check postconstruct called service Up : " + (cityService != null ? "Yes" : "No"));
    }


    @GetMapping("/cities")
    public ModelAndView getCountry() {
        List<City> cities = cityService.readAll();
        return new ModelAndView("city/all", "cities", cities);
    }

    @GetMapping("/city/add")
    public ModelAndView addCityGet() {
        List<Country> countries = countryService.readAll();
        log.info("Countries : " + countries);
        return new ModelAndView("city/add", "countries", countries);
    }


    @PostMapping("/city/add")
    public ModelAndView addCityPost(@Validated @ModelAttribute("addCityPost") City city) {
        log.info("City toto : " + city);
        cityService.create(city);
        return new ModelAndView("redirect:/cities");
    }

    @PostMapping("/city/delete")
    public ModelAndView deleteCity(@ModelAttribute("deleteCity") City city) {
        cityService.delete(city.getId());
        return new ModelAndView("redirect:/cities");
    }
}
