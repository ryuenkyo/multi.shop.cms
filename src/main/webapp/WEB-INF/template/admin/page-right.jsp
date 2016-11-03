<%@ page contentType="text/html; charset=utf-8" language="java" errorPage=""%>
<div class="widget widget-simple widget-notes">
    <div class="widget-header">
        <h4><i class="fontello-icon-edit"></i> 父菜单</h4>
        <div class="widget-tool"><a class="btn btn-green btn-small btn-glyph" href="javascript:void(0);"> 查看所有</a></div>
    </div>
    <div class="widget-content">
        <div class="widget-body">
            <form id="formNotes" class="form-dark">
                <fieldset>
                    <label for="accountTaxVat" class="control-label"> 菜单编码</label>
                    <input id="accountTaxVat" class="input-block-level" type="text">
                    <label for="accountTaxVat" class="control-label"> 菜单名称</label>
                    <input id="accountTaxVat" class="input-block-level" type="text">
                    <label for="accountTaxVat" class="control-label"> 菜单地址</label>
                    <input id="accountTaxVat" class="input-block-level" type="text">
                </fieldset>
                <!-- // fieldset Input -->
                
                <button class="btn btn-yellow btn-block">新增</button>
            </form>
        </div>
    </div>
    <div class="widget-header">
        <h4><i class="fontello-icon-list-alt"></i> 最近便条 </h4>
        <div class="widget-tool"><a class="btn btn-green btn-small btn-glyph" href="javascript:void(0);"> 查看所有</a></div>
    </div>
    <div class="widget-content">
        <div class="widget-body">
            <ol class="widget-list list-dotted">
                <li class="media"> <span class="pull-left"><span class="item-icon fontello-icon-pin-1"></span></span>
                    <div class="media-body"> <span class="date">10:30 AM</span> <span class="quick-menu-icon pull-right"> <a class="edit fontello-icon-edit"></a> <a class="state fontello-icon-archive"></a> <a class="state fontello-icon-trash-1"></a> </span>
                        <p class="note">Pellentesque malesuada nulla nunc nunc facilisi Donec tellus nec Donec et. Pellentesque metus dolor neque consequat scelerisque.</p>
                    </div>
                </li>
                <li class="media"> <span class="pull-left"><span class="item-icon fontello-icon-pin-1"></span></span>
                    <div class="media-body"> <span class="date">09-09-2012 02:30 PM</span> <span class="quick-menu-icon pull-right"> <a class="edit fontello-icon-edit"></a> <a class="state fontello-icon-archive"></a> <a class="state fontello-icon-trash-1"></a> </span>
                        <p class="note">Pellentesque malesuada nulla nunc nunc facilisi Donec tellus nec Donec et. Pellentesque metus dolor neque consequat scelerisque.</p>
                    </div>
                </li>
                <li class="media"> <span class="pull-left"><span class="item-icon fontello-icon-pin-1"></span></span>
                    <div class="media-body"> <span class="date">08-15-2012 11:50 AM</span> <span class="quick-menu-icon pull-right"> <a class="edit fontello-icon-edit"></a> <a class="state fontello-icon-archive"></a> <a class="state fontello-icon-trash-1"></a> </span>
                        <p class="note">Pellentesque malesuada nulla nunc nunc facilisi Donec tellus nec Donec et. Pellentesque metus dolor neque consequat scelerisque.</p>
                    </div>
                </li>
            </ol>
        </div>
    </div>
</div>
<!-- // Widget -->

<div class="widget widget-simple">
    <div class="widget-header">
        <h4><i class="fontello-icon-wrench-2"></i> Next setting for Account </h4>
    </div>
    <div class="widget-content">
        <div class="widget-body">
            <form id="formNextAccountSettings" class="form-condensed">
                <fieldset>
                    <ul class="form-list">
                        <li class="control-group">
                            <label for="accountForce" class="control-label">Force account - select date (from - to)</label>
                            <div class="controls">
                                <input id="accountForce" class="input-block-level margin-00" type="text" name="accountForce" value="">
                                <span class="help-block">Bootstrap daterangepicker</span> </div>
                        </li>
                        <!-- // form item -->
                        
                        <li class="control-group">
                            <label for="accountWebsite_id" class="control-label">Associate to Website</label>
                            <div class="controls">
                                <select id="accountWebsite_id" class="selecttwo-full" name="account[website_id]">
                                    <option value="">Please Select</option>
                                    <option selected="selected" value="0">Admin</option>
                                    <option value="1">Main Website</option>
                                </select>
                            </div>
                        </li>
                        <!-- // form item -->
                        
                        <li class="control-group">
                            <label for="accountCreated_in" class="control-label">Created From</label>
                            <div class="controls">
                                <input id="accountCreated_in" class="input-block-level" type="text" name="account[created_in]" value="Admin" disabled="disabled">
                            </div>
                        </li>
                        <!-- // form item -->
                        
                        <li class="control-group">
                            <label for="accountGroup" class="control-label">Customer Group</label>
                            <div class="controls">
                                <input id="accountGroup" class="" type="text" name="accountGroup" />
                                <label for="disableGroup_change" class="checkbox margin-top5">
                                    <input id="disableGroup_change" class="checkbox" type="checkbox" value="1" name="account[disableGroup_change]">
                                    Disable Automatic Group Change</label>
                            </div>
                        </li>
                        <!-- // form item -->
                        
                    </ul>
                </fieldset>
                <!-- // fieldset Input -->
            </form>
        </div>
    </div>
</div>
            <!-- // Widget --> 