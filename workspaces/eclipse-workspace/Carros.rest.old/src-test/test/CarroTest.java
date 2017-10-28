package test;

import java.sql.SQLException;
import java.util.List;
import junit.framework.TestCase;
import br.com.estudo.domain.Carro;
import br.com.estudo.domain.CarroService;

public class CarroTest extends TestCase{
	private CarroService carroService = new CarroService();
	public void testListaCarros() {
		List<Carro> carros = carroService.getCarros();
		assertNotNull(carros);
		assertTrue(carros.size() > 0);
		Carro tucker = carroService.findByName("Tucker 1948").get(0);
		assertEquals("Tucker 1948",tucker.getNome());
		
		Carro ferrari = carroService.findByName("Ferrari FF").get(0);
		assertEquals("Ferrari FF",ferrari.getNome());
		
		Carro bugatti = carroService.findByName("Bugatti Veyron").get(0);
		assertEquals("Bugatti Veyron", bugatti.getNome());
		
	}
	public void testSalvarDeletarCarro(){
		Carro c = new Carro();
		c.setNome("Test0");
		c.setDesc("Test0 desc");
		c.setUrlFoto("url foto aqui");
		c.setUrlVideo("url video aqui");
		c.setLatitude("lat");
		c.setLongitude("lng");
		c.setTipo("tipo");
		carroService.save(c);
		Long id = c.getId();
		assertNotNull(id);
		
		assertEquals("Test0", c.getNome());
		assertEquals("Test0 desc", c.getDesc());
		assertEquals("url foto aqui", c.getUrlFoto());
		assertEquals("url video aqui", c.getUrlVideo());
		assertEquals("lat", c.getLatitude());
		assertEquals("lng", c.getLongitude());
		assertEquals("tipo", c.getTipo());
		
		c.setNome("Test0 UPDATE");
		carroService.save(c);
		c = carroService.getCarro(id);
		assertEquals("Test0 UPDATE", c.getNome());
		
		carroService.delete(id);
		c = carroService.getCarro(id);
		assertNull(c);
	}
}
 