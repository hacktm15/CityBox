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
<!--div id="btnSelect" class="btn btn-primary btnMenu btn-floating btn-large waves-effect waves-light teal"><i class="mdi-action-speaker-notes"></i>Select</div-->
<!--div id="btnEdit" class="btn btn-primary btnMenu btn-floating btn-large waves-effect waves-light teal"><i class="mdi-editor-mode-edit"></i>Edit</div-->
<!--div id="btnDrawPoint" class="btn btn-primary btnMenu btn-floating btn-large waves-effect waves-light teal"><i class="mdi-maps-place"></i>Draw point</div-->
<!--div id="btnDrawLine" class="btn btn-primary btnMenu btn-floating btn-large waves-effect waves-light teal"><i class="mdi-social-share"></i>Draw line</div-->
<div id="btnDrawPoly" class="btn btn-primary btnMenu btn-floating btn-large waves-effect waves-light teal"><i class="mdi-device-signal-cellular-null"></i>Draw poly</div>
<div id="btnDelete" class="btn btn-primary btnMenu btn-floating btn-large waves-effect waves-light teal"><i class="mdi-action-delete"></i>Delete</div>
<div id="btnZoomIn" class="btn btn-primary btn-floating btn-large waves-effect waves-light teal"><i class="mdi-content-add"></i>Add</div>
<div id="btnZoomOut" class="btn btn-primary btn-floating btn-large waves-effect waves-light teal"><i class="mdi-content-remove"></i>Remove</div>
{% endblock %}

{% block jsfooter %}

    {{ javascript_include("/js/app/area/wfs-t.js") }}


{% endblock %}

