<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!doctype html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

        <title>Loja JAVA</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container">
                <a class="navbar-brand" href="index.jsp">Loja</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">

                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="index.jsp">Inicio</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="index.jsp?acao=carrinho">Carrinho<span class="badge badge-light">
                                    <c:set var="cont" value="${0}"></c:set>
                                    <c:forEach items="${carrinho}" var="car">
                                        <c:set var="cont" value="${cont + 1}"></c:set>
                                    </c:forEach>
                                    <c:out value="${cont}"></c:out>
                                    </span></a>
                            </li>
                    </ul>
                    <ul class="navbar-nav ml-auto">
                        <c:if test="${empty cliente.nome}">
                            <li class="nav-item active">
                                <a class="nav-link" href="index.jsp?acao=cad_usuario">Cadastre-se</a>
                            </li>
                            <li class="nav-item active">
                                <a class="nav-link" href="index.jsp?acao=login_usuario">Entrar</a>
                            </li>
                        </c:if>
                        <c:if test="${not empty cliente.nome}">    
                            <li class="nav-item active">
                                <a class="nav-link" href="index.jsp?acao=meus_pedidos">Meus Pedidos</a>
                            </li>
                            <li class="nav-item active">
                                <a class="nav-link" href="Cliente?action=off">Sair</a>
                            </li>
                        </c:if>
                    </ul>
                </div>
            </div>
        </nav>
        <c:import url="paginas/alertas.jsp"></c:import>
            <section id="conteudo">
            <c:choose>
                <c:when test="${param.acao == 'cad_usuario'}">
                    <c:import url="paginas/formCadastroCli.html"></c:import>
                </c:when>
                <c:when test="${param.acao == 'login_usuario'}">
                    <c:import url="paginas/formLoginCli.html"></c:import>
                </c:when>
                <c:when test="${param.acao == 'cad_produto'}">
                    <c:import url="paginas/formCadastroProd.html"></c:import>
                </c:when>
                <c:when test="${param.acao == 'lista_prod'}">
                    <c:import url="paginas/TabelaProdutos.jsp"></c:import>
                </c:when>
                <c:when test="${param.acao == 'carrinho'}">
                    <c:import url="paginas/carrinho.jsp"></c:import>
                </c:when>
                <c:when test="${param.acao == 'finalizarPedido'}">
                    <c:import url="paginas/finalizarPedido.jsp"></c:import>
                </c:when>
                <c:when test="${param.acao == 'meus_pedidos'}">
                    <c:import url="paginas/listaPedidos.jsp"></c:import>
                </c:when>
                <c:otherwise>
                    <c:import url="paginas/inicio.jsp"></c:import>
                </c:otherwise>
            </c:choose>
        </section>
        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
      
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="js/jquery-ui.min.js"></script>
        <link rel="stylesheet" href="js/jquery-ui.structure.min.css">
        <link rel="stylesheet" href="js/jquery-ui.theme.min.css">
        <script src="js/datepicker.js"></script>
        
    </body>
</html>