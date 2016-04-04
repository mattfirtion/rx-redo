package com.mattfirtion.rx.model;

import javax.persistence.*;

@Entity
public class Track {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer id;
	
	@Column(nullable = false, length = 100)
	private String track;
	
	@Column(nullable = true, length = 100)
	private String artist;
	
	//@OneToOne(optional=false, cascade=CascadeType.ALL, mappedBy="id", targetEntity=Release.class)
	private Integer release_id;
	
	//@OneToOne(optional=false, cascade=CascadeType.ALL, mappedBy="id", targetEntity=Muscle.class)
	private Integer muscle_id;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTrack() {
		return track;
	}

	public void setTrack(String track) {
		this.track = track;
	}

	public String getArtist() {
		return artist;
	}

	public void setArtist(String artist) {
		this.artist = artist;
	}

	public Integer getRelease_id() {
		return release_id;
	}

	public void setRelease_id(Integer release_id) {
		this.release_id = release_id;
	}

	public Integer getMuscle_id() {
		return muscle_id;
	}

	public void setMuscle_id(Integer muscle_id) {
		this.muscle_id = muscle_id;
	}	
}
