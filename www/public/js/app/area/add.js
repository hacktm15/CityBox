
var format = 'image/png';
var bounds = [198259.53442071282, 477943.9778197367,
    206982.89152081072, 488861.8156758918];
var untiled = new ol.layer.Image({
    source: new ol.source.ImageWMS({
        ratio: 1,
        url: 'http://hacktm.lo:8080/geoserver/hacktm/wms',
        params: {'FORMAT': format,
            'VERSION': '1.1.1',
            LAYERS: 'hacktm:utr',
            STYLES: ''
        }
    })
});
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
        untiled,
        tiled
    ],
    view: new ol.View({
        projection: projection
    })

});

map.getView().fit(bounds, map.getSize());