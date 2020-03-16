<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Test App</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>
<body>
<nav class="navbar navbar-expand-md navbar-light bg-light">
    <div class="container">
        <a href="#" class="navbar-brand">Test App</a>
            <div class="navbar-nav">
                <a href="about.jsp" class="nav-item nav-link">About</a>
            </div>
    </div>
</nav>
<div class="container">
    <div class="jumbotron">
        <h1 class="display-3">Try to use NASA API</h1>
        <p></p>
          <form action = "MainServlet" method = "POST">
          <div class="container">
              <div class="row">
                  <div class='col-sm-6'>
                      <div class="form-group">
                          <div class='input-group date' id='datetimepicker1'>
                              <input type='text' class="form-control" name="date"/>
                              <span class="input-group-addon">
                                  <span class="glyphicon glyphicon-calendar"></span>
                              </span>
                          </div>
                      </div>
                  </div>
                  <script type="text/javascript">
                      $(function () {
                          $('#datetimepicker1').datetimepicker();
                      });
                  </script>
              </div>
              <button class="btn btn-outline-dark" type="submit">Get Picture of the Day</button>
          </div>

              </form>
    </div>
    <hr>
    <footer>
    <p>Test app to use NASA API</p>
    </footer>
</div>
</body>
</html>