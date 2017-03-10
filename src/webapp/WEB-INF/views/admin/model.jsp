<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<div class="row">
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li class="active"><a href="/admin/model">Model</a></li>
					<li><a href="/admin/brand">Brand</a></li>
					<li><a href="/admin/sneaker">Sneaker</a></li>
					<li><a href="/admin/size">Size</a></li>
					<li><a href="/admin/recipe">Recipe</a></li>
				</ul>
			</div>
		</div>
	</nav>
</div>
<div class="row">
	<div class="col-md-3 col-xs-12"></div>
	<div class="col-md-7 col-xs-12">

		<div class="row">
			<div class="col-md-12 col-xs-12">
				<div class="form-group">

					<form:form class="form-horizontal" action="/admin/model"
						method="POST" modelAttribute="model">
						<label class="col-sm-10 col-sm-offset-2 control-label" for="name"
							style="color: red; text-align: left;"><form:errors
								path="name" /></label>

						<div class="form-group">
							<label for="name" class="col-sm-2 control-label">Model</label>
							<div class="col-sm-10">
								<form:input class="form-control" path="name" id="name" />
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<button type="submit" class="btn btn-default">Create</button>
							</div>
						</div>
					</form:form>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4 col-xs-4">
					<h3>Model</h3>
				</div>
				<div class="col-md-4 col-xs-4">
					<h3>Update</h3>
				</div>
				<div class="col-md-4 col-xs-4">
					<h3>Delete</h3>
				</div>
			</div>
			<c:forEach items="${models}" var="model">
				<div class="row">
					<div class="col-md-4 col-xs-4">${model.name}</div>
					<div class="col-md-4 col-xs-4">
						<a class="btn btn-warning" href="/admin/model/update/${model.id}">update</a>
					</div>
					<div class="col-md-4 col-xs-4">
						<a class="btn btn-danger" href="/admin/model/delete/${model.id}">delete</a>
					</div>
				</div>
			</c:forEach>
		</div>
		<div class="col-md-2 col-xs-12"></div>
	</div>