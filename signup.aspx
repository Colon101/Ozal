<%@ Page Title="" Language="C#" MasterPageFile="~/Navigation.Master" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="Ozal.signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <title>Signup</title>
    <style>
        .signup-component {
            background-color: #121212;
            color: #ffffff;
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .signup-container {
            width: 100%;
            max-width: 400px;
            padding: 2em;
            background-color: #1e1e1e;
            border-radius: 0.5em;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
        }
        .signup-container h2, .signup-container h3 {
            margin: 0 0 1em 0;
        }
        .signup-container label {
            display: block;
            margin: 0.5em 0 0.2em 0;
        }
        .signup-container input {
            width: 100%;
            padding: 0.5em;
            margin-bottom: 1em;
            border: none;
            border-radius: 0.3em;
            background-color: #333;
            color: #ffffff;
        }
        .signup-container button {
            width: 100%;
            padding: 0.7em;
            border: none;
            border-radius: 0.3em;
            background-color: #6200ee;
            color: #ffffff;
            font-size: 1em;
        }
        .signup-container a {
            color: #bb86fc;
            text-decoration: none;
        }
        .signup-nav {
            display: flex;
            justify-content: space-between;
            margin-bottom: 2em;
        }
        .signup-error {
            color: red;
            font-size: 0.9em;
        }
    </style>
    <script>
        function validateForm(event) {
            event.preventDefault();
            let isValid = true;
            const username = document.getElementById('signup-username');
            const password = document.getElementById('signup-password');
            const usernameError = document.getElementById('signup-usernameError');
            const passwordError = document.getElementById('signup-passwordError');

            // Reset error messages
            usernameError.textContent = '';
            passwordError.textContent = '';

            // Username validation
            if (username.value.length < 3) {
                usernameError.textContent = 'Username must be at least 3 characters long';
                isValid = false;
            }

            // Password validation
            const passwordRegex = /^(?=.*[A-Z])(?=.*\d).{8,}$/;
            if (!passwordRegex.test(password.value)) {
                passwordError.textContent = 'Password must be at least 8 characters long, with at least one uppercase letter and one number';
                isValid = false;
            }

            if (isValid) {
                // Form is valid, you can submit it
                alert('Form submitted successfully!');
                // Uncomment the line below to actually submit the form
                // event.target.submit();
            }
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="signup-component">
        <div class="signup-container">
            
            <main>
                <h2>Signup</h2>
                <h3>Create a new account</h3>
                <form onsubmit="validateForm(event)">
                    <label for="firstname">First Name</label>
                    <input type="text" id="firstname" name="firstname" placeholder="First Name" required>
                    <label for="lastname">Last Name</label>
                    <input type="text" id="lastname" name="lastname" placeholder="Last Name" required>
                    <label for="signup-username">Username</label>
                    <input type="text" id="signup-username" name="username" placeholder="Username" required>
                    <span id="signup-usernameError" class="signup-error"></span>
                    <label for="email">Email</label>
                    <input type="email" id="email" name="email" placeholder="Email" required>
                    <label for="signup-password">Password</label>
                    <input type="password" id="signup-password" name="password" placeholder="Password" required>
                    <span id="signup-passwordError" class="signup-error"></span>
                    <button type="submit">Signup</button>
                    <p>Already have an account? <a href="login.aspx">Login</a></p>
                </form>
            </main>
        </div>
    </div>
</asp:Content>
