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
    <div class="spinner-overlay" id="spinnerOverlay">
        <div class="spinner">
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
        </div>
    </div>
    <div class="login-container">
        <div class="logo" style="display: flex; justify-content: center;">
            <img src="public/dti_logo.png" alt="Company Logo" width="100" height="100">
        </div>


        <form>
            <div class="form-group">
                <label for="email">Email</label>
                <ion-icon name="mail-outline"></ion-icon>
                <input type="email" id="email" name="email" placeholder="Enter your email" autocomplete="off">
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <ion-icon name="lock-closed-outline"></ion-icon>
                <input type="password" id="password" name="password" placeholder="Enter your password"
                    autocomplete="off">
            </div>
            <button type="submit">Login</button>
            <a href="{{ route('reports') }}">go to reports</a>

        </form>
    </div>

</body>

</html>