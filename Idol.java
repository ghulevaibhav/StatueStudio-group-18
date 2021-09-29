package com;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="idol")
public class Idol {
@Id
@GeneratedValue(strategy=GenerationType.AUTO)
private int id;
private String name;
private String img;
private int price;
private String dis;
private String material;
public String getMaterial() {
	return material;
}
public void setMaterial(String material) {
	this.material = material;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getImg() {
	return img;
}
public void setImg(String img) {
	this.img = img;
}
public int getPrice() {
	return price;
}
public void setPrice(int price) {
	this.price = price;
}
public String getDis() {
	return dis;
}
public void setDis(String dis) {
	this.dis = dis;
}


}
