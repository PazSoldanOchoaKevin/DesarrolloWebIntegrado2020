<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>User Management Application</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

</head>

</head>
<style>

@import url(https://fonts.googleapis.com/css?family=Open+Sans:100,300,400,700);
@import url(//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css);

body, html {
  height: 100%;
}
body {
  font-family: 'Open Sans';
  font-weight: 100;
  display: flex;
  overflow: hidden;
}
input {
  ::-webkit-input-placeholder {
     color: rgba(255,255,255,0.7);
  }
  ::-moz-placeholder {
     color: rgba(255,255,255,0.7);  
  }
  :-ms-input-placeholder {  
     color: rgba(255,255,255,0.7);  
  }
  &:focus {
    outline: 0 transparent solid;
    ::-webkit-input-placeholder {
     color: rgba(0,0,0,0.7);
    }
    ::-moz-placeholder {
       color: rgba(0,0,0,0.7);  
    }
    :-ms-input-placeholder {  
       color: rgba(0,0,0,0.7);  
    }
  }
}

.login-form {
  //background: #222;
  //box-shadow: 0 0 1rem rgba(0,0,0,0.3);
  min-height: 10rem;
  margin: auto;
  max-width: 50%;
  padding: .5rem;
}
.login-text {
  //background: hsl(40,30,60);
  //border-bottom: .5rem solid white;
  color: white;
  font-size: 1.5rem;
  margin: 0 auto;
  max-width: 50%;
  padding: .5rem;
  text-align: center;
  //text-shadow: 1px -1px 0 rgba(0,0,0,0.3);
  .fa-stack-1x {
    color: black;
  }
}

.login-username, .login-password {
  background: transparent;
  border: 0 solid;
  border-bottom: 1px solid rgba(white, .5);
  color: white;
  display: block;
  margin: 1rem;
  padding: .5rem;
  transition: 250ms background ease-in;
  width: calc(100% - 3rem);
  &:focus {
    background: white;
    color: black;
    transition: 250ms background ease-in;
  }
}

.login-forgot-pass {
  //border-bottom: 1px solid white;
  bottom: 0;
  color: white;
  cursor: pointer;
  display: block;
  font-size: 75%;
  left: 0;
  opacity: 0.6;
  padding: .5rem;
  position: absolute;
  text-align: center;
  //text-decoration: none;
  width: 100%;
  &:hover {
    opacity: 1;
  }
}
.login-submit {
  border: 1px solid white;
  background: transparent;
  color: white;
  display: block;
  margin: 1rem auto;
  min-width: 1px;
  padding: .25rem;
  transition: 250ms background ease-in;
  &:hover, &:focus {
    background: white;
    color: black;
    transition: 250ms background ease-in;
  }
}




[class*=underlay] {
  left: 0;
  min-height: 100%;
  min-width: 100%;
  position: fixed;
  top: 0;
}
.underlay-photo {
  animation: hue-rotate 6s infinite;
  background: url('https://31.media.tumblr.com/41c01e3f366d61793e5a3df70e46b462/tumblr_n4vc8sDHsd1st5lhmo1_1280.jpg');
  background-size: cover;
  -webkit-filter: grayscale(30%);
  z-index: -1;
}
.underlay-black {
  background: rgba(0,0,0,0.7);
  z-index: -1;
}

@keyframes hue-rotate {
  from {
    -webkit-filter: grayscale(30%) hue-rotate(0deg);
  }
  to {
    -webkit-filter: grayscale(30%) hue-rotate(360deg);
  }
}

    h1 { color: #FFFFFF; }
  
  label{ color: #FFFFFF; }
</style>
<body>
<body>
	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: tomato">
			<div>
				<a href="https://www.javaguides.net" class="navbar-brand"> Todo
					App</a>
			</div>

			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/list"
					class="nav-link">Todos</a></li>
			</ul>

			<ul class="navbar-nav navbar-collapse justify-content-end">
				<li><a href="<%=request.getContextPath()%>/logout"
					class="nav-link">Logout</a></li>
			</ul>
		</nav>
	</header>
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				<c:if test="${todo != null}">
					<form action="update" method="post">
				</c:if>
				<c:if test="${todo == null}">
					<form action="insert" method="post">
				</c:if>

				<caption>
					<h2>
						<c:if test="${todo != null}">
            			Edit Todo
            		</c:if>
						<c:if test="${todo == null}">
            			Add New Todo
            		</c:if>
					</h2>
				</caption>

				<c:if test="${todo != null}">
					<input type="hidden" name="id" value="<c:out value='${todo.id}' />" />
				</c:if>

				<fieldset class="form-group">
					<label>Todo Title</label> <input type="text"
						value="<c:out value='${todo.title}' />" class="form-control"
						name="title" required="required" minlength="5">
				</fieldset>

				<fieldset class="form-group">
					<label>Todo Decription</label> <input type="text"
						value="<c:out value='${todo.description}' />" class="form-control"
						name="description" minlength="5">
				</fieldset>

				<fieldset class="form-group">
					<label>Todo Status</label> <select class="form-control"
						name="isDone">
						<option value="false">In Progress</option>
						<option value="true">Complete</option>
					</select>
				</fieldset>

				<fieldset class="form-group">
					<label>Todo Target Date</label> <input type="date"
						value="<c:out value='${todo.targetDate}' />" class="form-control"
						name="targetDate" required="required">
				</fieldset>

				<button type="submit" class="btn btn-success">Save</button>
				</form>
			</div>
		</div>
		<a href="#" class="login-forgot-pass">forgot password?</a>
<div class="underlay-photo"></div>
<div class="underlay-black"></div> 
	</div>

	<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>
