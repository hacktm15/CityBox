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
<form class="form-inline">
  <label>Geometry type &nbsp;</label>
  <select id="type">
    <option value="None">None</option>
    <option value="Point">Point</option>
    <option value="LineString">LineString</option>
    <option value="Polygon">Polygon</option>
    <option value="Circle">Circle</option>
    <option value="Square">Square</option>
    <option value="Box">Box</option>
  </select>
</form>

{% endblock %}

{% block jsfooter %}

    {{ javascript_include("/js/app/area/index.js") }}

{% endblock %}

