$('.datepicker').datepicker({
  'format': 'yyyy-mm-dd'
});

$(document ).ready(function() {
  $(function () {
    $('#chart').highcharts({
        title: {
            text: 'Weekly Emissions',
            x: -20 //center
        },

        xAxis: {
            categories: ['Mon', 'Tues', 'Wed', 'Thur', 'Fri', 'Sat', 'Sun']
        },
        yAxis: {
            title: {
                text: 'N<sub>2<sub>O Emissions'
            },
            plotLines: [{
                value: 0,
                width: 1,
                color: '#808080'
            }]
        },
        tooltip: {
            valueSuffix: 'grams'
        },
        legend: {
            layout: 'vertical',
            align: 'right',
            verticalAlign: 'middle',
            borderWidth: 0
        },
        series: [{
            name: 'Bath',
            data: $('#chart').data('bath').split(',').map(Number)
        }, {
            name: 'You',
            data: $('#chart').data('you').split(',').map(Number)
        }]
    });
  });
});
