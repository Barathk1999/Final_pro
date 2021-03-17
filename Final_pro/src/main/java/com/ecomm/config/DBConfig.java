package com.ecomm.config;

import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.ecomm.model.Category;
import com.ecomm.model.Product;
import com.ecomm.model.Supplier;
import com.ecomm.model.UserDetail;

@Configuration
@EnableTransactionManagement
@ComponentScan("com.ecomm") 
public class DBConfig 
{
	
		@Bean(name="dataSource")
		public DataSource getDataSource()
		{
			DriverManagerDataSource dataSource=new DriverManagerDataSource();
			dataSource.setDriverClassName("com.mysql.cj.jdbc.Driver");
			dataSource.setUrl("jdbc:mysql://localhost/Final_pro");
			dataSource.setUsername("root");
			dataSource.setPassword("Bharathk_99");
			System.out.println("======== DataSource Bean Created===========");
			return dataSource;
		}
		
		
		@Bean
		public SessionFactory getSessionFactoryBean()
		{
			Properties hibernateProp=new Properties();
			hibernateProp.put("hbm2ddl.auto", "update");
			hibernateProp.put("hibernate.dialect","org.hibernate.dialect.MySQL8Dialect");
			
			LocalSessionFactoryBuilder factoryMgr=new LocalSessionFactoryBuilder(getDataSource());
			factoryMgr.addProperties(hibernateProp);
			
			factoryMgr.addAnnotatedClass(Category.class);
			factoryMgr.addAnnotatedClass(UserDetail.class);
			factoryMgr.addAnnotatedClass(Product.class);
			factoryMgr.addAnnotatedClass(Supplier.class);
			
			System.out.println("=== SessionFactory Object Created====");
			
			return factoryMgr.buildSessionFactory();
			
		}
		
		@Bean(name="txManager")
		public HibernateTransactionManager getHibernateTransactionManager(SessionFactory sessionFactory)
		{
			System.out.println("======== Hibernate Transaction Manager Bean Created===========");
			return new HibernateTransactionManager(sessionFactory);
		}
}
