<%-- 
    Document   : calculadora-recebe-cadastrar
    Created on : 14/05/2021, 21:10:11
    Author     : Maria
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <h1>Calculadora-recebe-cadastrar</h1>

                <%
                    String visualiza = request.getParameter("visualiza");
                    String cliques = request.getParameter("cliques");
                    String compartilha = request.getParameter("compartilha");
                    String valorInvestimento = request.getParameter("valorInvestimento");
                    
                    Calculadora calculadora = new Calculadora();
                    calculadora.getVisualiza();
                    calculadora.getCliques();
                    calculadora.getCompartilha();
                    calculadora.getValorInvestimento();
                    try {
                    calculadora.salvar();
                        out.write("<div class='alerta alerta-verde'>Dados Cadastrados com Sucesso</div>");
                    } catch (Exception ex) {
                        out.write("<div class='alerta alerta-vermlelho'>Erro: " + ex.getMessage()+ "</div>");
                    }
                %>
    </body>
</html>

