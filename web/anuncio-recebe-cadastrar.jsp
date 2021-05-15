<%-- 
    Document   : anuncio-recebe-cadastrar
    Created on : 14/05/2021, 21:06:42
    Author     : Maria
--%>

<%@page import="utils.Web"%>
<%@page import="java.time.LocalDate"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <h1>Anuncio-Recebe-cadastrar</h1>

                <%
                    String nome_anuncio = request.getParameter("nome_anuncio");
                    String nome_cliente = request.getParameter("nome_cliente");
                    LocalDate data_inicio = Web.valorDate(request.getParameter("data_inicio"));
                    LocalDate data_termino = Web.valorDate(request.getParameter("data_termino"));
                    String investimento_dia = request.getParameter("investimento_dia");
                    
                    Anuncio anuncio = new Anuncio();
                    anuncio.setNome_anuncio(nome_anuncio.toUpperCase());
                    anuncio.setNome_cliente(nome_cliente.toUpperCase());
                    anuncio.setData_inicio(data_inicio);
                    anuncio.setData_termino(data_termino);
                    anuncio.setInvestimento_dia(investimento_dia.toUpperCase());
                    try {
                        anuncio.salvar();
                        out.write("<div class='alerta alerta-verde'>Dados Cadastrados com Sucesso</div>");
                    } catch (Exception ex) {
                        out.write("<div class='alerta alerta-vermlelho'>Erro: " + ex.getMessage()+ "</div>");
                    }
                %>
    </body>
</html>

