// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require_tree .


// A $( document ).ready() block.
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
                text: 'CO<sub>2<sub> Emissions'
            },
            plotLines: [{
                value: 0,
                width: 1,
                color: '#808080'
            }]
        },
        tooltip: {
            valueSuffix: '°C'
        },
        legend: {
            layout: 'vertical',
            align: 'right',
            verticalAlign: 'middle',
            borderWidth: 0
        },
        series: [{
            name: 'Bath',
            data: [7.0, 6.9, 9.5, 14.5, 18.2, 21.5, 25.2]
        }, {
            name: 'You',
            data: [-0.2, 0.8, 5.7, 11.3, 17.0, 22.0, 24.8]
        }]
    });
});




});