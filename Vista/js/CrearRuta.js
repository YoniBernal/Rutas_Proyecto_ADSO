$(document).ready(function () {
    $('#mySelect').multiSelect();

    $('#mySelect').change(function () {
        drawRoute();
    });
});

function drawRoute() {
    var selectedMunicipios = $('#mySelect option:selected');
    var numMunicipios = selectedMunicipios.length;

    if (numMunicipios < 2) {
        return;
    }

    var canvas = document.getElementById('canvas');
    var ctx = canvas.getContext('2d');
    var width = canvas.width;
    var height = canvas.height;

    ctx.clearRect(0, 0, width, height);

    var positions = [];
    var radius = Math.min(width, height) / 3;
    var centerX = width / 2;
    var centerY = height / 2;
    var angle = (2 * Math.PI) / numMunicipios;

    selectedMunicipios.each(function (index) {
        var option = $(this);
        var value = parseInt(option.val());

        var x = centerX + radius * Math.cos(index * angle);
        var y = centerY + radius * Math.sin(index * angle);

        ctx.fillStyle = 'black';
        ctx.beginPath();
        ctx.arc(x, y, 5, 0, 2 * Math.PI);
        ctx.fill();

        ctx.fillStyle = 'black';
        ctx.textAlign = 'center';
        ctx.textBaseline = 'middle';
        ctx.fillText(option.text(), x + 20, y + 20);

        positions.push({ x: x, y: y });
    });

    var route = calculateRoute(positions);

    ctx.strokeStyle = 'black';
    ctx.lineWidth = 1;
    ctx.beginPath();

    for (var i = 0; i < route.length; i++) {
        var start = route[i];
        var end = route[(i + 1) % route.length];

        drawLine(ctx, start, end);
    }

    ctx.stroke();
}

function calculateRoute(positions) {
    var numPositions = positions.length;
    var route = [];

    var indices = Array.from(Array(numPositions).keys());
    indices.sort(function () {
        return 0.5 - Math.random();
    });

    for (var i = 0; i < numPositions; i++) {
        var index = indices[i];
        route.push(positions[index]);
    }

    return route;
}

function drawLine(ctx, start, end) {
    ctx.moveTo(start.x, start.y);
    ctx.lineTo(end.x, end.y);
}
