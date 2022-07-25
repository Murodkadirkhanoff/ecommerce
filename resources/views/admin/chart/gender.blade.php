<canvas id="doughnut" width="200" height="200"></canvas>

<script>

    function generateRandomColor() {
        var letters = '0123456789ABCDEF';
        var color = '#';
        for (var i = 0; i < 6; i++) {
            color += letters[Math.floor(Math.random() * 16)];
        }
        return color;
    }

    $(function () {

        const footer = (tooltipItems) => {
            let sum = 0;

            tooltipItems.forEach(function(tooltipItem) {
                sum += tooltipItem.parsed.y;
            });
            return 'Sum: ' + sum;
        };

        var config = {
            type: 'line',
            data: {
                datasets: [{
                    label: 'Статистика по заказам',
                    pointStyle: 'circle',
                    pointRadius: 10,
                    pointHoverRadius: 15,
                    data: [
                        <?php
                        foreach (array_values($gender) as $value) {
                            echo $value . ',';
                        }
                        ?>
                    ],
                    backgroundColor: [
                        'rgb(54, 162, 235)',
                        'rgb(255, 99, 132)',
                        'rgb(255, 205, 86)'
                    ]
                }],
                labels: [
                    <?php
                    foreach (array_keys($gender) as $value) {
                        echo "'$value'" . ',';
                    }
                    ?>
                ]
            },
            options: {
                maintainAspectRatio: false,
                interaction: {
                    intersect: false,
                    mode: 'index',
                },
                plugins: {
                    tooltip: {
                        callbacks: {
                            footer: footer,
                        }
                    }
                }
            },

        };

        var ctx = document.getElementById('doughnut').getContext('2d');
        new Chart(ctx, config);
    });
</script>
