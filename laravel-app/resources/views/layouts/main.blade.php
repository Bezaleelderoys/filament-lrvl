<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="style.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&display=swap"
        rel="stylesheet" />
    <link href="https://fonts.cdnfonts.com/css/sofia-sans" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css" />
</head>
<style>
    body {
        background-color: #111827;
        font-family: "Sofia Sans", sans-serif;
    }

    .navbar {
        background: transparent;
    }

    header h1 {
        font-size: 55px;
        width: 500px;
        text-align: center;
        margin-top: 125px;
    }

    header p {
        text-align: center;
        width: 600px;
        font-family: "Montserrat", sans-serif;
        margin-top: 20px;
    }

    @media (max-width: 640px) {
        header h1 {
            width: 90%;
            font-size: 50px;
        }

        header p {
            width: 90%;
        }
    }
</style>

<body>
    @include('partials.navbar')

    @yield('container')

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
