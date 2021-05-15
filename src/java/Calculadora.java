
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import utils.Conexao;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Maria
 */
public class Calculadora {
    private double visualiza;
        private double cliques;
        private double compartilha;
        private double valorInvestimento;

    @Override
	public String toString() {
                return        "\n valorInvestimento = R$  " + valorInvestimento 
                                + " \n Numero de pessoas alcançadas = " + visualiza
                                + " \n Numeros de cliques=" + cliques
                                + " \n Numero de Compartilhamento=" + compartilha;
                        	
	}
       
	public boolean salvar() throws Exception{
         Connection con = Conexao.getInstance();
         String sql = "insert into calculadora (visualiza, cliques, compartilha, "
        + "valorInvestimento) values(?, ?, ?, ? )";
        try {
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setDouble(1, this.visualiza);
            stm.setDouble(2, this.cliques);
            stm.setDouble(3, this.compartilha);
            stm.setDouble(4,this.valorInvestimento);
            stm.execute();
        } catch (SQLException ex) {
          throw new Exception(ex.getMessage());
        }
            return false;
        }
	public void Calculadora(double valorInvestimento) {
		this.valorInvestimento = valorInvestimento;
		
	}
	public void Calculadora(double visualiza, double cliques, double compartilha,double valorInvestimento) {
		
		this.visualiza = visualiza;
		this.cliques = cliques;
		this.compartilha = compartilha;
		this.valorInvestimento = valorInvestimento;
	}
	//30 pessoas visualizam o anúncio original (não compartilhado) a cada R$ 1,00 investido.
		public void anuncioOriginal() {
			visualiza = valorInvestimento*30;
			
	}
	
	//a cada 100 pessoas que visualizam o anúncio 12 clicam nele.
	public void calculaCliques () {
		 cliques = visualiza*0.12;
				
	}
	//a cada 20 pessoas que clicam no anúncio 3 compartilham nas redes sociais
	//o mesmo anúncio é compartilhado no máximo 4 vezes em sequência
	public void calculaCompartilhamento() {
		compartilha = (visualiza/20)*3*4;
	}
	
        public Double getVisualiza() {
		return visualiza;
	}
	public Double getCliques() {
		return cliques;
	}

	public Double getCompartilha() {
		return compartilha;
	}

	public Double getValorInvestimento() {
		return valorInvestimento;
	}

	public void setValorInvestimento(Double valorInvestimento) {
		this.valorInvestimento = valorInvestimento;
	}
    }
