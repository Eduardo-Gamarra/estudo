package br.com.estudo.rest;

import java.lang.annotation.Annotation;
import java.lang.reflect.Type;

import javax.ws.rs.Consumes;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.ext.MessageBodyReader;
import javax.ws.rs.ext.MessageBodyWriter;
import javax.ws.rs.ext.Provider;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@Provider
@Produces(MediaType.APPLICATION_JSON+";charset=utf-8")
@Consumes(MediaType.APPLICATION_JSON+";charset=utf-8")

public final class GsonMessagebodyHandler implements MessageBodyWriter<Object>,MessageBodyReader<Object>{
	private static final String UTF_8 = "UTF-8";
	private Gson gson;
	private Gson getGson() {
		if(gson == null) {
			gson = new GsonBuilder().setPrettyPrinting().create();
		}
		return gson;
	}
	@Override
	public boolean isReadable(Class<?> type,Type genericType, java.lang.annotation.Annotation[] annotations, MediaType mediaType) {
		return true;
	}
	@Override
	public Object readFrom(Class<Object> type, Type genericType, Annotation[] annotations, MediaType)
	
	
}
