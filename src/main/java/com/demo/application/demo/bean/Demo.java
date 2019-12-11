package com.demo.application.demo.bean;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;

import org.springframework.boot.autoconfigure.EnableAutoConfiguration;

import com.fasterxml.jackson.annotation.JsonInclude;

@Entity
@EnableAutoConfiguration
@SequenceGenerator(name = "seq", initialValue = 357948, allocationSize = 100)
public class Demo {
	@Id
	@JsonInclude
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "seq")
	public Long id;
	private String softwareName;
	private String description;
	private String version;
	private String uses;
	@Column
    @ElementCollection(targetClass=String.class)
	private List<String> commands;

	@Override
	public String toString() {
		return "Demo [id=" + id + ", softwareName=" + softwareName + ", description=" + description + ", version="
				+ version + ", uses=" + uses + ", commands=" + commands + "]";
	}

	public String getSoftwareName() {
		return softwareName;
	}

	public void setSoftwareName(String softwareName) {
		this.softwareName = softwareName;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getVersion() {
		return version;
	}

	public void setVersion(String version) {
		this.version = version;
	}

	public String getUses() {
		return uses;
	}

	public void setUses(String uses) {
		this.uses = uses;
	}

	public List<String> getCommands() {
		return commands;
	}

	public void setCommands(List<String> commands) {
		this.commands = commands;
	}

}
