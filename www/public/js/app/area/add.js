
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
    code: 'EPSG:3857',
    units: 'm',
    axisOrientation: 'neu'
});

var map = new ol.Map({
    target: 'map',

    layers: [
        //new ol.layer.Tile({
        //    source: new ol.source.MapQuest({layer: 'sat'})
        //}),
        new ol.layer.Tile({
            source: new ol.source.OSM()
        }),
        untiled,
        tiled
    ],
    view: new ol.View({
        projection: projection,
        //center: ol.proj.transform([198259.5344, 477943.9778], 'EPSG:3844', 'EPSG:3857'),
        center: ol.proj.transform([21.23,45.75], 'EPSG:4326', 'EPSG:3857'),
        zoom:11
    })

});

//map.getView().fit(bounds, map.getSize());