package com.mattfirtion.rx.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import com.mattfirtion.rx.model.Release;
import com.mattfirtion.rx.repository.ReleaseRepository;

@RestController
@RequestMapping("/releases")
public class ReleaseController {
	
	private static final Logger logger = LoggerFactory.getLogger(ReleaseController.class);
	
	@Autowired
	private ReleaseRepository repo;
	
	@RequestMapping(method = RequestMethod.GET)
	public List<Release> findReleases() {
		return repo.findAll();
	}

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public Release findOne(@PathVariable Integer id) {
    	return repo.findOne(id);
    }
	
	@RequestMapping(method = RequestMethod.POST)
	public Release addRelease(@RequestBody Release release) {
		release.setId(null);
		
		logger.info("Adding release");
		
		return repo.saveAndFlush(release);
	}
	
	@RequestMapping(value = "/{id}", method = RequestMethod.PUT)
	public Release updateRelease(@RequestBody Release updatedRelease, @PathVariable Integer id) {
		updatedRelease.setId(id);
		
		logger.info("Updating release");
		
		return repo.saveAndFlush(updatedRelease);
	}
	
	@RequestMapping(value = "/{id}", method = RequestMethod.DELETE)
	public void deleteRelease(@PathVariable Integer id) {
		
		logger.info("Deleting release");
		
		repo.delete(id);
	}
}
