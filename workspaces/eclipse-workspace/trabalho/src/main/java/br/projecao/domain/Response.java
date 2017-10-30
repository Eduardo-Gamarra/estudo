package br.projecao.domain;

import lombok.Data;

@Data
public class Response {
	
	
	public static String OK = "OK";
	public static String ERRO = "ERRO";
	
	private String status;
	private String msg;
	private Object o;
	private Object usuario;
	private Boolean erro = false;
	
	public Response() {};
	public static Response Ok(String string) {
		Response r = new Response();
		r.setStatus(Response.OK);
		r.setMsg(string);
		return r;
	}
	public static Response Erro(String string) {
		Response r = new Response();
		r.erro = true;
		r.setStatus(Response.ERRO);
		r.setMsg(string);
		return r;
	}
}