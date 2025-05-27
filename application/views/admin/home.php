<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Dashboard - Data Perhitungan PM</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <style>
        body { background: #f8f9fa; }
        .dashboard-title { margin: 30px 0 20px 0; }
        .card { margin-bottom: 20px; }
        .table-responsive { max-height: 400px; }
    </style>
</head>
<body>
<div class="container">
    <h2 class="dashboard-title text-center">Dashboard Perhitungan PM</h2>
    <div class="row">
        <!-- Grafik Penjualan -->
        <div class="col-md-6">
            <div class="card shadow">
                <div class="card-header bg-primary text-white">Grafik Penjualan Barang</div>
                <div class="card-body">
                    <canvas id="penjualanChart"></canvas>
                </div>
            </div>
        </div>
        <!-- Grafik Modal -->
        <div class="col-md-6">
            <div class="card shadow">
                <div class="card-header bg-success text-white">Grafik Modal Barang</div>
                <div class="card-body">
                    <canvas id="modalChart"></canvas>
                </div>
            </div>
        </div>
    </div>
    <!-- Grafik Hasil -->
    <div class="row">
        <div class="col-md-12">
            <div class="card shadow">
                <div class="card-header bg-warning text-dark">Grafik Hasil Perhitungan</div>
                <div class="card-body">
                    <canvas id="hasilChart"></canvas>
                </div>
            </div>
        </div>
    </div>
    <!-- Tabel Data -->
    <div class="row">
        <div class="col-md-12">
            <div class="card shadow">
                <div class="card-header bg-info text-white">Data Lengkap Perhitungan PM</div>
                <div class="card-body table-responsive">
                    <table class="table table-bordered table-hover table-sm">
                        <thead class="table-light">
                        <tr>
                            <th>No</th>
                            <th>Nama Barang</th>
                            <th>Kode Barang</th>
                            <th>Modal</th>
                            <th>Bobot Modal</th>
                            <th>Penjualan</th>
                            <th>Bobot Penjualan</th>
                            <th>Waktu</th>
                            <th>Bobot Waktu</th>
                            <th>GAP M</th>
                            <th>GAP P</th>
                            <th>GAP W</th>
                            <th>GAP M Fix</th>
                            <th>GAP P Fix</th>
                            <th>GAP W Fix</th>
                            <th>NCF</th>
                            <th>NSF</th>
                            <th>NI</th>
                            <th>Hasil</th>
                            <th>Kesimpulan</th>
                            <th>Keterangan</th>
                            <th>Presentasi NCF/NSF</th>
                            <th>Presentasi NCF2/NSF2/NI</th>
                            <th>Tanggal</th>
                            <th>ID Relasi</th>
                        </tr>
                        </thead>
                        <tbody>
                        <?php
                        $no = 1;
                        // Ambil data dari database
                        $query = $this->db->get('perhitungan_pm')->result();
                        foreach ($query as $row): ?>
                            <tr>
                                <td><?= $no++ ?></td>
                                <td><?= htmlspecialchars($row->nama_barang) ?></td>
                                <td><?= htmlspecialchars($row->kode_barang) ?></td>
                                <td><?= htmlspecialchars($row->modal) ?></td>
                                <td><?= htmlspecialchars($row->bobot_modal) ?></td>
                                <td><?= htmlspecialchars($row->penjualan) ?></td>
                                <td><?= htmlspecialchars($row->bobot_penjualan) ?></td>
                                <td><?= htmlspecialchars($row->waktu) ?></td>
                                <td><?= htmlspecialchars($row->bobot_waktu) ?></td>
                                <td><?= htmlspecialchars($row->GAP_M) ?></td>
                                <td><?= htmlspecialchars($row->GAP_P) ?></td>
                                <td><?= htmlspecialchars($row->GAP_W) ?></td>
                                <td><?= htmlspecialchars($row->GAP_M_fix) ?></td>
                                <td><?= htmlspecialchars($row->GAP_P_fix) ?></td>
                                <td><?= htmlspecialchars($row->GAP_W_fix) ?></td>
                                <td><?= htmlspecialchars($row->NCF) ?></td>
                                <td><?= htmlspecialchars($row->NSF) ?></td>
                                <td><?= htmlspecialchars($row->NI) ?></td>
                                <td><?= htmlspecialchars($row->hasil) ?></td>
                                <td><?= htmlspecialchars($row->kesimpulan) ?></td>
                                <td><?= htmlspecialchars($row->keterangan) ?></td>
                                <td><?= htmlspecialchars($row->presentasi_NCF_NSF) ?></td>
                                <td><?= htmlspecialchars($row->presentasi_NCF2_NSF2_NI) ?></td>
                                <td><?= htmlspecialchars($row->tanggal) ?></td>
                                <td><?= htmlspecialchars($row->id_relasi) ?></td>
                            </tr>
                        <?php endforeach; ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<?php
// Siapkan data untuk grafik
$nama_barang = [];
$penjualan = [];
$modal = [];
$hasil = [];
if (!empty($query)) {
    foreach ($query as $row) {
        $nama_barang[] = $row->nama_barang;
        $penjualan[] = (float)$row->penjualan;
        $modal[] = (float)$row->modal;
        $hasil[] = (float)$row->hasil;
    }
}
?>

<script>
    // Data dari PHP
    const namaBarang = <?= json_encode($nama_barang) ?>;
    const penjualan = <?= json_encode($penjualan) ?>;
    const modal = <?= json_encode($modal) ?>;
    const hasil = <?= json_encode($hasil) ?>;

    // Grafik Penjualan
    new Chart(document.getElementById('penjualanChart'), {
        type: 'bar',
        data: {
            labels: namaBarang,
            datasets: [{
                label: 'Penjualan',
                data: penjualan,
                backgroundColor: 'rgba(54, 162, 235, 0.7)'
            }]
        },
        options: {
            responsive: true,
            plugins: { legend: { display: false } },
            scales: { y: { beginAtZero: true } }
        }
    });

    // Grafik Modal
    new Chart(document.getElementById('modalChart'), {
        type: 'bar',
        data: {
            labels: namaBarang,
            datasets: [{
                label: 'Modal',
                data: modal,
                backgroundColor: 'rgba(40, 167, 69, 0.7)'
            }]
        },
        options: {
            responsive: true,
            plugins: { legend: { display: false } },
            scales: { y: { beginAtZero: true } }
        }
    });

    // Grafik Hasil
    new Chart(document.getElementById('hasilChart'), {
        type: 'line',
        data: {
            labels: namaBarang,
            datasets: [{
                label: 'Hasil Perhitungan',
                data: hasil,
                fill: false,
                borderColor: 'rgba(255, 193, 7, 0.9)',
                backgroundColor: 'rgba(255, 193, 7, 0.5)',
                tension: 0.3
            }]
        },
        options: {
            responsive: true,
            plugins: { legend: { display: true } },
            scales: { y: { beginAtZero: true } }
        }
    });
</script>
</body>
</html>