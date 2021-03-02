package com.bolsadeideas.springboot.app.models.dao;

import org.springframework.data.repository.CrudRepository;

import com.bolsadeideas.springboot.app.models.entity.Usuario;

public interface IUsuarioDao extends CrudRepository<Usuario, Long>{
	
	//también se puede hacer consulta JPQL pero con el nombre ya queda implementado (findByUsername)
	public Usuario findByUsername(String username);

}
