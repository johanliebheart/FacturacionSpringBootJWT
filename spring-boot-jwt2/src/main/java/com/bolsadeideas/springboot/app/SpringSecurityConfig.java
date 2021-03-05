package com.bolsadeideas.springboot.app;

//simport javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;
//import org.springframework.security.core.userdetails.User;
//import org.springframework.security.core.userdetails.User.UserBuilder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
//import org.springframework.security.crypto.password.PasswordEncoder;

import com.bolsadeideas.springboot.app.auth.filter.JWTAuthenticationFilter;
//import com.bolsadeideas.springboot.app.auth.handler.LoginSuccesHandler;
import com.bolsadeideas.springboot.app.models.service.JpaUserDetailService;

@EnableGlobalMethodSecurity(securedEnabled = true, prePostEnabled = true)
@Configuration
public class SpringSecurityConfig extends WebSecurityConfigurerAdapter{
	
	//@Autowired
	//private LoginSuccesHandler succesHandler;
	
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;

	/*@Autowired
	private DataSource dataSource;
	*/
	@Autowired
	private JpaUserDetailService userDetailsService;
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		
		
		
		http.authorizeRequests().antMatchers("/","/css/**","/js/**","/img/**","/listar**","/locale").permitAll().
		//antMatchers("/ver/**").hasAnyRole("USER").
		//antMatchers("/uploads/**").hasAnyRole("USER").
		//antMatchers("/form/**").hasAnyRole("ADMIN").
		//antMatchers("/eliminar/**").hasAnyRole("ADMIN").
		//antMatchers("/factura/**").hasAnyRole("ADMIN").
		anyRequest().authenticated()
		/*.and().formLogin()
		.successHandler(succesHandler)
		.loginPage("/login")
		.permitAll()
		.and()
		.logout().permitAll()
		.and()
		.exceptionHandling().accessDeniedPage("/error_403")*/
		.and()
		.addFilter(new JWTAuthenticationFilter(authenticationManager()))
		.csrf().disable()
		.sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS);
		}

	@Autowired
	public void configurerGlobal(AuthenticationManagerBuilder builder) throws Exception {
		
		//PasswordEncoder encoder = passwordEncoder;
		/*
		UserBuilder users = User.builder().passwordEncoder(password ->{
			return encoder.encode(password);
		}) ;
		*/
		//simplificación usando las características de java 8
	/*	UserBuilder users = User.builder().passwordEncoder(encoder::encode);
		
		builder.inMemoryAuthentication()
		.withUser(users.username("admin").password("12345").roles("ADMIN","USER"))
		.withUser(users.username("andres").password("12345").roles("USER"));
		*/
		
		//USANDO JDBC
		/*
		builder.jdbcAuthentication()
		.dataSource(dataSource)
		.passwordEncoder(passwordEncoder)
		.usersByUsernameQuery("select username, password, enabled from users where username=?")
		.authoritiesByUsernameQuery("select u.username, a.authority from authorities a inner join users u  on  (a.user_id=u.id) where u.username =?");
		*/
		
		builder.userDetailsService(userDetailsService).passwordEncoder(passwordEncoder);
		
	}
	

}
