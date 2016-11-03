<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!--<div class="filler"></div>
<div class="row-fluid page-head">
    <h2 class="page-title heading-icon" data-icon="&#xe397;" aria-hidden="true">Boo Tables <small>more style for table </small></h2>
    <div class="page-bar">
        <div class="btn-toolbar"></div>
    </div>
</div>-->
<!-- // page head -->

<div id="page-content" class="page-content">
    
    <section>
        <div class="page-header">
            <h3 class="heading-icon" data-icon="&#xe397;" aria-hidden="true">用户 管理<small></small></h3>
        </div>
        <!-- // page-header -->
        <div class="row-fluid">
            <div class="well well-small well-nice">
                <table class="table table-content table-hover">
                    <caption>
                        用户列表<span>well-small</span>
                    </caption>
                    <thead>
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col">用户名</th>
                            <th scope="col" class="hidden-phone">昵称</th>
                            <th scope="col" class="hidden-tablet hidden-phone">姓名</th>
                            <th scope="col">电话</th>
                            <th scope="col">生日</th>
                            <th scope="col">状态</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>Colin Nixon</td>
                            <td class="hidden-phone">Long Beach</td>
                            <td class="hidden-tablet hidden-phone">semper@diamSeddiam.edu</td>
                            <td>02/10/1986</td>
                            <td>02/10/1986</td>
                            <td>02/10/1986</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>Naida Bennett</td>
                            <td class="hidden-phone">Lockport</td>
                            <td class="hidden-tablet hidden-phone">commodo@conseque.ca</td>
                            <td>04/21/1959</td>
                            <td>02/10/1986</td>
                            <td>02/10/1986</td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>Danielle Myers</td>
                            <td class="hidden-phone">Bentonville</td>
                            <td class="hidden-tablet hidden-phone">nunc.sed@liberoInteger.ca</td>
                            <td>12/11/1971</td>
                            <td>02/10/1986</td>
                            <td>02/10/1986</td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>Whitney Jones</td>
                            <td class="hidden-phone">Troy</td>
                            <td class="hidden-tablet hidden-phone">Nunc@sedliberoProin.edu</td>
                            <td>08/09/1976</td>
                            <td>02/10/1986</td>
                            <td>02/10/1986</td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <!-- // Default table in well -->
            <div class="clearfix margin-xx">
                <!-- // only demo separator -->
            </div>
            <div class="well well-small well-nice">
                <table class="table boo-table table-striped table-content table-hover bg-blue-light">
                    <caption>
                        Boo table in well <span>well-small and backgroud</span>
                    </caption>
                    <thead>
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col">Name</th>
                            <th scope="col" class="hidden-phone">City</th>
                            <th scope="col" class="hidden-tablet hidden-phone">Email</th>
                            <th scope="col">Date of birth</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>Colin Nixon</td>
                            <td class="hidden-phone">Long Beach</td>
                            <td class="hidden-tablet hidden-phone">semper@diamSeddiam.edu</td>
                            <td>02/10/1986</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>Naida Bennett</td>
                            <td class="hidden-phone">Lockport</td>
                            <td class="hidden-tablet hidden-phone">commodo@conseque.ca</td>
                            <td>04/21/1959</td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>Danielle Myers</td>
                            <td class="hidden-phone">Bentonville</td>
                            <td class="hidden-tablet hidden-phone">nunc.sed@liberoInteger.ca</td>
                            <td>12/11/1971</td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>Whitney Jones</td>
                            <td class="hidden-phone">Troy</td>
                            <td class="hidden-tablet hidden-phone">Nunc@sedliberoProin.edu</td>
                            <td>08/09/1976</td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <!-- // Boo table in well -->
            <div class="clearfix margin-xx">
                <!-- // only demo separator -->
            </div>
            <div class="well well-small well-black">
                <table class="table boo-table table-striped table-condensed table-hover table-content">
                    <colgroup>
                        <col class="col20">
                        <col class="col20">
                        <col class="col45">
                        <col class="col15">
                    </colgroup>
                    <caption>
                        Boo table in well-black <span>total</span>
                    </caption>
                    <thead>
                        <tr id="HeadersRow0">
                            <th scope="col">Order ID</th>
                            <th scope="col">Customer ID</th>
                            <th scope="col">Shipped Date</th>
                            <th scope="col">Costs</th>
                        </tr>
                    </thead>
                    <tfoot>
                        <tr id="HeadersRow0" class="total">
                            <th>Total sum</th>
                            <th></th>
                            <th></th>
                            <th class="text-right">109.82</th>
                        </tr>
                    </tfoot>
                    <tbody>
                        <tr id="DataRow0">
                            <td class="bold"><a href="table-boo.html#">10248</a></td>
                            <td>VINET</td>
                            <td>8/16/2012</td>
                            <td class="text-right">32.38</td>
                        </tr>
                        <tr id="DataRow1">
                            <td class="bold"><a href="table-boo.html#">10249</a></td>
                            <td>TOMSP</td>
                            <td>8/10/2012</td>
                            <td class="text-right">11.61</td>
                        </tr>
                        <tr id="DataRow2">
                            <td class="bold"><a href="table-boo.html#">10250</a></td>
                            <td>HANAR</td>
                            <td>8/12/2012</td>
                            <td class="text-right">65.83</td>
                        </tr>
                        <tr id="DataRow0">
                            <td class="bold"><a href="table-boo.html#">10248</a></td>
                            <td>VINET</td>
                            <td>8/16/2012</td>
                            <td class="text-right">32.38</td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <!-- // Boo table in well-black -->
            <div class="clearfix margin-xx">
                <!-- // only demo separator -->
            </div>
        </div>
        <!-- // Example row -->

        <div class="page-header">
            <h3 class="heading-icon" data-icon="&#xe397;" aria-hidden="true">table in well <small>use navbar</small></h3>
        </div>
        <!-- // page-header -->
        <div class="row-fluid">
            <div class="well well-small well-nice">
                <div class="navbar">
                    <div class="navbar-inner">
                        <h4 class="title"><i class="fontello-icon-window"></i>Boo table <small>in well-box</small></h4>
                        <ul class="nav pull-right">
                            <li><a href="table-boo.html#">Link</a></li>
                            <li class="divider-vertical"></li>
                            <li class="dropdown"><a data-toggle="dropdown" class="dropdown-toggle" href="table-boo.html#">Dropdown <b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li><a href="table-boo.html#">Action</a></li>
                                    <li><a href="table-boo.html#">Another action</a></li>
                                    <li><a href="table-boo.html#">Something else here</a></li>
                                    <li class="divider"></li>
                                    <li><a href="table-boo.html#">Separated link</a></li>
                                </ul>
                            </li>
                        </ul>
                        <!-- // nav -->
                    </div>
                </div>
                <!-- // navbar -->
                <div class="table-wrapper">
                    <table class="table boo-table table-content table-hover">
                        <thead>
                            <tr>
                                <th scope="col">ID</th>
                                <th scope="col">Name</th>
                                <th scope="col" class="hidden-phone">City</th>
                                <th scope="col" class="hidden-tablet hidden-phone">Email</th>
                                <th scope="col">Date of birth</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td>Colin Nixon</td>
                                <td class="hidden-phone">Long Beach</td>
                                <td class="hidden-tablet hidden-phone">semper@diamSeddiam.edu</td>
                                <td>02/10/1986</td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Naida Bennett</td>
                                <td class="hidden-phone">Lockport</td>
                                <td class="hidden-tablet hidden-phone">commodo@conseque.ca</td>
                                <td>04/21/1959</td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td>Danielle Myers</td>
                                <td class="hidden-phone">Bentonville</td>
                                <td class="hidden-tablet hidden-phone">nunc.sed@liberoInteger.ca</td>
                                <td>12/11/1971</td>
                            </tr>
                            <tr>
                                <td>4</td>
                                <td>Whitney Jones</td>
                                <td class="hidden-phone">Troy</td>
                                <td class="hidden-tablet hidden-phone">Nunc@sedliberoProin.edu</td>
                                <td>08/09/1976</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <!-- // table-wrapper -->

            </div>
            <!-- // Boo table in well-nice -->

        </div>
        <!-- // Example row -->

        <div class="page-header">
            <h3 class="heading-icon" data-icon="&#xe397;" aria-hidden="true">table in well <small>with navbar</small></h3>
        </div>
        <!-- // page-header -->
        <div class="row-fluid">
            <div class="well well-box well-nice">
                <div class="navbar">
                    <div class="navbar-inner">
                        <h4 class="title"><i class="fontello-icon-window"></i>Boo table <small>in well-box</small></h4>
                        <ul class="nav pull-right">
                            <li><a href="table-boo.html#">Link</a></li>
                            <li class="divider-vertical"></li>
                            <li class="dropdown"><a data-toggle="dropdown" class="dropdown-toggle" href="table-boo.html#">Dropdown <b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li><a href="table-boo.html#">Action</a></li>
                                    <li><a href="table-boo.html#">Another action</a></li>
                                    <li><a href="table-boo.html#">Something else here</a></li>
                                    <li class="divider"></li>
                                    <li><a href="table-boo.html#">Separated link</a></li>
                                </ul>
                            </li>
                        </ul>
                        <!-- // nav -->
                    </div>
                </div>
                <!-- // navbar -->
                <table class="table boo-table _table-condensed table-content table-hover">
                    <!--<caption>
                        Boo table in well-nice <span>with navbar default</span>
                        </caption> -->
                    <thead>
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col">Name</th>
                            <th scope="col" class="hidden-phone">City</th>
                            <th scope="col" class="hidden-tablet hidden-phone">Email</th>
                            <th scope="col">Date of birth</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>Colin Nixon</td>
                            <td class="hidden-phone">Long Beach</td>
                            <td class="hidden-tablet hidden-phone">semper@diamSeddiam.edu</td>
                            <td>02/10/1986</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>Naida Bennett</td>
                            <td class="hidden-phone">Lockport</td>
                            <td class="hidden-tablet hidden-phone">commodo@conseque.ca</td>
                            <td>04/21/1959</td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>Danielle Myers</td>
                            <td class="hidden-phone">Bentonville</td>
                            <td class="hidden-tablet hidden-phone">nunc.sed@liberoInteger.ca</td>
                            <td>12/11/1971</td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>Whitney Jones</td>
                            <td class="hidden-phone">Troy</td>
                            <td class="hidden-tablet hidden-phone">Nunc@sedliberoProin.edu</td>
                            <td>08/09/1976</td>
                        </tr>
                    </tbody>
                </table>
                <!-- // table -->
            </div>
            <!-- // Boo table in well-box -->
            <div class="clearfix margin-xx">
                <!-- // only demo separator -->
            </div>
            <div class="well well-nice well-box">
                <div class="navbar">
                    <div class="navbar-inner">
                        <h4 class="title"><i class="fontello-icon-palette"></i>Boo color background table</h4>
                        <ul class="nav nav-pills pull-right">
                            <li class="active"><a href="table-boo.html#tab1" data-toggle="tab">Blue light</a></li>
                            <li><a href="table-boo.html#tab2" data-toggle="tab">Green light</a></li>
                            <li><a href="table-boo.html#tab3" data-toggle="tab">Yellow light</a></li>
                        </ul>
                        <!-- // nav -->
                    </div>
                </div>
                <!-- // navbar -->
                <div class="tab-content no-padding">
                    <div class="tab-pane active" id="tab1">
                        <table class="table boo-table table-condensed table-striped table-content table-hover bg-blue-light">
                            <caption>
                                Boo color backgroud <span>Blue</span>
                            </caption>
                            <thead>
                                <tr>
                                    <th>Full Name</th>
                                    <th>Phone</th>
                                    <th class="action">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Jacob Smith</td>
                                    <td>jacob.smith@example.com</td>
                                    <td class="action"><a class="btn btn-yellow btn-mini" href="table-boo.html">Edit</a></td>
                                </tr>
                                <tr>
                                    <td>Isabella Johnson</td>
                                    <td>jacob.smith@example.com</td>
                                    <td class="action"><a class="btn btn-yellow btn-mini" href="table-boo.html">Edit</a></td>
                                </tr>
                                <tr>
                                    <td>Ethan Williams</td>
                                    <td>ethan.williams@example.com</td>
                                    <td class="action"><a class="btn btn-yellow btn-mini" href="table-boo.html">Edit</a></td>
                                </tr>
                                <tr>
                                    <td>Emma Jones</td>
                                    <td>emma.jones@example.com</td>
                                    <td class="action"><a class="btn btn-yellow btn-mini" href="table-boo.html">Edit</a></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <!-- // tab1 -->
                    <div class="tab-pane" id="tab2">
                        <table class="table boo-table table-condensed table-striped table-content table-hover bg-green-light">
                            <caption>
                                Boo color backgroud <span>Green</span>
                            </caption>
                            <thead>
                                <tr>
                                    <th>Full Name</th>
                                    <th>Phone</th>
                                    <th class="action">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Jacob Smith</td>
                                    <td>jacob.smith@example.com</td>
                                    <td class="action"><a class="btn btn-green btn-mini" href="table-boo.html">Edit</a></td>
                                </tr>
                                <tr>
                                    <td>Isabella Johnson</td>
                                    <td>jacob.smith@example.com</td>
                                    <td class="action"><a class="btn btn-green btn-mini" href="table-boo.html">Edit</a></td>
                                </tr>
                                <tr>
                                    <td>Ethan Williams</td>
                                    <td>ethan.williams@example.com</td>
                                    <td class="action"><a class="btn btn-green btn-mini" href="table-boo.html">Edit</a></td>
                                </tr>
                                <tr>
                                    <td>Emma Jones</td>
                                    <td>emma.jones@example.com</td>
                                    <td class="action"><a class="btn btn-green btn-mini" href="table-boo.html">Edit</a></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <!-- // tab2 -->
                    <div class="tab-pane" id="tab3">
                        <table class="table boo-table table-condensed table-striped table-content table-hover bg-yellow-light">
                            <caption>
                                Boo color backgroud <span>Yellow</span>
                            </caption>
                            <thead>
                                <tr>
                                    <th>Full Name</th>
                                    <th>Phone</th>
                                    <th class="action">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Jacob Smith</td>
                                    <td>jacob.smith@example.com</td>
                                    <td class="action"><a class="btn btn-blue btn-mini" href="table-boo.html">Edit</a></td>
                                </tr>
                                <tr>
                                    <td>Isabella Johnson</td>
                                    <td>jacob.smith@example.com</td>
                                    <td class="action"><a class="btn btn-blue btn-mini" href="table-boo.html">Edit</a></td>
                                </tr>
                                <tr>
                                    <td>Ethan Williams</td>
                                    <td>ethan.williams@example.com</td>
                                    <td class="action"><a class="btn btn-blue btn-mini" href="table-boo.html">Edit</a></td>
                                </tr>
                                <tr>
                                    <td>Emma Jones</td>
                                    <td>emma.jones@example.com</td>
                                    <td class="action"><a class="btn btn-blue btn-mini" href="table-boo.html">Edit</a></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <!-- // tab3 -->
                </div>
                <!-- // tabs -->
            </div>
            <!-- // Boo color table nav-pills -->
            <div class="clearfix margin-xx">
                <!-- // only demo separator -->
            </div>
            <div class="well well-box well-black">
                <div class="navbar navbar-inverse">
                    <div class="navbar-inner">
                        <h4 class="title"><i class="fontello-icon-window"></i>Boo table <small>in well-box</small></h4>
                        <ul class="nav pull-right">
                            <li><a href="table-boo.html#">Link</a></li>
                            <li class="divider-vertical"></li>
                            <li class="dropdown"><a data-toggle="dropdown" class="dropdown-toggle" href="table-boo.html#">Dropdown <b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li><a href="table-boo.html#">Action</a></li>
                                    <li><a href="table-boo.html#">Another action</a></li>
                                    <li><a href="table-boo.html#">Something else here</a></li>
                                    <li class="divider"></li>
                                    <li><a href="table-boo.html#">Separated link</a></li>
                                </ul>
                            </li>
                        </ul>
                        <!-- // nav -->
                    </div>
                </div>
                <!-- // navbar -->
                <table class="table boo-table table-condensed table-content table-hover">
                    <caption>
                        Boo table in well-black <span>with navbar inverse</span>
                    </caption>
                    <thead>
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col">Name</th>
                            <th scope="col" class="hidden-phone">City</th>
                            <th scope="col" class="hidden-tablet hidden-phone">Email</th>
                            <th scope="col">Date of birth</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>Colin Nixon</td>
                            <td class="hidden-phone">Long Beach</td>
                            <td class="hidden-tablet hidden-phone">semper@diamSeddiam.edu</td>
                            <td>02/10/1986</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>Naida Bennett</td>
                            <td class="hidden-phone">Lockport</td>
                            <td class="hidden-tablet hidden-phone">commodo@conseque.ca</td>
                            <td>04/21/1959</td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>Danielle Myers</td>
                            <td class="hidden-phone">Bentonville</td>
                            <td class="hidden-tablet hidden-phone">nunc.sed@liberoInteger.ca</td>
                            <td>12/11/1971</td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>Whitney Jones</td>
                            <td class="hidden-phone">Troy</td>
                            <td class="hidden-tablet hidden-phone">Nunc@sedliberoProin.edu</td>
                            <td>08/09/1976</td>
                        </tr>
                    </tbody>
                </table>
                <!-- // table -->
            </div>
            <!-- // Boo table in well-box well-black -->
            <div class="clearfix margin-xx">
                <!-- // only demo separator -->
            </div>
            <div class="well well-nice well-box">
                <div class="navbar">
                    <div class="navbar-inner">
                        <h4 class="title"><i class="fontello-icon-palette"></i>More elements for table</h4>
                        <ul class="btn-toolbar pull-right">
                            <li class="divider-vertical"></li>
                            <li><a class="btn" href="javascript:void(0)">button</a></li>
                            <li><a class="btn btn-green" href="javascript:void(0)">button</a></li>
                            <li class="divider-vertical"></li>
                            <li><a class="btn btn-blue" href="javascript:void(0)">button</a></li>
                            <li class="divider-vertical"></li>
                            <li><a class="btn btn-glyph" href="javascript:void(0)"><i class="fugue-arrow-circle"></i></a></li>
                        </ul>
                        <!-- // btn-toolbar -->
                        <ul class="nav nav-pills pull-right">
                            <li class="active"><a href="table-boo.html#tab1A" data-toggle="tab">example 1</a></li>
                            <li><a href="table-boo.html#tab2A" data-toggle="tab">example 2 (table-light)</a></li>
                        </ul>
                        <!-- // nav-pills -->
                    </div>
                </div>
                <!-- // navbar -->
                <div class="table-tool">
                    <ul class="btn-toolbar pull-left">
                        <li><a class="btn btn-small btn-glyph"><i class="fugue-table"></i></a></li>
                        <li><a class="btn btn-small btn-glyph"><i class="fugue-table-pencil"></i></a></li>
                        <li><a class="btn btn-small btn-glyph"><i class="fugue-table-plus"></i></a></li>
                        <li class="divider-vertical small"></li>
                        <li><a class="btn btn-small btn-glyph"><i class="fugue-table-export"></i></a></li>
                        <li><a class="btn btn-small btn-glyph"><i class="fugue-table-excel"></i></a></li>
                        <li class="divider-vertical small"></li>
                        <li><a class="btn btn-boo btn-small" href="javascript:void(0)">button</a></li>
                        <li><a class="btn btn-boo btn-small" href="javascript:void(0)">button</a></li>
                    </ul>
                    <div class="btn-toolbar pull-right"><a class="btn btn-boo btn-small" href="javascript:void(0)">button</a> <a class="btn btn-small btn-green " href="javascript:void(0)">NEW Contact</a> </div>
                </div>
                <div class="tab-content overflow no-padding">
                    <div class="tab-pane active" id="tab1A">
                        <table class="table boo-table table-striped table-content table-hover">
                            <colgroup>
                                <col>
                                <col class="col2">
                                <col>
                                <col>
                                <col class="col15">
                                <col>
                            </colgroup>
                            <caption>
                                More setting for table <span>next elements</span>
                            </caption>
                            <thead>
                                <tr>
                                    <th scope="col" class="check-col">
                                        <input type="checkbox" class="checkbox check-all" name="check-all"></th>
                                    <th scope="col">ava</th>
                                    <th scope="col" class="sorting_asc">Full Name <span class="column-sorter"></span></th>
                                    <th scope="col" class="sorting">Email <span class="column-sorter"></span></th>
                                    <th scope="col" class="sorting">Status <span class="column-sorter"></span></th>
                                    <th scope="col" class="sorting">Action <span class="column-sorter"></span></th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        <input type="checkbox" class="checkbox check-row" value="0" name="checkRow"></td>
                                    <td class="thumb-mini">
                                        <div class="media-thumb"><a href="javascript:void(0);" class="img-shadow">
                                            <img src="Content/img/demo/demo-avatar9603.jpg" class="thumb media-object"></a> </div>
                                    </td>
                                    <td><strong><a class="f16" href="table-boo.html">Jacob Smith</a></strong> Curabitur vitae leo justo augue </td>
                                    <td>jacob.smith@example.com</td>
                                    <td class="va-middle">
                                        <div class="progress progress-info progress-small">
                                            <div style="width: 65%" class="bar"></div>
                                        </div>
                                    </td>
                                    <td class="action"><a class="btn btn-yellow btn-mini no-wrap" href="table-boo.html">Edit user <i class="fontello-icon-edit"></i></a><a class="btn btn-green btn-glyph btn-mini" href="table-boo.html"><i class="fontello-icon-link-4"></i></a></td>
                                </tr>
                                <tr>
                                    <td>
                                        <input type="checkbox" class="checkbox check-row" value="0" name="checkRow"></td>
                                    <td class="thumb-mini">
                                        <div class="media-thumb"><a href="javascript:void(0);" class="img-shadow">
                                            <img src="Content/img/demo/demo-avatar9601.jpg" class="thumb media-object"></a> </div>
                                    </td>
                                    <td><strong><a class="f16" href="table-boo.html">Isabella Johnson</a></strong> Curabitur vitae leo justo augue </td>
                                    <td>jacob.smith@example.com</td>
                                    <td class="va-middle">
                                        <div class="progress progress-info progress-mini filled2">
                                            <div class="filler">
                                                <div style="width: 65%" class="bar"></div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="action"><a class="btn btn-yellow btn-mini no-wrap" href="table-boo.html">Edit user <i class="fontello-icon-edit"></i></a><a class="btn btn-green btn-glyph btn-mini" href="table-boo.html"><i class="fontello-icon-link-4"></i></a></td>
                                </tr>
                                <tr>
                                    <td>
                                        <input type="checkbox" class="checkbox check-row" value="0" name="checkRow"></td>
                                    <td class="thumb-mini">
                                        <div class="media-thumb"><a href="javascript:void(0);" class="img-shadow">
                                            <img src="Content/img/demo/demo-avatar9602.jpg" class="thumb media-object"></a> </div>
                                    </td>
                                    <td><strong><a class="_f16" href="table-boo.html">Ethan Williams</a></strong> Curabitur vitae leo justo augue </td>
                                    <td>ethan.williams@example.com</td>
                                    <td class="va-middle">
                                        <div class="progress progress-success right">
                                            <div data-amount-total="5000" data-amount-part="3750" class="bar text-filled-5 six-sec-ease-in-out" style="width: 75%;">2500 / 5000</div>
                                        </div>
                                    </td>
                                    <td class="action"><a class="btn btn-yellow btn-mini no-wrap" href="table-boo.html">Edit user <i class="fontello-icon-edit"></i></a><a class="btn btn-glyph btn-mini" href="table-boo.html"><i class="fontello-icon-link-4"></i></a></td>
                                </tr>
                                <tr>
                                    <td>
                                        <input type="checkbox" class="checkbox check-row" value="0" name="checkRow"></td>
                                    <td class="thumb-mini">
                                        <div class="media-thumb"><a href="javascript:void(0);" class="img-shadow">
                                            <img src="Content/img/demo/demo-avatar9605.jpg" class="thumb media-object"></a> </div>
                                    </td>
                                    <td><strong><a class="_f16" href="table-boo.html">Emma Jones</a></strong> Curabitur vitae leo justo augue </td>
                                    <td>emma.jones@example.com</td>
                                    <td class="va-middle">
                                        <div class="progress progress-info progress-striped filled3">
                                            <div class="filler">
                                                <div style="width: 65%" class="bar"></div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="action"><a class="btn btn-yellow btn-mini no-wrap" href="table-boo.html">Edit user <i class="fontello-icon-edit"></i></a><a class="btn btn-glyph btn-mini" href="table-boo.html"><i class="fontello-icon-link-4"></i></a></td>
                                </tr>
                            </tbody>
                        </table>
                        <div class="table-message-info">Here info for table</div>
                        <div class="action-table">
                            <div class="btn-toolbar pull-left">
                                <div class="action-select-wraper">
                                    <span class="arrow-table-action"></span>
                                    <select class="selectpicker input-medium margin-right5" data-style="btn-boo" id="actionTable" name="actionTable">
                                        <option value="">Action for selected...</option>
                                        <option value="validate">Validate</option>
                                        <option value="delete">Delete</option>
                                    </select>
                                    <button class="btn btn-boo" type="submit">Perform the action</button>
                                </div>
                            </div>
                            <ul class="btn-toolbar pull-right">
                                <li><a class="btn btn-small btn-glyph"><i class="fugue-table"></i></a></li>
                                <li><a class="btn btn-small btn-glyph"><i class="fugue-table-pencil"></i></a></li>
                                <li><a class="btn btn-small btn-glyph"><i class="fugue-table-plus"></i></a></li>
                                <li class="divider-vertical small"></li>
                                <li><a class="btn btn-small btn-glyph"><i class="fugue-table-export"></i></a></li>
                                <li><a class="btn btn-small btn-glyph"><i class="fugue-table-excel"></i></a></li>
                                <li class="divider-vertical small"></li>
                                <li><a class="btn btn-boo btn-small" href="javascript:void(0)">button</a></li>
                                <li><a class="btn btn-boo btn-small" href="javascript:void(0)">button</a></li>
                            </ul>
                        </div>
                    </div>
                    <!-- // tab1 -->
                    <div class="tab-pane" id="tab2A">
                        <table class="table boo-table table-light table-content table-hover">
                            <colgroup>
                                <col class="col2">
                                <col class="col2">
                                <col>
                                <col>
                                <col class="col15">
                                <col>
                            </colgroup>
                            <caption>
                                Here use table-light <span>next elements</span>
                            </caption>
                            <thead>
                                <tr>
                                    <th scope="col" class="check-col">
                                        <input type="checkbox" class="checkbox check-all" name="check-all"></th>
                                    <th scope="col">ava</th>
                                    <th scope="col" class="sorting_asc">Full Name <span class="column-sorter"></span></th>
                                    <th scope="col" class="sorting">Email <span class="column-sorter"></span></th>
                                    <th scope="col" class="sorting">Status <span class="column-sorter"></span></th>
                                    <th scope="col" class="sorting">Action <span class="column-sorter"></span></th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        <input type="checkbox" class="checkbox check-row" value="0" name="checkRow"></td>
                                    <td class="thumb-mini">
                                        <div class="media-thumb"><a href="javascript:void(0);" class="img-shadow">
                                            <img src="Content/img/demo/demo-avatar9603.jpg" class="thumb media-object"></a> </div>
                                    </td>
                                    <td><strong><a class="f16" href="table-boo.html">Jacob Smith</a></strong> Curabitur vitae leo justo augue </td>
                                    <td>jacob.smith@example.com</td>
                                    <td class="va-middle">
                                        <div class="label-field text-right">Completed</div>
                                        <div class="progress progress-success progress-mini filled2">
                                            <div class="filler">
                                                <div style="width: 95%" class="bar"></div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="action"><a class="btn btn-yellow btn-mini no-wrap" href="table-boo.html">Edit user <i class="fontello-icon-edit"></i></a><a class="btn btn-green btn-glyph btn-mini" href="table-boo.html"><i class="fontello-icon-link-4"></i></a></td>
                                </tr>
                                <tr>
                                    <td>
                                        <input type="checkbox" class="checkbox check-row" value="0" name="checkRow"></td>
                                    <td class="thumb-mini">
                                        <div class="media-thumb"><a href="javascript:void(0);" class="img-shadow">
                                            <img src="Content/img/demo/demo-avatar9601.jpg" class="thumb media-object"></a> </div>
                                    </td>
                                    <td><strong><a class="f16" href="table-boo.html">Isabella Johnson</a></strong> Curabitur vitae leo justo augue </td>
                                    <td>jacob.smith@example.com</td>
                                    <td class="va-middle">
                                        <div class="label-field text-right">Oportunity</div>
                                        <div class="progress progress-info progress-mini filled2">
                                            <div class="filler">
                                                <div style="width: 65%" class="bar"></div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="action"><a class="btn btn-yellow btn-mini no-wrap" href="table-boo.html">Edit user <i class="fontello-icon-edit"></i></a><a class="btn btn-green btn-glyph btn-mini" href="table-boo.html"><i class="fontello-icon-link-4"></i></a></td>
                                </tr>
                                <tr>
                                    <td>
                                        <input type="checkbox" class="checkbox check-row" value="0" name="checkRow"></td>
                                    <td class="thumb-mini">
                                        <div class="media-thumb"><a href="javascript:void(0);" class="img-shadow">
                                            <img src="Content/img/demo/demo-avatar9602.jpg" class="thumb media-object"></a> </div>
                                    </td>
                                    <td><strong><a class="_f16" href="table-boo.html">Ethan Williams</a></strong> Curabitur vitae leo justo augue </td>
                                    <td>ethan.williams@example.com</td>
                                    <td class="va-middle">
                                        <div class="label-field text-right">Prospect</div>
                                        <div class="progress progress-info progress-mini filled2">
                                            <div class="filler">
                                                <div style="width: 50%" class="bar"></div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="action"><a class="btn btn-yellow btn-mini no-wrap" href="table-boo.html">Edit user <i class="fontello-icon-edit"></i></a><a class="btn btn-glyph btn-mini" href="table-boo.html"><i class="fontello-icon-link-4"></i></a></td>
                                </tr>
                                <tr>
                                    <td>
                                        <input type="checkbox" class="checkbox check-row" value="0" name="checkRow"></td>
                                    <td class="thumb-mini">
                                        <div class="media-thumb"><a href="javascript:void(0);" class="img-shadow">
                                            <img src="Content/img/demo/demo-avatar9605.jpg" class="thumb media-object"></a> </div>
                                    </td>
                                    <td><strong><a class="_f16" href="table-boo.html">Emma Jones</a></strong> Curabitur vitae leo justo augue </td>
                                    <td>emma.jones@example.com</td>
                                    <td class="va-middle">
                                        <div class="label-field text-right">Not</div>
                                        <div class="progress progress-danger progress-mini filled2">
                                            <div class="filler">
                                                <div style="width: 15%" class="bar"></div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="action"><a class="btn btn-yellow btn-mini no-wrap" href="table-boo.html">Edit user <i class="fontello-icon-edit"></i></a><a class="btn btn-glyph btn-mini" href="table-boo.html"><i class="fontello-icon-link-4"></i></a></td>
                                </tr>
                            </tbody>
                        </table>
                        <div class="action-table">
                            <div class="btn-toolbar pull-left">
                                <div class="action-select-wraper">
                                    <span class="arrow-table-action"></span>
                                    <select class="selecttwo" id="actionTableDemo1" name="actionTableDemo1" data-placeholder="Action for selected...">
                                        <option value=""></option>
                                        <option value="check-all">Check all</option>
                                        <option value="uncheck">Uncheck selected</option>
                                        <option value="uncheck-all">Uncheck all</option>
                                        <option value="validate">Validate</option>
                                        <option value="delete">Delete</option>
                                    </select>
                                    <button class="btn btn-boo" type="submit">Perform the action</button>
                                </div>
                            </div>
                            <!-- // btn-toolbar -->

                            <div class="pagination pagination-boo">
                                <ul>
                                    <li class="disabled"><a href="table-boo.html#">Prev</a></li>
                                    <li><a href="table-boo.html#">1</a></li>
                                    <li class="active"><a href="table-boo.html#">2</a></li>
                                    <li><a href="table-boo.html#">3</a></li>
                                    <li><a href="table-boo.html#">4</a></li>
                                    <li><a href="table-boo.html#">Next</a></li>
                                </ul>
                            </div>
                            <!-- // pagination -->

                        </div>
                        <!-- // Action for table -->

                    </div>
                    <!-- // tab2 -->
                </div>
                <!-- // tabs -->
            </div>
            <!-- // Boo color table nav-pills -->
            <div class="clearfix margin-xx">
                <!-- // only demo separator -->
            </div>
        </div>
        <!-- // Example row -->
    </section>
 

</div>
<!-- // page content -->
