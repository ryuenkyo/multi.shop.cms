<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/include.inc.jsp"%>
<div id="page-content" class="page-content tab-content overflow-y">
<div id="TabTop1" class="tab-pane padding-bottom30 active fade in">
<section>
<div class="row-fluid margin-bottom16">
    <div class="span12">
        <div class="widget widget-simple widget-table">
            <table id="exampleDTA" class="table boo-table table-striped table-hover">
                <thead>
                    <tr>
                        <th scope="col">ID <span class="column-sorter"></span></th>
                        <th scope="col">code <span class="column-sorter"></span></th>
                        <th scope="col">name<span class="column-sorter"></span></th>
                        <th scope="col">remark <span class="column-sorter"></span></th>
                        <th scope="col">requestUrl <span class="column-sorter"></span></th>
                        <th scope="col">exception <span class="column-sorter"></span></th>
                        <th scope="col">操作 <span class="column-sorter"></span></th>
                    </tr>
                </thead>
                <tbody>
                	<c:forEach items="${resLst.content}" var="obj" varStatus="status">
                    <tr>
                        <td>${status.index+1}</td>
                        <td>${obj.code}</td>
                        <td>Long Beach</td>
                        <td>semper@diamSeddiam.edu</td>
                        <td>02/10/1986</td>
                        <td>02/10/1986</td>
                        <td><a href="">查看<a></td>
                    </tr>
                    </c:forEach>
                    <tr>
                        <td>2</td>
                        <td>Naida Bennett</td>
                        <td>Lockport</td>
                        <td>commodo@Curabiturconsequatlectus.ca</td>
                        <td>04/21/1959</td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>Danielle Myers</td>
                        <td>Bentonville</td>
                        <td>nunc.sed@liberoInteger.ca</td>
                        <td>12/11/1971</td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td>Whitney Jones</td>
                        <td>Troy</td>
                        <td>Nunc@sedliberoProin.edu</td>
                        <td>08/09/1976</td>
                    </tr>
                    <tr>
                        <td>5</td>
                        <td>Marvin Bell</td>
                        <td>Cody</td>
                        <td>aliquet@Craspellentesque.com</td>
                        <td>10/17/1979</td>
                    </tr>
                    <tr>
                        <td>6</td>
                        <td>Lucas Melendez</td>
                        <td>Plano</td>
                        <td>Maecenas.malesuada@Duismi.org</td>
                        <td>02/25/1967</td>
                    </tr>
                    <tr>
                        <td>7</td>
                        <td>Devin Harris</td>
                        <td>Altoona</td>
                        <td>dolor.sit@apurus.org</td>
                        <td>01/09/1990</td>
                    </tr>
                    <tr>
                        <td>8</td>
                        <td>Tucker Graves</td>
                        <td>Yorba Linda</td>
                        <td>libero.nec.ligula@hendrerita.ca</td>
                        <td>12/03/1962</td>
                    </tr>
                    <tr>
                        <td>9</td>
                        <td>Linus Carpenter</td>
                        <td>Attleboro</td>
                        <td>pellentesque.massa@feugiat.com</td>
                        <td>03/06/1975</td>
                    </tr>
                    <tr>
                        <td>10</td>
                        <td>Quinlan Lindsay</td>
                        <td>San Antonio</td>
                        <td>rhoncus@tristique.com</td>
                        <td>10/19/1963</td>
                    </tr>
                    <tr>
                        <td>11</td>
                        <td>Jolie Ryan</td>
                        <td>Yonkers</td>
                        <td>Proin@Utnec.edu</td>
                        <td>12/17/1969</td>
                    </tr>
                    <tr>
                        <td>12</td>
                        <td>Roanna Adkins</td>
                        <td>Wynne</td>
                        <td>egestas@massaIntegervitae.edu</td>
                        <td>07/20/1980</td>
                    </tr>
                    <tr>
                        <td>13</td>
                        <td>Berk Clemons</td>
                        <td>Madison</td>
                        <td>mus.Proin.vel@nibhQuisque.edu</td>
                        <td>09/10/1963</td>
                    </tr>
                    <tr>
                        <td>14</td>
                        <td>Tamara Stokes</td>
                        <td>Edmond</td>
                        <td>nec@orci.com</td>
                        <td>01/14/1981</td>
                    </tr>
                    <tr>
                        <td>15</td>
                        <td>Shoshana Hodges</td>
                        <td>Reading</td>
                        <td>nibh@molestieSedid.org</td>
                        <td>11/12/1986</td>
                    </tr>
                </tbody>
            </table>
            <!-- // DATATABLE - DTA -->
            
        </div>
        <!-- // Column -->
         
    </div>
    <!-- // Column -->
    
</div>
<!-- // Example row --> 

</section>
</div>
</div>