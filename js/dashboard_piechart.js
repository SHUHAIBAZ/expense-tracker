$(document).ready(function() {

    $.ajax({
        url: "data.php",
        method: "POST",
        data: { action: 'fetch' },
        dataType: "JSON",
        success: function(data) {
            var category = [];
            var amount = [];
            var color = [];

            for (var count = 0; count < data.length; count++) {
                category.push(data[count].category);
                amount.push(data[count].amount);
                color.push(data[count].color);
            }

            var chart_data = {
                labels: category,

                datasets: [{
                    label: 'category',
                    backgroundColor: color,
                    color: '#000',
                    data: amount,


                }],
            };

            var group_chart2 = $('#doughnut_chart');

            var graph2 = new Chart(group_chart2, {
                type: "doughnut",
                data: chart_data,
                options: {
                    plugins: {
                        labels: [{
                                render: 'label',
                                fontColor: '#000',
                                position: 'outside'
                            },
                            {
                                render: 'value',
                                fontColor: '#fff',
                                position: 'inside'

                            }
                        ]
                    }
                }
            });

        }
    })
});