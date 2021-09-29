<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
<jsp:include page="adminnav.jsp"></jsp:include>
<div class="container">
  <h2>Add Offer Details</h2>
  <form action="addslider.jsp">
    <div class="form-group">
      <label for="email">NAME:</label>
      <input type="text" class="form-control" id="pwd" placeholder="Enter Name" name="name">
    </div>
   
    <div class="form-group">
      <label for="pwd">Details:</label>
      <input type="text" class="form-control" id="pwd" placeholder="Enter Details" name="dis">
    </div>
   
    <button type="submit" class="btn btn-primary">Add Slider</button>
  </form>
</div>

</body>
</html>
