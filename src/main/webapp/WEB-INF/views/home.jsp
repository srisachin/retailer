<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Project Start Up Sachin Srivastava</title>

    <!-- Custom styles for this template -->
	<link href="<c:url value="resources/css/dashboard.css" />" rel="stylesheet">
    <!-- Bootstrap -->
 
	<link href="<c:url value="resources/css/bootstrap.min.css" />" rel="stylesheet">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="<c:url value="resources/js/bootstrap.min.js" />"></script>

  </head>
  <body>
    
    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">RETAILS OF NEW YORK</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="#">Dashboard</a></li>
            <li><a href="#">Settings</a></li>
            <li><a href="#">Profile</a></li>
            <li><a href="#">Help</a></li>
          </ul>
          <form class="navbar-form navbar-right">
            <input type="text" class="form-control" placeholder="Search...">
          </form>
        </div>
      </div>
    </nav>

    <div class="container-fluid">
      <div class="row">
        <div class="sidebar">
          <ul class="nav nav-sidebar">
            <li class="active"><a href="#">Overview <span class="sr-only"></span></a></li>
            <!-- <li><a href="#">Overview</a></li> -->
            <li><a href="#">Reports</a></li>
            <li><a href="#">Analytics</a></li>
            <li><a href="#">Export</a></li>
          </ul>
          <ul class="nav nav-sidebar">
            <li><a href="">About</a></li>
            <li><a href="">Contact</a></li>
            <li><a href="">Development</a></li>
            <li><a href="">Funding</a></li>
          </ul>
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 col-lg-11 col-lg-offset-1 main">
          <h1>Dashboard</h1>

          <div class="row placeholders">
            <div class="col-xs-6 col-sm-3 col-lg-2 placeholder">
              <!-- <img data-src="holder.js/800x800/auto/sky" class="img-responsive" alt="Retail Outlets"> -->
              <h2>4500</h2>
              <span class="text-muted">Retail Outlets</span>
            </div>
            <div class="col-xs-6 col-sm-3 col-lg-2 placeholder">
              <!-- <img data-src="holder.js/400x400/auto/vine" class="img-responsive" alt="Localities"> -->
              <h2>400</h2>
              <span class="text-muted">Localities</span>
            </div>
            <div class="col-xs-6 col-sm-3 col-lg-2 placeholder">
              <!-- <img data-src="holder.js/400x400/auto/sky" class="img-responsive" alt="Business"> -->
              <h2>20000</h2>
              <span class="text-muted">Business</span>
            </div>
            <div class="col-xs-6 col-sm-3 col-lg-2 placeholder">
              <!-- <img data-src="holder.js/400x400/auto/vine" class="img-responsive" alt="Products"> -->
              <h2>50000</h2>
              <span class="text-muted">Products</span>
            </div>
          </div>

          <h2 class="sub-header">Retailer List</h2>
          <div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>Retailer Name</th>
                  <th>Address</th>
                  <th>Business</th>
                  <th>Product</th>
                </tr>
              </thead>
              <tbody>
              <c:forEach items="${name}" var="element"> 
                <tr>
                  <td>${element.name}</td>
                  <td>${element.address}</td>
                  <td>${element.primary}</td>
                  <td>${element.secondary}</td>
                </tr>
                </c:forEach>
                
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
	
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="resources/js/bootstrap.min.js"></script>
  </body>
</html>
