
<html>
<head>
<title>New Service Application</title>
<script src="val.js">
</script>
<style>
* {
  box-sizing: border-box;
}

h1 {
text-align:center;
color:blue;
}

input[type=text], select, textarea {
  width: 50%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}

label {
  padding: 12px 12px 12px 0;
  display: inline-block;
}

input[type=submit] {
  background-color: blue;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: right;
}

input[type=submit]:hover {
  background-color: pink;
}

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}

.a {
  float: left;
  width: 25%;
  margin-top: 6px;
}

.b {
  float: left;
  width: 75%;
  margin-top: 6px;
}

/* Clear floats after the columns */
.row::after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  .a, .b, input[type=submit] {
    width: 100%;
    margin-top: 0;
  }
}
</style>
</head>
<body>
<form name="nsa" id="nsa" onsubmit="return validateForm()" action="message.jsp">
    <h1>New Service Application</h1>
    <div class="container">
            <div class="row">
            <div class="a">
            <label for="fname">First Name: </label>
            </div>
            <div class="b">
            <input type="text" name="fname" placeholder="Your name.." required>
            </div>
            </div>
            <div class="row">
            <div class="a">
            <label for="lname">Last Name: </label>
            </div>
            <div class="b">
            <input type="text" name="lname" placeholder="Your last name.." required>
            </div>
            </div>
            <div class="row">
            <div class="a">
            <label for="address">Address: </label>
            </div>
            <div class="b">
            <textarea name="address" placeholder="Write here.." cols:"20" rows:"2" required></textarea>
            </div>
            </div>
            <div class="row">
            <div class="a">
            <label for="city">City: </label>
            </div>
            <div class="b">
            <select for="city" name="city" required>
                <option value="NULL">--Select a city--</option>
                <option value="Vizag">Vizag</option>
                <option value="Hyderabad">Hyderabad</option>
                <option value="Chennai">Chennai</option>
                <option value="Mumbai">Mumbai</option>
            </select>
            </div>
            </div>
            <div class="row">
            <div class="a">
            <label for="phone">Phone: </label>
            </div>
            <div class="b">
            <input type="text" name="phone" placeholder="Your phone number.." required>
            </div>
            </div>
            <div class="row">
            <div class="a">
            <label class="sidetext" for="load">Load: </label>
            </div>
            <div class="b">
            <input type="text" name="val" placeholder="Enter the value.." required>
            <select for="load" name="load">
                <option value="KW">KW</option>
                <option value="HP">HP</option>
                <option value="WATTS">WATTS</option>
            </select>
            </div>
            </div>
            <div class="row">
            <div class="a">
            <label for="gender">Gender: </label>
            </div>
            <div class="b">
            <input type="radio" name="gender" value="Male" required>
            <label for="male">Male </label>
            <input type="radio" name="gender" value="Female" required>
            <label for="female">Female </label>
            </div>
            </div>
            <br>
            <div class="row">
            <input type="submit" value="Submit">
            </div>
        
    </div>
    </form>
</body>
</html>