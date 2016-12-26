<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="devoops" />
<title>Welcome to Blocks</title>
</head>
<body>
	<!--Start Breadcrumb-->
	<div class="row">
		<div id="breadcrumb" class="col-xs-12">
			<ol class="breadcrumb">
				<li><a href="#"><g:message code="default.dashboard.label" default="Dashboard" /></a></li>
			</ol>
		</div>
	</div>
	<!--End Breadcrumb-->
	<!--Start Dashboard 1-->
	<div id="dashboard-header" class="row">
		<div class="col-xs-10 col-sm-2">
			<h3><g:message code="kpis" default="KPI's" /></h3>
		</div>
		<div class="col-xs-2 col-sm-1 col-sm-offset-1">
			<div id="social" class="row">
				<a href="#"><i class="fa fa-google-plus"></i></a> <a href="#"><i
					class="fa fa-facebook"></i></a> <a href="#"><i
					class="fa fa-twitter"></i></a> <a href="#"><i
					class="fa fa-linkedin"></i></a> <a href="#"><i
					class="fa fa-youtube"></i></a>
			</div>
		</div>
		<div class="clearfix visible-xs"></div>
		<div class="col-xs-12 col-sm-8 col-md-7 pull-right">
			<div class="row">
				<div class="col-xs-4">
					<div class="sparkline-dashboard" id="sparkline-1"><span class="inlinebar">1,3,4,5,3,5</span></div>
					<div class="sparkline-dashboard-info">
						<i class="fa fa-usd"></i>756.45M <span class="txt-primary">EBITDA</span>
					</div>
				</div>
				<div class="col-xs-4">
					<p>
						<span class="txt-primary">SOME</span><span class="inlinebar">1,3,4,5,3,5</span>
					</p>
				</div>
				<div class="col-xs-4">
					<div class="sparkline-dashboard" id="sparkline-3"></div>
					<div class="sparkline-dashboard-info">
						<span class="inlinesparkline">1,3,4,5,3,5</span> <i class="fa fa-usd"></i>107.83M
						<span>REVENUE</span>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--End Dashboard 1-->
	<!--Start Dashboard 2-->
	<div class="row-fluid">
		<div id="dashboard_links" class="col-xs-12 col-sm-2 pull-right">
			<ul class="nav nav-pills nav-stacked">
				<li class="active"><a href="#" class="tab-link" id="overview">
					<g:message code="warehouse" default="Warehouse" /></a></li>
				<li><a href="#" class="tab-link" id="clients">
					<g:message code="deliveries" default="Deliveries" /></a></li>
				<li><a href="#" class="tab-link" id="graph">
					<g:message code="issues" default="Issues" /></a></li>
				<li><a href="#" class="tab-link" id="servers">
					<g:message code="production" default="Production" /></a></li>
			</ul>
		</div>
		<div id="dashboard_tabs" class="col-xs-12 col-sm-10">
			<!--Start Dashboard Tab 1-->
			<div id="dashboard-overview" class="row"
				style="visibility: visible; position: relative;">
				<div id="ow-marketplace" class="col-sm-12 col-md-6">
					<div id="ow-setting">
						<a href="#"><i class="fa fa-folder-open"></i></a> <a href="#"><i
							class="fa fa-credit-card"></i></a> <a href="#"><i
							class="fa fa-ticket"></i></a> <a href="#"><i
							class="fa fa-bookmark-o"></i></a> <a href="#"><i
							class="fa fa-globe"></i></a>
					</div>
					<h4 class="page-header">Wartość Magazynu</h4>
					<table id="ticker-table"
						class="table m-table table-bordered table-hover table-heading">
						<thead>
							<tr>
								<th>Category</th>
								<th>Value</th>
								<th>Chan<ge/th>
								<th>Monthly</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="m-ticker"><b>Cat 1</b><span>Kategoria pierwsza</span></td>
								<td class="m-price">33.27</td>
								<td class="m-change"><i class="fa fa-angle-up"></i> 1.45
									(27&#37;)</td>
								<td class="td-graph"><span class="inlinesparkline">7,7,9,9,3,7,8,7,9</span></td>
							</tr>
							<tr>
								<td class="m-ticker"><b>Cat 2</b><span>Kategoria druga</span></td>
								<td class="m-price">45.13</td>
								<td class="m-change"><i class="fa fa-angle-up"></i> 6.32
									(12&#37;)</td>
								<td class="td-graph"><span class="inlinesparkline">7,1,4,5,3,5,8,1,5</span></td>
							</tr>
							<tr>
								<td class="m-ticker"><b>Cat 3</b><span>Kategoria trzecia</span></td>
								<td class="m-price">71.13</td>
								<td class="m-change"><i class="fa fa-angle-down"></i> 7.2
									(12&#37;)</td>
								<td class="td-graph"><span class="inlinesparkline">1,3,4,5,3,5,8,9,5</span></td>
							</tr>
							<tr>
								<td class="m-ticker"><b>Cat 4</b><span>Kategoria czwarta</span></td>
								<td class="m-price">30.24</td>
								<td class="m-change"><i class="fa fa-angle-up"></i> 5.3
									(18&#37;)</td>
								<td class="td-graph"><span class="inlinesparkline">9,9,8,9,1,7,8,7,9</span></td>
							</tr>
							<tr>
								<td class="m-ticker"><b>Cat 5</b><span>Kategoria piąta</span></td>
								<td class="m-price">51.1</td>
								<td class="m-change"><i class="fa fa-angle-up"></i> 7.5
									(3.5&#37;)</td>
								<td class="td-graph"><span class="inlinesparkline">0,0,3,1,1,7,9,7,9</span></td>
							</tr>
							<tr>
								<td class="m-ticker"><b>KAT 6</b><span>Kategoria szósta</span></td>
								<td class="m-price">123.12</td>
								<td class="m-change"><i class="fa fa-angle-down"></i> 54.3
									(15.3&#37;)</td>
								<td class="td-graph"><span class="inlinesparkline">3,3,8,9,8,7,8,4,3</span></td>
							</tr>
							<tr>
								<td class="m-ticker"><b>Cat 7</b><span>Kategoria siódma</span></td>
								<td class="m-price">64.14</td>
								<td class="m-change"><i class="fa fa-angle-up"></i> 12.33
									(0.3&#37;)</td>
								<td class="td-graph"><span class="inlinesparkline">3,3,1,1,1,4,5,5,6</span></td>
							</tr>
							<tr>
								<td class="m-ticker"><b>Cat 8</b><span>Kategoria ósma</span></td>
								<td class="m-price">64.14</td>
								<td class="m-change"><i class="fa fa-angle-up"></i> 12.33
									(0.3&#37;)</td>
								<td class="td-graph"><span class="inlinesparkline">5,5,5,5,5,5,6,6,6</span></td>
							</tr>
							<tr>
								<td class="m-ticker"><b>KAT 9</b><span>Kategoria dziewiąta</span></td>
								<td class="m-price">64.14</td>
								<td class="m-change"><i class="fa fa-angle-up"></i> 12.33
									(0.3&#37;)</td>
								<td class="td-graph"><span class="inlinesparkline">7,2,2,3,2,7,7,7,9</span></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="col-xs-12 col-md-6">
					<div id="ow-donut" class="row">
						<div class="col-xs-4">
							<div id="morris_donut_1" style="width: 120px; height: 120px;"></div>
						</div>
						<div class="col-xs-4">
							<div id="morris_donut_2" style="width: 120px; height: 120px;"></div>
						</div>
						<div class="col-xs-4">
							<div id="morris_donut_3" style="width: 120px; height: 120px;"></div>
						</div>
					</div>
					<div id="ow-activity" class="row">
						<div class="col-xs-2 col-sm-1 col-md-2">
							<div class="v-txt">ACTIVITY</div>
						</div>
						<div class="col-xs-7 col-sm-5 col-md-6">
							<div class="row">
								<i class="fa fa-code"></i> Release published <span
									class="label label-default pull-right">01:17:34</span>
							</div>
							<div class="row">
								<i class="fa fa-cloud-upload"></i> Backup created <span
									class="label label-default pull-right">03:23:34</span>
							</div>
							<div class="row">
								<i class="fa fa-camera"></i> Snapshot created <span
									class="label label-default pull-right">04:22:11</span>
							</div>
							<div class="row">
								<i class="fa fa fa-money"></i> Invoice pay <span
									class="label label-default pull-right">05:11:51</span>
							</div>
							<div class="row">
								<i class="fa fa-briefcase"></i> Project edited <span
									class="label label-default pull-right">04:52:23</span>
							</div>
							<div class="row">
								<i class="fa fa-floppy-o"></i> Project saved <span
									class="label label-default pull-right">07:11:01</span>
							</div>
							<div class="row">
								<i class="fa fa-bug"></i> Bug fixed <span
									class="label label-default pull-right">09:10:31</span>
							</div>
						</div>
						<div id="ow-stat" class="col-xs-3 col-sm-4 col-md-4 pull-right">
							<div class="row">
								<small><b>Ow Stat.:</b></small>
							</div>
							<div class="row">
								&#37;user <sup>20,43</sup>
							</div>
							<div class="row">
								&#37;nice <sup>1,01</sup>
							</div>
							<div class="row">
								&#37;system <sup>27,34</sup>
							</div>
							<div class="row">
								&#37;iowait <sup>2,02</sup>
							</div>
							<div class="row">
								&#37;steal <sup>1,22</sup>
							</div>
							<div class="row">
								&#37;idle <sup>47,98</sup>
							</div>
							<div class="row">
								tps <sup>296546</sup>
							</div>
						</div>
					</div>
					<div id="ow-summary" class="row">
						<div class="col-xs-12">
							<h4 class="page-header">&Sigma; <g:message code="summary" default="Summary" /> </h4>
							<div class="row">
								<div class="col-xs-12">
									<div class="row">
										<div class="col-xs-6">
											Group A<b>1245634</b>
										</div>
										<div class="col-xs-6">
											Group X<b>227</b>
										</div>
									</div>
									<div class="row">
										<div class="col-xs-6">
											Group B<b>5222345</b>
										</div>
										<div class="col-xs-6">
											Group Y<b>324322</b>
										</div>
									</div>
									<div class="row">
										<div class="col-xs-6">
											Group C<b>52145</b>
										</div>
										<div class="col-xs-6">
											Group Z<b>288</b>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--End Dashboard Tab 1-->
			<!--Start Dashboard Tab 2-->
			<div id="dashboard-clients" class="row"
				style="visibility: hidden; position: absolute;">
				<div class="row one-list-message">
					<div class="col-xs-1">
						<i class="fa fa-users"></i>
					</div>
					<div class="col-xs-2">
						<b>Country</b>
					</div>
					<div class="col-xs-2">Visitors</div>
					<div class="col-xs-2">Page hits</div>
					<div class="col-xs-2">Revenue</div>
					<div class="col-xs-1">Activity</div>
					<div class="col-xs-2">Date</div>
				</div>
				<div class="row one-list-message">
					<div class="col-xs-1">
						<i class="fa fa-user"></i>
					</div>
					<div class="col-xs-2">
						<b>USA</b>
					</div>
					<div class="col-xs-2">109455</div>
					<div class="col-xs-2">54322344</div>
					<div class="col-xs-2">
						<i class="fa fa-usd"></i> 354563
					</div>
					<div class="col-xs-1">
						<span class="bar"></span>
					</div>
					<div class="col-xs-2 message-date">12/31/13</div>
				</div>
				<div class="row one-list-message">
					<div class="col-xs-1">
						<i class="fa fa-user"></i>
					</div>
					<div class="col-xs-2">
						<b>U.K.</b>
					</div>
					<div class="col-xs-2">86549</div>
					<div class="col-xs-2">43242344</div>
					<div class="col-xs-2">
						<i class="fa fa-usd"></i> 265563
					</div>
					<div class="col-xs-1">
						<span class="bar"></span>
					</div>
					<div class="col-xs-2 message-date">12/25/13</div>
				</div>
				<div class="row one-list-message">
					<div class="col-xs-1">
						<i class="fa fa-user"></i>
					</div>
					<div class="col-xs-2">
						<b>FRANCE</b>
					</div>
					<div class="col-xs-2">79399</div>
					<div class="col-xs-2">45376844</div>
					<div class="col-xs-2">
						<i class="fa fa-usd"></i> 309456
					</div>
					<div class="col-xs-1">
						<span class="bar"></span>
					</div>
					<div class="col-xs-2 message-date">12/30/13</div>
				</div>
				<div class="row one-list-message">
					<div class="col-xs-1">
						<i class="fa fa-user"></i>
					</div>
					<div class="col-xs-2">
						<b>GERMANY</b>
					</div>
					<div class="col-xs-2">94567</div>
					<div class="col-xs-2">35322344</div>
					<div class="col-xs-2">
						<i class="fa fa-usd"></i> 301040
					</div>
					<div class="col-xs-1">
						<span class="bar"></span>
					</div>
					<div class="col-xs-2 message-date">12/26/13</div>
				</div>
				<div class="row one-list-message">
					<div class="col-xs-1">
						<i class="fa fa-user"></i>
					</div>
					<div class="col-xs-2">
						<b>CANADA</b>
					</div>
					<div class="col-xs-2">89525</div>
					<div class="col-xs-2">1342344</div>
					<div class="col-xs-2">
						<i class="fa fa-usd"></i> 298764
					</div>
					<div class="col-xs-1">
						<span class="bar"></span>
					</div>
					<div class="col-xs-2 message-date">12/30/13</div>
				</div>
				<div class="row one-list-message">
					<div class="col-xs-1">
						<i class="fa fa-user"></i>
					</div>
					<div class="col-xs-2">
						<b>CHINA</b>
					</div>
					<div class="col-xs-2">120865</div>
					<div class="col-xs-2">43522344</div>
					<div class="col-xs-2">
						<i class="fa fa-usd"></i> 776563
					</div>
					<div class="col-xs-1">
						<span class="bar"></span>
					</div>
					<div class="col-xs-2 message-date">12/29/13</div>
				</div>
			</div>
			<!--End Dashboard Tab 2-->
			<!--Start Dashboard Tab 3-->
			<div id="dashboard-graph" class="row"
				style="width: 100%; visibility: hidden; position: absolute;">
				<div class="col-xs-12">
					<h4 class="page-header">OS Platform Statistics</h4>
					<div id="stat-graph" style="height: 300px;"></div>
				</div>
			</div>
			<!--End Dashboard Tab 3-->
			<!--Start Dashboard Tab 4-->
			<div id="dashboard-servers" class="row"
				style="visibility: hidden; position: absolute;">
				<div class="col-xs-12 col-sm-6 col-md-4 ow-server">
					<h4 class="page-header text-right">
						<i class="fa fa-windows"></i>#SRV-APP
					</h4>
					<small>Application server</small>
					<div class="ow-settings">
						<a href="#"><i class="fa fa-gears"></i></a>
					</div>
					<div class="row ow-server-bottom">
						<div class="col-sm-4">
							<div class="knob-slider">
								<input id="knob-srv-1" class="knob" data-width="60"
									data-height="60" data-angleOffset="180" data-fgColor="#6AA6D6"
									data-skin="tron" data-thickness=".2" value="">CPU Load
							</div>
						</div>
						<div class="col-sm-8">
							<div class="row">
								<i class="fa fa-windows"></i> Windows 2008
							</div>
							<div class="row">
								<i class="fa fa-user"></i> Active users - 49
							</div>
							<div class="row">
								<i class="fa fa-bolt"></i> Uptime - 10 days
							</div>
						</div>
					</div>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-4 ow-server">
					<h4 class="page-header text-right">
						<i class="fa fa-windows"></i>#DB-MASTER
					</h4>
					<small>SQL server</small>
					<div class="ow-settings">
						<a href="#"><i class="fa fa-gears"></i></a>
					</div>
					<div class="row ow-server-bottom">
						<div class="col-sm-4">
							<div class="knob-slider">
								<input id="knob-srv-2" class="knob" data-width="60"
									data-height="60" data-angleOffset="180" data-fgColor="#6AA6D6"
									data-skin="tron" data-thickness=".2" value="">CPU Load
							</div>
						</div>
						<div class="col-sm-8">
							<div class="row">
								<i class="fa fa-windows"></i> Windows 2013
							</div>
							<div class="row">
								<i class="fa fa-user"></i> Active users - 39
							</div>
							<div class="row">
								<i class="fa fa-bolt"></i> Uptime - 2 month 1 day
							</div>
						</div>
					</div>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-4 ow-server">
					<h4 class="page-header text-right">
						<i class="fa fa-linux"></i>#DB-WEB
					</h4>
					<small>MySQL server</small>
					<div class="ow-settings">
						<a href="#"><i class="fa fa-gears"></i></a>
					</div>
					<div class="row ow-server-bottom">
						<div class="col-sm-4">
							<div class="knob-slider">
								<input id="knob-srv-3" class="knob" data-width="60"
									data-height="60" data-angleOffset="180" data-fgColor="#6AA6D6"
									data-skin="tron" data-thickness=".2" value="">CPU Load
							</div>
						</div>
						<div class="col-sm-8">
							<div class="row">
								<i class="fa fa-linux"></i> CentOS 6.5
							</div>
							<div class="row">
								<i class="fa fa-user"></i> Active users - 298
							</div>
							<div class="row">
								<i class="fa fa-bolt"></i> Uptime - 9 month 17 day
							</div>
						</div>
					</div>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-4 ow-server">
					<h4 class="page-header text-right">
						<i class="fa fa-linux"></i>#WWW-SRV
					</h4>
					<small>Web-server</small>
					<div class="ow-settings">
						<a href="#"><i class="fa fa-gears"></i></a>
					</div>
					<div class="row ow-server-bottom">
						<div class="col-sm-4">
							<div class="knob-slider">
								<input id="knob-srv-4" class="knob" data-width="60"
									data-height="60" data-angleOffset="180" data-fgColor="#6AA6D6"
									data-skin="tron" data-thickness=".2" value="">CPU Load
							</div>
						</div>
						<div class="col-sm-8">
							<div class="row">
								<i class="fa fa-linux"></i> Centos 6.5
							</div>
							<div class="row">
								<i class="fa fa-user"></i> Active users - 1989
							</div>
							<div class="row">
								<i class="fa fa-bolt"></i> Uptime - 2 years 3 month
							</div>
						</div>
					</div>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-4 ow-server">
					<h4 class="page-header text-right">
						<i class="fa fa-linux"></i>#PHONE-OFFICE
					</h4>
					<small>Asterisk</small>
					<div class="ow-settings">
						<a href="#"><i class="fa fa-gears"></i></a>
					</div>
					<div class="row ow-server-bottom">
						<div class="col-sm-4">
							<div class="knob-slider">
								<input id="knob-srv-5" class="knob" data-width="60"
									data-height="60" data-angleOffset="180" data-fgColor="#6AA6D6"
									data-skin="tron" data-thickness=".2" value="">CPU Load
							</div>
						</div>
						<div class="col-sm-8">
							<div class="row">
								<i class="fa fa-linux"></i> Debian 6.4
							</div>
							<div class="row">
								<i class="fa fa-phone"></i> Active calls - 86
							</div>
							<div class="row">
								<i class="fa fa-bolt"></i> Uptime - 3 month 19 day
							</div>
						</div>
					</div>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-4 ow-server">
					<h4 class="page-header text-right">
						<i class="fa fa-linux"></i>#DEVEL
					</h4>
					<small>DEV server</small>
					<div class="ow-settings">
						<a href="#"><i class="fa fa-gears"></i></a>
					</div>
					<div class="row ow-server-bottom">
						<div class="col-sm-4">
							<div class="knob-slider">
								<input id="knob-srv-6" class="knob" data-width="60"
									data-height="60" data-angleOffset="180" data-fgColor="#6AA6D6"
									data-skin="tron" data-thickness=".2" value="">CPU Load
							</div>
						</div>
						<div class="col-sm-8">
							<div class="row">
								<i class="fa fa-linux"></i> CentOS 6.5
							</div>
							<div class="row">
								<i class="fa fa-archive"></i> Repositories - 17
							</div>
							<div class="row">
								<i class="fa fa-bolt"></i> Uptime - 4 month 21 day
							</div>
						</div>
					</div>
				</div>
				<div class="clearfix"></div>
				<div id="ow-server-footer">
					<a href="#" class="col-xs-4 col-sm-2 btn-default text-center"><i
						class="fa fa-sun-o"></i> <b>287</b> <span>Hosts</span></a> <a href="#"
						class="col-xs-4 col-sm-2 btn-default text-center"><i
						class="fa fa-envelope-o"></i> <b>56</b> <span>Messages</span></a> <a
						href="#" class="col-xs-4 col-sm-2 btn-default text-center"><i
						class="fa fa-desktop"></i> <b>85</b> <span>Stations</span></a> <a
						href="#" class="col-xs-4 col-sm-2 btn-default text-center"><i
						class="fa fa-info-circle"></i> <b>33</b> <span>Errors</span></a> <a
						href="#" class="col-xs-4 col-sm-2 btn-default text-center"><i
						class="fa fa-comments-o"></i> <b>1386</b> <span>Comments</span></a> <a
						href="#" class="col-xs-4 col-sm-2 btn-default text-center"><i
						class="fa fa-user"></i> <b>19985</b> <span>Clients</span></a>
				</div>
			</div>
			<!--End Dashboard Tab 4-->
		</div>
		<div class="clearfix"></div>
	</div>
	<!--End Dashboard 2 -->
	<div style="height: 40px;"></div>
	<script type="text/javascript">
		/* <![CDATA[ */
		$(function() {
			/** This code runs when everything has been loaded on the page */
			/* Inline sparklines take their values from the contents of the tag */
			//alert("Hello! I am an alert box!!");
			$('.inlinesparkline').sparkline('html', {defaultPixelsPerValue: 10, minSpotColor: null, maxSpotColor: null, spotColor: null,
			fillColor: false, lineWidth: 2, lineColor: '#5A8DB6'});
			//{defaultPixelsPerValue: 10, minSpotColor: null, maxSpotColor: null, spotColor: null,
			//fillColor: false, lineWidth: 2, lineColor: '#5A8DB6'}

			/* Sparklines can also take their values from the first argument passed to the sparkline() function */
			//var myvalues = [ 10, 8, 5, 7, 4, 4, 1 ];
			//$('.dynamicsparkline').sparkline(myvalues);

			/* Use 'html' instead of an array of values to pass options to a sparkline with data in the tag */
			$('.inlinebar').sparkline('html', {
				type : 'bar',
				barColor : 'red'});
			DashboardTabChecker();
			//DrawSparklineDashboard();
			$("#ticker-table").beautyHover();

		});
		/* ]]> */
	</script>
</body>
</html>