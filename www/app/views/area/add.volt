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

    {{ javascript_include("/js/app/area/add.js") }}


{% endblock %}

