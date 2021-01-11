package com.ting.domain;

import java.sql.Date;

/*
	clientIdx varchar2(30) NOT NULL,
    email varchar2(50),
    password varchar2(30) NOT NULL,
    phone varchar2(50) NOT NULL,
    regdate date,
 */
public class CharacterVO {
	private int character_Idx;
	private String character_Type;
	private String character_Name;
	private String character_Explanation;
	private String character_Photo;
	public int getCharacter_Idx() {
		return character_Idx;
	}
	public void setCharacter_Idx(int character_Idx) {
		this.character_Idx = character_Idx;
	}
	public String getCharacter_Type() {
		return character_Type;
	}
	public void setCharacter_Type(String character_Type) {
		this.character_Type = character_Type;
	}
	public String getCharacter_Name() {
		return character_Name;
	}
	public void setCharacter_Name(String character_Name) {
		this.character_Name = character_Name;
	}
	public String getCharacter_Explanation() {
		return character_Explanation;
	}
	public void setCharacter_Explanation(String character_Explanation) {
		this.character_Explanation = character_Explanation;
	}
	public String getCharacter_Photo() {
		return character_Photo;
	}
	public void setCharacter_Photo(String character_Photo) {
		this.character_Photo = character_Photo;
	}
	

}
