<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Dashboard Admin</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap CSS CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Chart.js CDN -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <style>
        body {
            background: #f8f9fa;
        }
        .dashboard-card {
            border-radius: 15px;
            box-shadow: 0 2px 10px rgba(0,0,0,0.08);
            margin-bottom: 30px;
        }
        .dashboard-title {
            font-weight: bold;
            color: #343a40;
        }
    </style>
</head>
<body>
<div class="container py-5">
    <h2 class="mb-4 dashboard-title">Dashboard Hasil Perhitungan</h2>
    <div class="row">
        <!-- Example Statistic Cards -->
        <div class="col-md-4">
            <div class="card dashboard-card text-center">
                <div class="card-body">
                    <h5 class="card-title">Total Data</h5>
                    <p class="display-4" id="totalData">0</p>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card dashboard-card text-center">
                <div class="card-body">
                    <h5 class="card-title">Rata-rata Nilai</h5>
                    <p class="display-4" id="avgValue">0</p>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card dashboard-card text-center">
                <div class="card-body">
                    <h5 class="card-title">Hasil Tertinggi</h5>
                    <p class="display-4" id="maxValue">0</p>
                </div>
            </div>
        </div>
    </div>
    <!-- Grafik Hasil Perhitungan -->
    <div class="card dashboard-card mt-4">
        <div class="card-body">
            <h5 class="card-title">Grafik Hasil Perhitungan</h5>
            <canvas id="resultChart" height="100"></canvas>
        </div>
    </div>
</div>

<script>
    // Dummy data, replace with PHP variables if available
    const hasilPerhitungan = [
        { label: 'A', value: 80 },
        { label: 'B', value: 65 },
        { label: 'C', value: 90 },
        { label: 'D', value: 75 },
        { label: 'E', value: 60 }
    ];

    // Update statistic cards
    const totalData = hasilPerhitungan.length;
    const avgValue = hasilPerhitungan.reduce((a, b) => a + b.value, 0) / totalData;
    const maxValue = Math.max(...hasilPerhitungan.map(item => item.value));

    document.getElementById('totalData').innerText = totalData;
    document.getElementById('avgValue').innerText = avgValue.toFixed(2);
    document.getElementById('maxValue').innerText = maxValue;

    // Chart.js
    const ctx = document.getElementById('resultChart').getContext('2d');
    const resultChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: hasilPerhitungan.map(item => item.label),
            datasets: [{
                label: 'Nilai',
                data: hasilPerhitungan.map(item => item.value),
                backgroundColor: [
                    '#0d6efd', '#198754', '#ffc107', '#dc3545', '#6f42c1'
                ],
                borderRadius: 8
            }]
        },
        options: {
            responsive: true,
            plugins: {
                legend: { display: false },
                tooltip: { enabled: true }
            },
            scales: {
                y: {
                    beginAtZero: true,
                    title: { display: true, text: 'Nilai' }
                },
                x: {
                    title: { display: true, text: 'Kategori' }
                }
            }
        }
    });
</script>
</body>
</html>