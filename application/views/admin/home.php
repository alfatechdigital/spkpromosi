<!-- Load Chart.js from CDN -->
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

<div class="container">
    <h2>Dashboard Kesimpulan Hasil Perhitungan NI</h2>
    <canvas id="niChart" width="400" height="200"></canvas>
</div>

<?php
// Ambil data dari database
$this->db->select('kesimpulan, COUNT(*) as jumlah');
$this->db->from('perhitungan_pm');
$this->db->group_by('kesimpulan');
$query = $this->db->get();
$results = $query->result_array();

$labels = [];
$data = [];
foreach ($results as $row) {
    $labels[] = $row['kesimpulan'];
    $data[] = $row['jumlah'];
}
?>

<script>
const ctx = document.getElementById('niChart').getContext('2d');
const niChart = new Chart(ctx, {
    type: 'bar',
    data: {
        labels: <?= json_encode($labels); ?>,
        datasets: [{
            label: 'Jumlah Kesimpulan NI',
            data: <?= json_encode($data); ?>,
            backgroundColor: 'rgba(54, 162, 235, 0.6)',
            borderColor: 'rgba(54, 162, 235, 1)',
            borderWidth: 1
        }]
    },
    options: {
        responsive: true,
        scales: {
            y: {
                beginAtZero: true,
                precision: 0
            }
        }
    }
});
</script>