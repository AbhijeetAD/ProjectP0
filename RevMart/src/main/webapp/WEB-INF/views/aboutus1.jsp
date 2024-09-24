<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us</title>
    <style>
        /* Reset some default styles */
        body, h1, h2, h3, p, ul, li {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Basic styling */
        body {
            font-family: 'Arial', sans-serif;
            line-height: 1.6;
            color: #333;
            background-color: #f4f4f4;
        }

        header {
            background-color:  #343a40; /* Bright blue header */
            color: #fff;
            padding: 1rem 0;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        nav {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 0 2rem;
        }

        nav img {
            height: 50px;
            width: auto;
            border-radius: 30px;
        }

        nav ul {
            list-style: none;
            display: flex;
            gap: 1rem;
        }

        nav ul li {
            margin: 0;
        }

        nav ul li a {
            color: #fff;
            text-decoration: none;
            font-weight: bold;
            padding: 0.5rem 1rem;
            border-radius: 4px;
            transition: background-color 0.3s ease;
        }

        nav ul li a.active,
        nav ul li a:hover {
            background-color: #0056b3; /* Darker blue for active/hover */
        }

        main {
            padding: 2rem;
            background: linear-gradient(to right, #ffffff, #f4f4f4);
        }

        section {
            margin-bottom: 2rem;
        }

        .container {
            width: 80%;
            margin: 0 auto;
        }

        .intro {
            background-color: #ffffff;
            padding: 2rem;
            border-radius: 12px;
            box-shadow: 10 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        .intro h1 {
            font-size: 2.5rem;
            margin-bottom: 1rem;
            color: #007BFF; /* Blue color for headings */
        }

        .intro p {
            font-size: 1.1rem;
            line-height: 1.8;
        }

        .team {
            background-color: #ffffff;
            padding: 2rem;
            border-radius: 40px;
            box-shadow: 10 4px 8px rgba(0, 0, 0, 0.1);
            position: relative;
            height: 600px; /* Adjust height as needed */
            
        }

        .team h2 {
            font-size: 2rem;
            margin-bottom: 1rem;
            color: #007BFF;
            text-align: center;
        }

        .team-member {
            position: absolute;
            width: 150px; /* Adjust the size as needed */
            height: 150px;
            text-align:center;
            border-radius: 50%;
          

        }

        .team-member img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: opacity 0.6s;
            border-radius:50px;
        }

        .team-member .info {
            position: absolute;
            width: 100%;
            height: 100%;
           
            
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            backface-visibility: hidden;
            transform: rotateY(180deg);
            padding: 10px;
            border-radius: 50%;
        }

      

       

        /* Positioning the team members */
        .team-member.center-member {
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
        }

        .team-member.top-left {
            top: 10%;
            left: 10%;
           
            
        }

        .team-member.top-right {
            top: 10%;
            right: 10%;
          }

        .team-member.bottom-left {
            bottom: 10%;
            left: 10%;
            
        }

        .team-member.bottom-right {
            bottom: 10%;
            right: 10%;
        }

        .contact-info {
            background-color: #ffffff;
            padding: 2rem;
            border-radius: 12px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .contact-info address {
            font-style: normal;
        }

        footer {
            background-color:  #343a40; /* Bright blue footer */
            color: #fff;
            padding: 1rem 0;
            text-align: center;
            box-shadow: 0 -2px 4px rgba(0, 0, 0, 0.1);
        }

        footer p {
            margin: 0;
        }
    </style>
</head>
<body>
    <header>
        <nav>
            <img src="/img/logo.png" alt="Logo" />
            <ul>
                <li><a href="userHome">Home</a></li>
                <li><a href="<c:url value='/about-us'/>" class="active">About Us</a></li>
                <li><a href="register">Register</a></li>
                <li><a href="login">Login</a></li>
            </ul>
        </nav>
    </header>

    <main>
        <section class="intro">
            <div class="container">
                <h1>About Us</h1>
                <p>Welcome to our company! We are dedicated to providing top-notch services and products to our customers. Our mission is to innovate and excel in every aspect of our business.</p>
            </div>
        </section>

      <section class="team">
    <div class="container">
        <h2>Meet the Team</h2>
        <div class="team-member center-member">
            <img src="img/gayatri.jpg" alt="Gayatri">
            <h3>Gayatri</h3>
            <p>Team Member</p>
           
        </div>
        <div class="team-member top-left">
            <img src="img/vilas.jpg" alt="Vilas"  style="background-color:red">
            <h3>Vilas</h3>
            <p>Team Member</p>
           </div>
        <div class="team-member top-right">
            <img src="img/shubham.jpg" alt="Shubham" >
            <h3>Shubham</h3>
            <p>Team Member</p>
           </div>
        <div class="team-member bottom-left">
            <img src="img/pratik.jpg" alt="Pratik" style="background-color:red">
            <h3>Pratik</h3>
            <p>Team Member</p>
            </div>
        <div class="team-member bottom-right">
            <img src="img/abhi.jpg" alt="Abhijeet">
            <h3>Abhijeet</h3>
            <p>Team Member</p>
            </div>
    </div>
</section>
      

        <section class="contact-info">
            <div class="container">
                <h2>Contact Us</h2>
                <p>For any inquiries, please reach out to us at:</p>
                <address>
                    <p>Email: <a href="mailto:info@company.com">info@company.com</a></p>
                    <p>Phone: +123 456 7890</p>
                    <p>Address: 123 Business Rd, Wagoli 400, Pune, India</p>
                </address>
            </div>
        </section>
    </main>

    <footer>
        <div class="container">
            <p>&copy; 2024 Company Name. All rights reserved.</p>
        </div>
    </footer>
</body>
</html>
