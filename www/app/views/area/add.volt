{% extends "layouts/base.volt" %}

{% block head %}

    {# render the contents of the parent block #}
    {{ super() }}


{% endblock %}

{% block breadcrumb %}
    {% for breadcrumb in pageBreadcrumbs %}
        <li>{{ breadcrumb }}</li>
    {% endfor %}
{% endblock %}

{% block main %}

<div id="map" class="map"></div>

{% endblock %}

{% block jsfooter %}
    <script type="text/javascript">
        $(document).ready(function() {

            var map = new ol.Map({
                target: 'map',
                layers: [
                    new ol.layer.Tile({
                        source: new ol.source.MapQuest({layer: 'sat'})
                    })
                ],
                view: new ol.View({
                    center: ol.proj.fromLonLat([37.41, 8.82]),
                    zoom: 4
                })
            });

        });
    </script>


{% endblock %}

