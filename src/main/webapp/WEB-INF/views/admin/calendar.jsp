<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <script src="${templetDir}/assets/plugins/selectivizr/selectivizr-min.js"></script>
    <script src="${templetDir}/assets/plugins/flot/excanvas.min.js"></script>
<![endif]-->

<!-- Le fav and touch icons -->
<link rel="shortcut icon" href="${templetDir}/assets/ico/favicon.ico">
<link rel="apple-touch-icon-precomposed" sizes="144x144" href="${templetDir}/assets/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="${templetDir}/assets/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="${templetDir}/assets/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed" href="${templetDir}/assets/ico/apple-touch-icon-57-precomposed.png">
</head>

    <div class="row-fluid page-head">
        <h2><i class="aweso-icon-table"></i> Agenda <small>simple data dump</small></h2>
        <div class="page-bar">
            <div class="btn-toolbar"> </div>
        </div>
    </div>
    <!-- // page head -->
    
    <div id="page-content" class="page-content">
        <section>
            <div class="page-header">
                <h3><i class="fontello-icon-calendar opaci35"></i> FullCalendar Base <small>in widget-nice</small></h3>
            </div>
            <div class="row-fluid">
                <div class="span8">
                    <div id="calendarDemo" class="widget widget-simple header-black fc-striped"> </div>
                </div>
                <div class="span4">
                    <div id="external-events" class="well well-nice">
                        <h4 class="simple-header"> <a id="btnNewEvent" class="btn btn-small btn-yellow fontello-icon-plus-1 pull-right" href="#newEvent" data-toggle="modal">Add Event</a> Corporate Events <small>Draggable</small> </h4>
                        <div style="position: relative;" class="external-event ui-draggable corporate conferences">Conferences</div>
                        <div style="position: relative;" class="external-event ui-draggable corporate seminars">Seminars</div>
                        <div style="position: relative;" class="external-event ui-draggable corporate meetings">Meetings</div>
                        <div style="position: relative;" class="external-event ui-draggable corporate team-building">Team Building</div>
                        <div style="position: relative;" class="external-event ui-draggable corporate business-dinners">Business Dinners</div>
                        <div style="position: relative;" class="external-event ui-draggable corporate incentive-travel">Incentive Travel</div>
                        <div style="position: relative;" class="external-event ui-draggable corporate product-launches">Product Launches</div>
                        <div style="position: relative;" class="external-event ui-draggable corporate trade-fairs">Trade Fairs</div>
                        <div style="position: relative;" class="external-event ui-draggable corporate board-meetings">Board Meetings</div>
                        <h4 class="simple-header">Private Events Events</h4>
                        <div style="position: relative;" class="external-event ui-draggable private weddings">Weddings</div>
                        <div style="position: relative;" class="external-event ui-draggable private birthdays">Birthdays</div>
                        <div style="position: relative;" class="external-event ui-draggable private wedding-anniversaries">Wedding Anniversaries</div>
                        <div style="position: relative;" class="external-event ui-draggable private family-events">Family Events</div>
                        <div class="checkbox-wrap">
                            <label for="drop-remove">
                                <input id="drop-remove" type="checkbox" class="checkbox flow">
                                remove after drop</label>
                        </div>
                    </div>
                </div>
            </div>
            <!-- // Example row WIDGET SIMPLE CALENDAR --> 
        </section>
    </div>
    <!-- // page content --> 


<!-- Le javascript --> 
<!-- Placed at the end of the document so the pages load faster --> 
<script src="${templetDir}/assets/js/lib/jquery.js"></script> 
<script src="${templetDir}/assets/js/lib/jquery-ui.js"></script>
<script src="${templetDir}/assets/js/lib/jquery.cookie.js"></script> 
<script src="${templetDir}/assets/js/lib/jquery.mousewheel.js"></script> 
<script src="${templetDir}/assets/js/lib/jquery.load-image.min.js"></script>
<script src="${templetDir}/assets/js/lib/bootstrap/bootstrap.js"></script> 

<!-- Plugins Bootstrap -->
<script src="${templetDir}/assets/plugins/bootstrap-wysihtml5/lib/js/wysihtml5-0.3.0.min.js"></script> 
<script src="${templetDir}/assets/plugins/bootstrap-wysihtml5/src/bootstrap-wysihtml5.js"></script>
 
<script src="${templetDir}/assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script> 
<script src="${templetDir}/assets/plugins/bootstrap-timepicker/js/bootstrap-timepicker.js"></script> 
<script src="${templetDir}/assets/plugins/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js"></script>
<script src="${templetDir}/assets/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.js"></script>
<script src="${templetDir}/assets/plugins/bootstrap-daterangepicker/js/bootstrap-daterangepicker.js"></script> 
<script src="${templetDir}/assets/plugins/bootstrap-toggle-button/js/bootstrap-toggle-button.js"></script> 
<script src="${templetDir}/assets/plugins/bootstrap-fileupload/js/bootstrap-fileupload.js"></script> 
<script src="${templetDir}/assets/plugins/bootstrap-rowlink/js/bootstrap-rowlink.js"></script> 
<script src="${templetDir}/assets/plugins/bootstrap-progressbar/js/bootstrap-progressbar.js"></script> 
<script src="${templetDir}/assets/plugins/bootstrap-select/bootstrap-select.js"></script> 
<script src="${templetDir}/assets/plugins/bootstrap-multiselect/js/bootstrap-multiselect.js"></script> 
<script src="${templetDir}/assets/plugins/bootstrap-bootbox/bootbox.min.js"></script> 
<script src="${templetDir}/assets/plugins/bootstrap-modal/js/bootstrap-modalmanager.js"></script> 
<script src="${templetDir}/assets/plugins/bootstrap-modal/js/bootstrap-modal.js"></script> 
<script src="${templetDir}/assets/plugins/bootstrap-wizard/js/bootstrap-wizard.min.js"></script>
<script src="${templetDir}/assets/plugins/bootstrap-wizard-2/js/bwizard-only.min.js"></script>
<script src="${templetDir}/assets/plugins/bootstrap-image-gallery/js/bootstrap-image-gallery.min.js"></script>
 

