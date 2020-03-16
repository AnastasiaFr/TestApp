<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>ТАДАМ!</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
    <div class="container">
        <h1 class="my-4 text-dark">Astronomy Picture of the Day
            <small><em>From NASA APOD</em></small>
        </h1>
    <div class="row">
    <div class="col-md-8">
        <img class="img-fluid" src=${src} alt="">
    </div>
    <div class="col-md-4">
        <h3 class="my-3 text-dark">Description</h3>
        <p class="text-dark">${description}</p>
        <h3 class="my-3 text-dark">Try also</h3>
          <ul>
            <li>Get asteroid info</li>
            <li>Get Mars Maps</li>
          </ul>
    </div>
  </div>
</div>
   </body>
</html>