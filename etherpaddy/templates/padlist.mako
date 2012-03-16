<%inherit file="base.mako"></%inherit>
<%block name='content'>
<table class="table table-striped">
% for i, pad in enumerate(pads):
    <tr><td>i</td>
     <td>${pad.get_name()}</td>
     <td>
     <div class="btn-group">
     <a class="btn" href="${request.route_path('pad', padid=pad.get_name())}">Edit</a>
     <a class="btn" href="#delpad" onclick="deletePad('${pad.get_name()}');return false;">Delete</a>
     </div>
     </td>
     </tr
% endfor
</table>
<div id='container'></div>
</%block>
