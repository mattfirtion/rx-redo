package com.mattfirtion.rx.model;

import javax.persistence.*;

@Entity
public class Muscle {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer id;
	
	@Column(nullable = false, length = 100)
	private String name;	
}
