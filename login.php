<?php
session_start();

// Jika pengguna sudah masuk, arahkan ke halaman dashboard yang sesuai
if (isset($_SESSION["signIn"])) {
    if ($_SESSION["level"] === "admin") {
        header("Location: ../../DashboardAdmin/dashboardAdmin.php");
    } elseif ($_SESSION["level"] === "member") {
        header("Location: ../../DashboardMember/dashboardMember.php");
    } elseif ($_SESSION["level"] === "petugas") {
        header("Location: ../../DashboardPetugas/dashboardPetugas.php");
    }
    exit;
}

// Jika formulir login dikirimkan
if (isset($_POST["signIn"])) {
    require "../../loginSystem/connect.php";

    // Tangkap data dari formulir
    $username = $_POST["username"];
    $password = $_POST["password"];
    $level = $_POST["level"];

    // Query untuk memeriksa keberadaan pengguna di database
    $result = mysqli_query($connect, "SELECT * FROM user WHERE username = '$username' AND level = '$level'");

    if (mysqli_num_rows($result) === 1) {
        $user = mysqli_fetch_assoc($result);

        // Periksa kecocokan password
        if (password_verify($password, $user["password"])) {
            // Set session untuk pengguna yang berhasil masuk
            $_SESSION["signIn"] = true;
            $_SESSION["level"] = $level;
            $_SESSION["username"] = $username;

            // Arahkan pengguna ke dashboard yang sesuai dengan level mereka
            if ($level === "admin") {
                header("Location: ../../DashboardAdmin/dashboardAdmin.php");
            } elseif ($level === "member") {
                header("Location: ../../DashboardMember/dashboardMember.php");
            } elseif ($level === "petugas") {
                header("Location: ../../DashboardPetugas/dashboardPetugas.php");
            }
            exit;
        } else {
            // Password tidak cocok
            $error = "Nama pengguna atau kata sandi salah.";
        }
    } else {
        // Pengguna tidak ditemukan di database
        $error = "Nama pengguna atau level tidak valid.";
    }
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>

<body>

    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-header">Login</div>
                    <div class="card-body">
                        <?php if (isset($error)): ?>
                            <div class="alert alert-danger"><?php echo $error; ?></div>
                        <?php endif; ?>
                        <form action="" method="post">
                            <div class="form-group">
                                <label for="username">Username</label>
                                <input type="text" class="form-control" id="username" name="username" required>
                            </div>
                            <div class="form-group">
                                <label for="password">Password</label>
                                <input type="password" class="form-control" id="password" name="password" required>
                            </div>
                            <div class="form-group">
                                <label for="level">Level</label>
                                <select class="form-control" id="level" name="level">
                                    <option value="admin">Admin</option>
                                    <option value="member">Member</option>
                                    <option value="petugas">Petugas</option>
                                </select>
                            </div>
                            <button type="submit" class="btn btn-primary" name="signIn">Login</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>

</html>