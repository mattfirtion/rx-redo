package com.mattfirtion.rx.model;

import java.util.Date;

import javax.persistence.*;

@Entity
public class Release {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer id;
	
	@Column(nullable = false, length = 100)
	private String name;
	
	//@OneToOne(optional=false, cascade=CascadeType.ALL, mappedBy="id", targetEntity=Program.class)
	private Integer program_id;
	
	@Column
	private Date date;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getProgram_id() {
		return program_id;
	}

	public void setProgram_id(Integer program_id) {
		this.program_id = program_id;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}
}