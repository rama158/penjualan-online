<?php include
("../koneksi.php");
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Data Transaksi</title>
</head>
<body>
    <h1>Data Transaksi</h1>
    <nav>
        <ul>
            <li><a href="../index.php">Kembali</a></li>
        </ul>
    </nav>
    <nav>
        <ul>
            <li><a href="tambah-transaksi.php">[+]Tambah Transaksi</a></li>
        </ul>
    </nav>
    <br>
    
    <table border="1">
       <thead></thead>
            <tr>
                <th>Kode Transaksi</th>
                <th>Kode Barang</th> 
                <th>Nama Barang</th>
                <th>Harga</th>
                <th>Jumlah</th>
                <th>Total Harga</th>
                <th>Tanggal</th>
                <th>Tindakan</th>
            </tr>
        </thead>
        <tbody>
            <?php
                $sql = "SELECT * FROM transaksi";
                $query = mysqli_query($db, $sql);

                while ($transaksi = mysqli_fetch_array($query)) {
                    echo "<tr>";

                    echo "<td>" . $transaksi['kode_transaksi']."</td>";
                    echo "<td>" . $transaksi['kode_brg']."</td>";
                    echo "<td>" . $transaksi['nama_brg']."</td>";
                    echo "<td> Rp. ".number_format($transaksi['harga'], 2, ',', '.')."</td>";
                    echo "<td>" . $transaksi['jumlah']."</td>";
                    echo "<td> Rp. ". number_format($transaksi['total_bayar'], 2, ',', '.')."</td>";
                    echo "<td>" . $transaksi['tanggal']."</td>";

                    echo "<td>";
                    echo "<a href='edit-transaksi.php?id=".$transaksi['kode_transaksi'] . "'>Edit</a> | ";
                    echo "<a href='hapus-transaksi.php?id=".$transaksi['kode_transaksi'] . "'onClick='return confirm(\"Apakah anda yakin ingin menghapus data ini?\")'>Hapus</a></td>";
                    echo "</tr>";
                }
            ?>
            
        </tbody>
    </table>
    <p>Total: <?php echo mysqli_num_rows($query) ?> Barang</p>
</body>
</html>