
var format = 'image/png';

var tiled = new ol.layer.Tile({
    visible: false,
    source: new ol.source.TileWMS({
        url: 'http://hacktm.lo:8080/geoserver/hacktm/wms',
        params: {'FORMAT': format,
            'VERSION': '1.1.1',
            tiled: true,
            LAYERS: 'hacktm:utr',
            STYLES: ''
        },
        serverType: 'geoserver'
    })
});
var projection = new ol.proj.Projection({
    code: 'EPSG:3844',
    units: 'm',
    axisOrientation: 'neu'
});

var map = new ol.Map({
    target: 'map',

    layers: [
        new ol.layer.Tile({
            source: new ol.source.MapQuest({layer: 'sat'})
        }),
        tiled
    ],
    view: new ol.View({
        projection: projection
    })

});