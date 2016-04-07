package com.mattfirtion.rx.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import com.mattfirtion.rx.model.Track;
import com.mattfirtion.rx.repository.TrackRepository;

@RestController
@RequestMapping("/tracks")
public class TrackController {
	
	private static final Logger logger = LoggerFactory.getLogger(TrackController.class);
	
	@Autowired
	private TrackRepository repo;
	
	@RequestMapping(method = RequestMethod.GET)
	public List<Track> findTracks() {
		return repo.findAll();
	}

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public Track findOne(@PathVariable Integer id) {
    	return repo.findOne(id);
    }
	
	@RequestMapping(method = RequestMethod.POST)
	public Track addTrack(@RequestBody Track track) {
		track.setId(null);
		
		logger.info("Adding track");
		
		return repo.saveAndFlush(track);
	}
	
	@RequestMapping(value = "/{id}", method = RequestMethod.PUT)
	public Track updateTrack(@RequestBody Track updatedTrack, @PathVariable Integer id) {
		updatedTrack.setId(id);
		
		logger.info("Updating track");
		
		return repo.saveAndFlush(updatedTrack);
	}
	
	@RequestMapping(value = "/{id}", method = RequestMethod.DELETE)
	public void deleteTrack(@PathVariable Integer id) {
		
		logger.info("Deleting track");
		
		repo.delete(id);
	}
}
