<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>getFestivalBandTest</title>

<!-- Angular Javascript File -->
<script type="text/javascript" src="resource/js/angular_v1.6.0.js"></script>
<script type="text/javascript" src="resource/js/ang_http_get_data.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/angular-filter/0.4.7/angular-filter.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/lodash.js/4.17.5/lodash.min.js"></script>

<!-- Bootstrap Css -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet" href="resource/css/planets.css">
</head>
<body>

	<div ng-app="app" ng-controller="ctrl" ng-init="getData()">
		<h3 id="header_msg" class="text-warning">Demo for EA Music
			Festival test</h3>
		<div>&nbsp;</div>

		<table id="festTable" class="table">
			<thead>
				<tr>
					<th scope="col">Name</th>
					<th scope="col">Record Label</th>
					<th scope="col">Band Name</th>
			    </tr>
			</thead>
			<tbody>
				<tr ng-repeat="row in json_data | orderBy:'name'"
					ng-class="rollClass" ng-mouseenter="rollClass = 'highlight'"
					ng-mouseleave="rollClass = ''">
					<td>{{ row.name }}</td>
					
					<td>
						<div ng-repeat="val in row.bands | orderBy:'recordLabel'">
							{{val.recordLabel}}</div>
					</td>
					<td>
						<div ng-repeat="val in row.bands | orderBy:'name'">
							{{val.name}}</div>
					</td>
				</tr>

			</tbody>
		</table>
		
		<!-- Error Message -->
		<div id="showError" ng-show="state">
			<span id="failureMsg" class="text-danger">Error in retrieving
				data!</span>
		</div>
	</div>
	</div>
</body>
</html>