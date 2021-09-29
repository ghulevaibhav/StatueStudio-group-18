<!DOCTYPE html>
<html lang="en">
<head>
<style>
		body
		{
			background-image: url('back.gif');
			background-attachment: fixed;
			background-repeat: no-repeat;
			background-size: 100%,100%;
		}
	</style>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>Please enter Details</h2>
  <form action="saveuser.jsp">
  <div class="form-group">
      <label for="email">Name:</label>
      <input type="text" class="form-control" id="email" placeholder="Enter Name" name="name">
    </div>
    <div class="form-group">
      <label for="email">Email:</label>
      <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
    </div>
    <div class="form-group">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pwd">
    </div>
    <div class="form-group">
      <label for="email">Mobile:</label>
      <input type="number" class="form-control" id="email" placeholder="Enter Mobile" name="mobile">
    </div>
     <div class="form-group">
      <label for="email">Address:</label>
      <textarea rows="5" cols="21" class="form-control" name="address"></textarea>
    </div>
    <button type="submit" class="btn btn-primary">Sign Up</button>
  </form>
</div>

</body>
</html>
