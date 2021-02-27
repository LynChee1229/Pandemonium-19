<?php
    session_start();
    include("database/connect.php");
    include("signin_signup_signout_forgetpass_automail/function.php");

    $user = check_log($con);
?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Feedback</title>
	<style>
		html,body{
			background: #30343F;
		}

		#feedback{
			width: 800px;
			height: 410px;
			position: relative;
			margin: 9% auto;
			border: 1pt solid #30343F;
			border-radius: 10px;
			padding: 10px;
			background-color: #E4D9FF;
			text-align: center;
		}
		.star-rating{
			margin: 25px 0 0px;
			font-size: 0;
			white-space: nowrap;
			display: inline-block;
			width: 175px;
			height: 35px;
			overflow: hidden;
			position: relative;
			background: url('data:image/svg+xml;base64,PHN2ZyB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHg9IjBweCIgeT0iMHB4IiB3aWR0aD0iMjBweCIgaGVpZ2h0PSIyMHB4IiB2aWV3Qm94PSIwIDAgMjAgMjAiIGVuYWJsZS1iYWNrZ3JvdW5kPSJuZXcgMCAwIDIwIDIwIiB4bWw6c3BhY2U9InByZXNlcnZlIj48cG9seWdvbiBmaWxsPSIjREREREREIiBwb2ludHM9IjEwLDAgMTMuMDksNi41ODMgMjAsNy42MzkgMTUsMTIuNzY0IDE2LjE4LDIwIDEwLDE2LjU4MyAzLjgyLDIwIDUsMTIuNzY0IDAsNy42MzkgNi45MSw2LjU4MyAiLz48L3N2Zz4=');
			background-size: contain;
		}
		.star-rating i{
			opacity: 0;
			position: absolute;
			left: 0;
			top: 0;
			height: 100%;
			width: 20%;
			z-index: 1;
			background: url('data:image/svg+xml;base64,PHN2ZyB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHg9IjBweCIgeT0iMHB4IiB3aWR0aD0iMjBweCIgaGVpZ2h0PSIyMHB4IiB2aWV3Qm94PSIwIDAgMjAgMjAiIGVuYWJsZS1iYWNrZ3JvdW5kPSJuZXcgMCAwIDIwIDIwIiB4bWw6c3BhY2U9InByZXNlcnZlIj48cG9seWdvbiBmaWxsPSIjRkZERjg4IiBwb2ludHM9IjEwLDAgMTMuMDksNi41ODMgMjAsNy42MzkgMTUsMTIuNzY0IDE2LjE4LDIwIDEwLDE2LjU4MyAzLjgyLDIwIDUsMTIuNzY0IDAsNy42MzkgNi45MSw2LjU4MyAiLz48L3N2Zz4=');
			background-size: contain;
		}
		.star-rating input {
		  -moz-appearance: none;
		  -webkit-appearance: none;
		  opacity: 0;
		  display: inline-block;
		  width: 20%;
		  height: 100%;
		  margin: 0;
		  padding: 0;
		  z-index: 2;
		  position: relative;
		  cursor: pointer;
		}
		.star-rating input:hover + i,
		.star-rating input:checked + i {
		  opacity: 1;
		}
		.star-rating i ~ i {
		  width: 40%;
		}
		.star-rating i ~ i ~ i {
		  width: 60%;
		}
		.star-rating i ~ i ~ i ~ i {
		  width: 80%;
		}
		.star-rating i ~ i ~ i ~ i ~ i {
		  width: 100%;
		}

		#type input{
			cursor: pointer;
		}
	</style>
</head>
<body>
	<div id="feedback">
		<p style="text-align: left; margin:0;">Feedback</p>
		<p>We would be much appreciate to have your feedback about our website in order to improve our website.</p>
		<form id="feedback-form" method="post" action="feedback.php">
			<label for="rating">How is your experience on our website? (Please rate)</label><br>
			<span class="star-rating">
				<input type="radio" name="rating" value="1" required oninvalid="this.setCustomValidity('You need to rate aleast a star to submit.')" onclick="setCustomValidity('')"><i></i>
				<input type="radio" name="rating" value="2"><i></i>
				<input type="radio" name="rating" value="3"><i></i>
				<input type="radio" name="rating" value="4"><i></i>
				<input type="radio" name="rating" value="5"><i></i>
			</span>
			<hr>
			<p>Please select the category for your feedback:</p>
			<span id="type">
				<input type="radio" name="feedback-category" id="suggestion" class="suggestion" value="suggestion">
				<label for="suggestion">Suggestion</label>
				<input type="radio" name="feedback-category" id="somethingWrong" class="somethingWrong" value="somethingWrong">
				<label for="somethingWrong">Something's wrong</label>
				<input type="radio" name="feedback-category" id="complement" class="complement" value="complement">
				<label for="complement">Complement</label>
				<hr>
			</span>
			<label for="comment">Leave any suggestion below.</label><br>
			<textarea cols="80" name="comment" rows="5" placeholder="Enter text here. . ." style="margin-top: 10px;background: transparent; padding: 5px" ></textarea>
			<br>
			<input type="submit" value="Submit Feedback" style="position: absolute;right: 0; margin-top: 10px;background: #8080ff;border: 0;border-radius: 30px;padding: 10px 20px;
			cursor: pointer; margin-right: 5px;" name="submit"></form>
		</form>

        <?php
            if(isset($_POST['submit']))
            {
                $id = $user['userID'];
                $rating = $_POST['rating'];
                $type = $_POST['feedback-category'];
                $comment= $_POST['comment'];


                $query = "insert into feedback(rating,category,comment,userID) value ('$rating','$type','$comment','$id')";

                if($result = mysqli_query($con,$query))
                {
                ?>
                    <script>
                        alert("Thank you for your feedback!!");
                    </script>
                <?php
                }
                else{
                    echo "Error inserting data";
                }
            }
        ?>
	</div>
</body>
</html>