<!DOCTYPE html>
<html lang="en">
<head>
    <title>Webpage Design</title>
    <link rel="stylesheet" href="style1.css">
    <style>
        /* CSS styles for button container */
        .menu {
            text-align: center;
            margin-top: 20px; /* Adjust spacing from the top */
        }

        /* CSS styles for buttons */
        .menu ul {
            list-style-type: none;
            padding: 0;
        }

        .menu ul li {
            display: inline-block;
            margin: 10px; /* Adjust space between buttons */
        }

        .menu ul li a {
            text-decoration: none;
            color: #fff; /* Text color */
            background-color: #4CAF50; /* Button background color */
            padding: 10px 20px;
            border: 2px solid #4CAF50; /* Button border color */
            border-radius: 20px;
            transition: all 0.3s ease;
            display: inline-block; /* Display as inline-block to allow for expanding */
            min-width: 150px; /* Set a minimum width for buttons */
            text-align: center; /* Center the text inside buttons */
        }

        .menu ul li:nth-child(3) a {
            width: auto; /* Allow "STUDENTS REVIEW" button to expand */
        }
         main {
    font-size: 40px;
    width: 100%;
    height: 70vh;
    display: flex;
    justify-content: center;
    align-items: center;
    text-align: center;
    color: white;
  }
        .menu ul li a:hover {
            background-color: #45a049; /* Button background color on hover */
            border-color: #45a049; /* Button border color on hover */
        }
        .signout-btn {
      position: absolute;
      top: 20px;
      right: 20px;
      background-color: #2196F3; /* Blue color for sign-out button */
    }
    </style>
</head>
<body>
  
<div class="main">
    <div class="navbar">
        <div class="icon"></div>
        <div class="menu">
            <ul>
                <li><a href="company.jsp">COMPANIES</a></li>
                <li><a href="resources.jsp">RESOURCES</a></li>
                <li><a href="reviews.jsp">STUDENTS REVIEW</a></li>
                <li><a href="company_info.jsp">UPCOMING COMPANY</a></li>
            </ul>
        </div>
    </div> 
    <div class="content">
        <style>
            /* CSS styles for back button */
            .back-button ion-icon {
                font-size: 65px;
                font-weight: bold;
                color: white;
                position: fixed;
                top: 20px;
                left: 20px;
                z-index: 9999;
                padding: 10px 15px;
                border-radius: 5px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            }
        </style>
        <a href="StudentLogin.jsp" class="back-button"><ion-icon name="arrow-back"></ion-icon></a>
    </div>
    <main>
		<section>
			
			<p>"Since its inception Banasthali has evolved as a unique institution and we should not only always remain wakeful about this uniqueness but should also remain devoted to maintain and cherish it."
                                                                                                                                                                                                                   ~ Prof. Aditya Shastri</p>
		   
                </section>
            
	</main>
</div>

<script src="https://unpkg.com/ionicons@5.4.0/dist/ionicons.js"></script>
 <button onclick="signOut()" class="signout-btn">Sign Out</button>

  <script>
    function signOut() {
      // Clear any session data or perform other sign-out actions here
      // For example, you can redirect the user to the login page
      window.location.href = "StudentLogin.jsp"; // Replace LoginPage.html with your actual login page
    }
  </script>
</body>
</html>
