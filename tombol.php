<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Button Effect</title>
    <link rel="stylesheet" href="styles.css"> <!-- Sesuaikan dengan lokasi file CSS Anda -->
</head>
<style>
    /* styles.css */
    .my-button {
        display: inline-block;
        padding: 10px 20px;
        font-size: 16px;
        text-align: center;
        text-decoration: none;
        outline: none;
        cursor: pointer;
        border: none;
        border-radius: 5px;
        transition: background-color 0.3s ease, color 0.3s ease;
        background-color: #3498db;
        /* Warna latar belakang biru elegan */
        color: #fff;
        /* Warna teks putih */
    }

    .my-button.clicked {
        background-color: #2980b9;
        /* Warna latar belakang biru sedikit lebih gelap saat diklik */
        color: #ecf0f1;
        /* Warna teks putih */
    }
</style>

<body>

    <button class="my-button" onclick="buttonClicked(1)">Tombol 1</button>
    <button class="my-button" onclick="buttonClicked(2)">Tombol 2</button>
    <button class="my-button" onclick="buttonClicked(3)">Tombol 3</button>

    <script src="script.js"></script> <!-- Sesuaikan dengan lokasi file JavaScript Anda -->
</body>

</html>