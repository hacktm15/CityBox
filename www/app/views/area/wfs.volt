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
<div id="btnSelect" class="btn btn-primary btnMenu btn-floating btn-large waves-effect waves-light teal"><i class="mdi-action-speaker-notes"></i></div>
<div id="btnEdit" class="btn btn-primary btnMenu btn-floating btn-large waves-effect waves-light teal"><i class="mdi-editor-mode-edit"></i></div>
<div id="btnDrawPoint" class="btn btn-primary btnMenu btn-floating btn-large waves-effect waves-light teal"><i class="mdi-maps-place"></i></div>
<div id="btnDrawLine" class="btn btn-primary btnMenu btn-floating btn-large waves-effect waves-light teal"><i class="mdi-social-share"></i></div>
<div id="btnDrawPoly" class="btn btn-primary btnMenu btn-floating btn-large waves-effect waves-light teal"><i class="mdi-device-signal-cellular-null"></i></div>
<div id="btnDelete" class="btn btn-primary btnMenu btn-floating btn-large waves-effect waves-light teal"><i class="mdi-action-delete"></i></div>
<div id="btnZoomIn" class="btn btn-primary btn-floating btn-large waves-effect waves-light teal"><i class="mdi-content-add"></i></div>
<div id="btnZoomOut" class="btn btn-primary btn-floating btn-large waves-effect waves-light teal"><i class="mdi-content-remove"></i></div>
{% endblock %}

{% block jsfooter %}

    {{ javascript_include("/js/app/area/wfs-t.js") }}


{% endblock %}

