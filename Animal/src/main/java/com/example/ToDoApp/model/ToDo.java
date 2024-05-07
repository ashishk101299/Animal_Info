package com.example.ToDoApp.model;

import jakarta.annotation.Nonnull;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "todo")
public class ToDo {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Nonnull
	private Long id;

	@Column
	@Nonnull
	private String name;

	@Column
	@Nonnull

	private String category;

	@Column
	@Nonnull
	private String image;

	@Column
	@Nonnull
	private String description;

	@Column
	@Nonnull

	private String life;

	public String getLife() {
		return life;
	}

	public void setLife(String life) {
		this.life = life;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public ToDo() {

	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

}