<!-- Plugins Custom - Only example --> 
<script src="${templetDir}/assets/plugins/pl-extension/google-code-prettify/prettify.js"></script>

<!-- Plugins Custom - System --> 
<script src="${templetDir}/assets/plugins/pl-system/nicescroll/jquery.nicescroll.min.js"></script> 
<script src="${templetDir}/assets/plugins/pl-system/xbreadcrumbs/xbreadcrumbs.js"></script> 

<!-- Plugins Custom - System info -->
<script src="${templetDir}/assets/plugins/pl-system-info/qtip2/dist/jquery.qtip.min.js"></script> 
<script src="${templetDir}/assets/plugins/pl-system-info/gritter/js/jquery.gritter.min.js"></script> 
<script src="${templetDir}/assets/plugins/pl-system-info/notyfy/jquery.notyfy.js"></script>

<!-- Plugins Custom - Content -->
<script src="${templetDir}/assets/plugins/pl-content/list/js/list.min.js"></script> 
<script src="${templetDir}/assets/plugins/pl-content/list/plugins/list.paging.min.js"></script>
<script src="${templetDir}/assets/plugins/pl-content/jpages/js/jPages.js"></script> 

<!-- Plugins Custom - Component -->
<script src="${templetDir}/assets/plugins/pl-component/fullcalendar/fullcalendar.min.js"></script> 
<script src="${templetDir}/assets/plugins/pl-component/rangeslider/jqallrangesliders.min.js"></script>

<!-- Plugins Custom - Form -->
<script src="${templetDir}/assets/plugins/pl-form/uniform/jquery.uniform.min.js"></script> 
<script src="${templetDir}/assets/plugins/pl-form/select2/select2.min.js"></script>
<script src="${templetDir}/assets/plugins/pl-form/counter/jquery.counter.js"></script> 
<script src="${templetDir}/assets/plugins/pl-form/elastic/jquery.elastic.js"></script> 
<script src="${templetDir}/assets/plugins/pl-form/inputmask/jquery.inputmask.js"></script> 
<script src="${templetDir}/assets/plugins/pl-form/inputmask/jquery.inputmask.extensions.js"></script> 
<script src="${templetDir}/assets/plugins/pl-form/validate/js/jquery.validate.min.js"></script> 
<script src="${templetDir}/assets/plugins/pl-form/duallistbox/jquery.duallistbox.min.js"></script>

<!-- Plugins Custom - Gallery --> 
<script src="${templetDir}/assets/plugins/pl-gallery/nailthumb/jquery.nailthumb.1.1.min.js"></script> 
<script src="${templetDir}/assets/plugins/pl-gallery/nailthumb/showLoading/js/jquery.showLoading.min.js"></script>
<script src="${templetDir}/assets/plugins/pl-gallery/wookmark/jquery.imagesloaded.js"></script>
<script src="${templetDir}/assets/plugins/pl-gallery/wookmark/jquery.wookmark.min.js"></script>
 
<!-- Plugins Tables --> 
<script src="${templetDir}/assets/plugins/pl-table/datatables/media/js/jquery.dataTables.js"></script> 
<script src="${templetDir}/assets/plugins/pl-table/datatables/plugin/jquery.dataTables.plugins.js"></script> 
<script src="${templetDir}/assets/plugins/pl-table/datatables/plugin/jquery.dataTables.columnFilter.js"></script> 

<!-- Plugins data visualization --> 
<script src="${templetDir}/assets/plugins/pl-visualization/sparkline/jquery.sparkline.min.js"></script> 
<script src="${templetDir}/assets/plugins/pl-visualization/easy-pie-chart/easy-pie-chart.js"></script> 
<script src="${templetDir}/assets/plugins/pl-visualization/percentageloader/percentageloader.min.js"></script>
<script src="${templetDir}/assets/plugins/pl-visualization/knob/knob.js"></script> 
<script src="${templetDir}/assets/plugins/pl-visualization/flot/jquery.flot.js"></script> 
<script src="${templetDir}/assets/plugins/pl-visualization/flot/jquery.flot.categories.js"></script> 
<script src="${templetDir}/assets/plugins/pl-visualization/flot/jquery.flot.grow.js"></script> 
<script src="${templetDir}/assets/plugins/pl-visualization/flot/jquery.flot.orderBars.js"></script> 
<script src="${templetDir}/assets/plugins/pl-visualization/flot/jquery.flot.pie.js"></script> 
<script src="${templetDir}/assets/plugins/pl-visualization/flot/jquery.flot.resize.js"></script> 
<script src="${templetDir}/assets/plugins/pl-visualization/flot/jquery.flot.selection.js"></script> 
<script src="${templetDir}/assets/plugins/pl-visualization/flot/jquery.flot.stack.js"></script> 
<script src="${templetDir}/assets/plugins/pl-visualization/flot/jquery.flot.stackpercent.js"></script> 
<script src="${templetDir}/assets/plugins/pl-visualization/flot/jquery.flot.time.js"></script> 


<!-- Only This Demo Page --> 
<script src="${templetDir}/assets/js/demo/demo-fullcalendar.js"></script> 

