package com.music.dao;

//import org.apache.log4j.Logger;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.music.model.Authorities;
import com.music.model.Cart;
import com.music.model.Customer;

@Repository
public class CustomerDaoImpl implements CustomerDao{
	@Autowired
	private SessionFactory sessionFactory;
	
	//Logger logger=Logger.getLogger(CustomerDaoImpl.class);
	
		public void saveCustomer(Customer customer){
			Session session=sessionFactory.openSession();
			
			//logger.debug("===========================================================================");
			              // child tables-Users, BillingAddress, ShippingAddress
			customer.getUsers().setEnabled(true);
			
		                 //Assignment
			String username=customer.getUsers().getUsername();
			String role="ROLE_USER";
			
			Authorities authorities=new Authorities();
			//set the values
			authorities.setUsername(username);
			authorities.setRole(role);
			
			session.save(authorities);  //insert into authorites values (?,?,'Role_USER');
			
			Cart cart=new Cart();
			customer.setCart(cart);
			
			cart.setCustomer(customer);//update cart set customer_id=? , grandtotal=? where cart_id=?
			
			
			session.save(customer);
			
			//logger.debug("==========================================================================");
			
			session.flush();
			session.close();
		}
			
		}














/*package com.music.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.music.model.Authorities;
import com.music.model.Users;

@Repository
@Transactional
public class CustomerDaoImpl implements CustomerDao {

	@Autowired(required=true)
	private SessionFactory sf;
	
	public void cd(Users users){
		users.setEnabled(true);
		Authorities ar=new Authorities();
		ar.setUsers(users);
		ar.setRole("role");
		
		sf.getCurrentSession().saveOrUpdate(users);
		sf.getCurrentSession().saveOrUpdate(ar);
		
	}

	@SuppressWarnings("unchecked")
	public List<Users> getUsers(){
		return sf.getCurrentSession().createQuery("from USER").list();
		
	}

}
*/

