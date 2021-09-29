<!DOCTYPE html>
<html lang="en">
<head>
  <title> </title>
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
  <h3>Add Accessories Details</h3>
  <form action="addAccessoires.jsp">
    <div class="form-group">
      <label for="email">NAME:</label>
      <select name="name" class="form-control">
<option>Mukut</option>
<option>Diya_lambs</option>
<option>Sringhar_for_go</option>
<option>Necklace</option>
<option>Hastham_Patham</option>
<option>Toran</option>
<option>Jewellery</option>
<option>Thali</option>
</select>
    </div>
    <div class="form-group">
      <label for="pwd">Price:</label>
      <input type="number" class="form-control" id="pwd" placeholder="Enter price" name="price" required >
    </div>
    <div class="form-group">
      <label for="pwd">Details:</label>
      <input type="text" class="form-control" id="pwd" placeholder="Enter details" name="dis" required >
    </div>
   <div class="form-group">
      <label for="pwd">Material:</label>
      <select name="material" class="form-control" >
<option>Porcelain</option>
<option>Metal</option>
<option>Wood</option>
<option>Brass</option>
<option>Stone</option>
<option>Marble</option>
<option>Sphatik/Crystal</option>
<option>Mercury</option>
</select>
    </div>
    <button type="submit" class="btn btn-primary">Add Idol</button>
  </form>
</div>

</body>
</html>
