package br.projecao.domain;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Statement;


public class PerguntaDAO extends BaseDAO {

	public List<Pergunta> getPerguntas() throws SQLException {
		String sql = 
			 " select 											"
			+ " 	p.id as p_id                                "
			+ " 	, p.text p_text                             "
			+ " 	, o.id as o_id                              "
			+ " 	, o.text o_text                             "
			+ " 	, o.correta o_correta                       "
			+ " from                                            "
			+ " 	pergunta p                                  "
			+ " 	inner join opcao o on (p.id = o.pergunta_id)"
			+ " order by                                        "
			+ " 	p.id, o.id"
			;
		
		List<Pergunta> l = new ArrayList<>();
		Connection conn = null;
		PreparedStatement stmt = null;
		try {
			conn = getConnection();
			stmt = conn.prepareStatement(sql);
			ResultSet rs = stmt.executeQuery();

			// posiciona no primero registro
			rs.next();
			while(!rs.isLast() ) {
				// cria o objeto pergunta e a variavel de controle
				Pergunta p = rsToPergunta(rs);
				long controle = rs.getLong("p_id");
				
				
				//enquanto o controle for igual, cria as opção
				while(!rs.isLast()  && controle == rs.getLong("p_id")) {
					Opcao o = new Opcao();
					o.setId(rs.getLong("o_id"));
					o.setText(rs.getString("o_text"));
					o.setCorreta(rs.getBoolean("o_correta"));
					
					p.addOpcao(o);
					// para a proxima linha do resultset
					rs.next();
				}
				l.add(p);
			}
			rs.close();
		}finally {
			if(stmt != null) {
				stmt.close();
			}
			if(conn != null) {
				conn.close();
			}
		}
		return l;
	}

	private Pergunta rsToPergunta(ResultSet rs) throws SQLException{
		Pergunta u = new Pergunta();
		u.setId(rs.getLong("p_id"));
		u.setText(rs.getString("p_text"));

		return u;
	}

}
