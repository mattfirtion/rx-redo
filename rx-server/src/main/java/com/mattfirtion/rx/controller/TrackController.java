package com.mattfirtion.rx.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import com.mattfirtion.rx.model.Track;
import com.mattfirtion.rx.repository.TrackRepository;

@RestController
@RequestMapping("/tracks")
public class TrackController {
	
	@Autowired
	private TrackRepository repo;
	
	@RequestMapping(method = RequestMethod.GET)
	public List<Track> findTracks() {
		return repo.findAll();
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public Track addTrack(@RequestBody Track track) {
		track.setId(null);;
		return repo.saveAndFlush(track);
	}
	
	@RequestMapping(value = "/{id}", method = RequestMethod.PUT)
	public Track updateTrack(@RequestBody Track updatedTrack, @PathVariable Integer id) {
		updatedTrack.setId(id);
		return repo.saveAndFlush(updatedTrack);
	}
	
	@RequestMapping(value = "/{id}", method = RequestMethod.DELETE)
	public void deleteTrack(@PathVariable Integer id) {
		repo.delete(id);
	}
}
