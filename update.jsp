<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Student Details</title>
    <style>
        body {
            background-image: url('background-image.jpg'); /* Replace 'background-image.jpg' with your image path */
            background-size: cover;
            background-position: center;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .form-container {
            background-color: rgba(255, 255, 255, 0.8); /* Change the opacity as needed */
            padding: 20px;
            border-radius: 10px;
        }
        form {
            text-align: center;
        }
        input[type="text"] {
            width: 200px;
            padding: 8px;
            margin-bottom: 10px;
        }
        input[type="submit"] {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h1>Update Student Details</h1>
        <form action="Update1.jsp" method="post">
            <label for="STUDENT_ID">Enter Student ID:</label><br>
            <input type="text" id="STUDENT_ID" name="STUDENT_ID" required><br><br>
            
            <label for="updateOption">Select Field to Update:</label><br>
            <select id="updateOption" name="updateOption">
                <option value="STUDENT_NAME">Student Name</option>
                <option value="FATHER_NAME">Father Name</option>
                <option value="MOTHER_NAME">Mother Name</option>
                <option value="STUDENT_ID">Student ID</option>
                <option value="ROLL_NUMBER">Roll Number</option>
                <option value="COURSE">Course</option>
                <option value="STREAM">Stream</option>
                <option value="EXPECTED_GRADUATION_YEAR">Expected Graduation Year</option>
                <option value="CURRENT_ADDRESS">Current Address</option>
                <option value="PERMANENT_ADDRESS">Permanent Address</option>
                <option value="CURRENT_SCORE">Current Score</option>
                <option value="TENTH_PERCENTAGE">10th Percentage</option>
                <option value="TWELFTH_PERCENTAGE">12th Percentage</option>
                <option value="MOBILE_NUMBER">Mobile Number</option>
                <option value="EMAIL_ID">Email ID</option>
                <option value="PASSWORD">Password</option>
                <!-- Add more options as needed -->
            </select><br><br>
            
            <label for="newValue">Enter New Value:</label><br>
            <input type="text" id="newValue" name="newValue" required><br><br>
            
            <input type="submit" value="Submit">
        </form>
    </div>
</body>
</html>
