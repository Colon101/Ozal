<%@ Page Title="" Language="C#" MasterPageFile="~/Navigation.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Ozal.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <title>Login</title>
    <style>
        .login-component {
            background-color: #121212;
            color: #ffffff;
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .login-container {
            width: 100%;
            max-width: 400px;
            padding: 2em;
            background-color: #1e1e1e;
            border-radius: 0.5em;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
        }
        .login-container h2, .login-container h3 {
            margin: 0 0 1em 0;
        }
        .login-container label {
            display: block;
            margin: 0.5em 0 0.2em 0;
        }
        .login-container input {
            width: 100%;
            padding: 0.5em;
            margin-bottom: 1em;
            border: none;
            border-radius: 0.3em;
            background-color: #333;
            color: #ffffff;
        }
        .login-container button {
            width: 100%;
            padding: 0.7em;
            border: none;
            border-radius: 0.3em;
            background-color: #6200ee;
            color: #ffffff;
            font-size: 1em;
        }
        .login-container a {
            color: #bb86fc;
            text-decoration: none;
        }
        .login-nav {
            display: flex;
            justify-content: space-between;
            margin-bottom: 2em;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="login-component">
        <div class="login-container">
       
            <main>
                <h2>Login</h2>
                <h3>Access your account</h3>
                <form>
                    <label for="email">Email</label>
                    <input type="email" id="email" name="email" placeholder="Email" required>
                    <label for="password">Password</label>
                    <input type="password" id="password" name="password" placeholder="Password" required>
                    <button type="submit" onclick="event.preventDefault()">Login</button>
                    <p>Don't have an account? <a href="signup.aspx">Sign up</a></p>
                </form>
            </main>
        </div>
    </div>
</asp:Content>
