
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
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
public class Anuncio {
    private String nome_anuncio;
    private String nome_cliente;
    private LocalDate data_inicio;
    private LocalDate data_termino;
    private String investimento_dia;
    private int idAnuncio;
    
     public void salvar() throws Exception {
        Connection con = Conexao.getInstance();
        String sql = "insert into anuncio (nome_anuncio, nome_cliente, data_inicio, data_termino, "
        + "investimento_dia) values(?, ?, ?, ?, ? )";
        try {
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, this.nome_anuncio);
            stm.setString(2, this.nome_cliente);
            stm.setObject(3, this.data_inicio);
            stm.setObject(4,this.data_termino);
            stm.setString(5, this.investimento_dia);
            stm.execute();
        } catch (SQLException ex) {
            throw new Exception(ex.getMessage());
        }
    }
    
    public void editar()throws Exception {
        Connection con = Conexao.getInstance();
        String sql = "update anuncio set nome_anuncio = ?, nome_cliente = ?, data_inicio = ?, data_termino = ?, "
                + "investimento_dia = ?, where idAnuncio = ?";
        try {
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, this.nome_anuncio);
            stm.setString(2, this.nome_cliente);
            stm.setObject(3, this.data_inicio);
            stm.setObject(4,this.data_termino);
            stm.setString(5, this.investimento_dia);
            stm.execute();
        } catch (SQLException ex) {
            throw new Exception(ex.getMessage());
        }
    }
     
     public static Anuncio consultar(int idAnuncio) throws Exception {
        Connection con = Conexao.getInstance();
        String sql = "select * from anuncio where idAnuncio = ?";
        Anuncio anuncio = null;
        try {
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setInt(1, idAnuncio);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                anuncio = new Anuncio();
                anuncio.setIdAnuncio(idAnuncio);
                anuncio.setNome_anuncio(rs.getString("nome_anuncio"));
                anuncio.setNome_cliente(rs.getString("nome_cliente"));
                anuncio.setData_inicio(rs.getObject("data_inicio", LocalDate.class));
                anuncio.setData_termino(rs.getObject("data_termino", LocalDate.class));
                anuncio.setInvestimento_dia(rs.getString("investimento_dia"));
            }
        } catch (SQLException ex) {
            throw new Exception(ex.getMessage());
        }
        return anuncio;
    }
     public static Anuncio consultar(String Anuncio) throws Exception {
        Connection con = Conexao.getInstance();
        String sql = "select * from anuncio where idAnuncio = ?";
        Anuncio anuncio = null;
        try {
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, Anuncio);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                anuncio = new Anuncio();
                anuncio.setNome_anuncio(rs.getString("nome_anuncio"));
                anuncio.setNome_cliente(rs.getString("nome_cliente"));
                anuncio.setData_inicio(rs.getObject("data_inicio", LocalDate.class));
                anuncio.setData_termino(rs.getObject("data_termino", LocalDate.class));
                anuncio.setInvestimento_dia(rs.getString("investimento_dia"));
            }
        } catch (SQLException ex) {
            throw new Exception(ex.getMessage());
        }
        return anuncio;
    }
    public void excluir() throws Exception {
        Connection con = Conexao.getInstance();
        String sql = "delete from anuncio where idAnuncio = ?";
        try {
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setInt(1, this.idAnuncio);
            stm.execute();
        } catch (SQLException ex) {
            throw new Exception(ex.getMessage());
        }
    }

    public static List<Anuncio> consultar() throws Exception {
        Connection con = Conexao.getInstance();
        String sql = "select * from anuncio where anuncio like ?";
        List<Anuncio> listaAnuncio = new ArrayList<>();
        try {
            PreparedStatement stm = con.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Anuncio anuncio = new Anuncio();
                anuncio.setIdAnuncio(Integer.parseInt(rs.getString("idAnuncio")));
                anuncio.setNome_anuncio(rs.getString("nome_anuncio"));
                anuncio.setNome_cliente(rs.getString("nome_cliente"));
                anuncio.setData_inicio(rs.getObject("data_inicio", LocalDate.class));
                anuncio.setData_termino(rs.getObject("data_termino", LocalDate.class));
                anuncio.setInvestimento_dia(rs.getString("investimento_dia"));
                listaAnuncio.add(anuncio);
            }
        } catch (SQLException ex) {
            throw new Exception(ex.getMessage());
        }
        return listaAnuncio;
    }
    

    public String getNome_anuncio() {
        return nome_anuncio;
    }

    public void setNome_anuncio(String nome_anuncio) {
        this.nome_anuncio = nome_anuncio;
    }

    public String getNome_cliente() {
        return nome_cliente;
    }

    public void setNome_cliente(String nome_cliente) {
        this.nome_cliente = nome_cliente;
    }

    public LocalDate getData_inicio() {
        return data_inicio;
    }

    public void setData_inicio(LocalDate data_inicio) {
        this.data_inicio = data_inicio;
    }

    public LocalDate getData_termino() {
        return data_termino;
    }

    public void setData_termino(LocalDate data_termino) {
        this.data_termino = data_termino;
    }

    public String getInvestimento_dia() {
        return investimento_dia;
    }

    public void setInvestimento_dia(String investimento_dia) {
        this.investimento_dia = investimento_dia;
    }

    private void setIdAnuncio(int idAnuncio) {
        int IdAnuncio;
    }
    
}
