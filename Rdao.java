package com;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.cfg.AnnotationConfiguration;

public class Rdao {
public Session session=new AnnotationConfiguration().configure().buildSessionFactory().openSession();
public int addIdol(Idol a)
{
	int i= (int) session.save(a);
	session.beginTransaction().commit();
	return i;
	
}
public int addAccessoires(Accessoires a)
{
	int i= (int) session.save(a);
	session.beginTransaction().commit();
	return i;
}
public int addSlider(Slider a)
{
	int i= (int) session.save(a);
	session.beginTransaction().commit();
	return i;
}
public void deleteIdol(Idol a)
{	
	session.delete(a);
	session.beginTransaction().commit();
}

public void deleteAccessoires(Accessoires a)
{	
	session.delete(a);
	session.beginTransaction().commit();
}
public void deleteSlide(Slider a)
{	
	session.delete(a);
	session.beginTransaction().commit();
}
public void updateIdol(Idol a)
{	
	session.update(a);
	session.beginTransaction().commit();
}
public void updateUser(User a)
{	
	session.update(a);
	session.beginTransaction().commit();
}
public void updateAccessoires(Accessoires a)
{	
	session.update(a);
	session.beginTransaction().commit();
}
public List<Idol> showIdol()
{
	Query qr=session.createQuery("from Idol");
	return qr.list();
}
public List<Accessoires> showAcc()
{
	Query qr=session.createQuery("from Accessoires");
	return qr.list();
}
public List<Slider> showoffer()
{
	Query qr=session.createQuery("from Slider");
	return qr.list();
}
public String saveUser(User u)
{
	String i= (String) session.save(u);
	session.beginTransaction().commit();
	return i;
}
public boolean checkLogin(User u)
{
	Query qr=session.createQuery("from User where email=? and pwd=?");
	qr.setParameter(0, u.getEmail());
	qr.setParameter(1, u.getPwd());
	List al=qr.list();
	if(al.isEmpty())
	{
		return false;
	}
	else
	{
		return true;
	}
}
public List<Idol> searchIdol(String name)
{
	Query qr=session.createQuery("from Idol where name=?");
	qr.setParameter(0, name);
	return qr.list();
}
public List<Accessoires> searchAcc(String name)
{
	Query qr=session.createQuery("from Accessoires where name=?");
	qr.setParameter(0, name);
	return qr.list();
}
public List<Slider> showslider()
{
	Query qr=session.createQuery("from Slider");
	return qr.list();
}
public int addCart(Cart c)
{
	int i= (int) session.save(c);
	session.beginTransaction().commit();
	return i;
}
public List<Cart> searchCart(String email)
{
	Query qr=session.createQuery("from Cart where email=?");
	qr.setParameter(0, email);
	return qr.list();
}
public User getUser(String email)
{
	
		Query qr=session.createQuery("from User where email=?");
		qr.setParameter(0, email);
		List al=qr.list();
		return (User) al.get(0);
}
}
