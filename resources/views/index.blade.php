<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <script type="module" src="https://cdn.jsdelivr.net/npm/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://cdn.jsdelivr.net/npm/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
    @vite('resources/css/app.css')
</head>

<body>
    <div class="login-container">
        <div class="logo" style="display: flex; justify-content: center;">
            <img src="{{ asset('images/dti_logo.png') }}" alt="Company Logo" width="100" height="100">

        </div>

        <p id="error-message" style="color: red; display: none;"></p>
        {{-- @auth
        <form action="/logout" method="POST">
            @csrf
            <button>logout</button>
        </form>
        @else --}}
        <form action="/login" method="POST">
            @csrf
            <div class="form-group">
                <label for="name">Name</label>
                <ion-icon name="mail-outline"></ion-icon>
                <input type="text" id="name" name="loginname" placeholder="Enter your Name" autocomplete="off" required>
            </div>

            <div class="form-group">
                <label for="password">Password</label>
                <ion-icon name="lock-closed-outline"></ion-icon>
                <input type="password" id="password" name="loginpassword" placeholder="Enter your Password"
                    autocomplete="off" required>
            </div>

            <button type="submit">Login</button>
            {{-- <a href="{{ route('register') }}">Register</a> --}}
            {{-- @endauth --}}
</body>

</html>