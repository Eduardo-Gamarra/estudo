package br.projecao.domain;

import java.io.Serializable;

import javax.xml.bind.annotation.XmlRootElement;

import lombok.Data;

@XmlRootElement
@Data	
public class Usuario implements Serializable {
	private static final long serialVerisionUID = 1L;
	private Long id;
	private String login;
	private String senha;
}