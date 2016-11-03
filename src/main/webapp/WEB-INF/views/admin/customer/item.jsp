<%@ page contentType="text/html; charset=utf8" pageEncoding="UTF-8" language="java" errorPage=""%>
<%@ include file="/include.inc.jsp"%>
   <div id="page-content" class="page-content tab-content overflow-y">
                <div id="Tab1" class="tab-pane fade in active">
                    <div class="row-fluid">
                        <div class="span12">
                            <div class="page-header">
                                <h3><i class="aweso-icon-list-alt opaci35"></i> Wizard <small>full settings in .well-box</small></h3>
                            </div>
                            <div class="well well-nice well-box wizard">
                                <form id="DWZD" class="form-horizontal form-dark" method="" action="" >
                                    <div class="navbar">
                                        <div class="navbar-inner">
                                            <div class="container">
                                                <ul>
                                                    <li><a href="#tab1fb" data-toggle="tab">Name</a></li>
                                                    <li><a href="#tab2fb" data-toggle="tab">Personal</a></li>
                                                    <li><a href="#tab3fb" data-toggle="tab">Emploament</a></li>
                                                    <li><a href="#tab4fb" data-toggle="tab">Contact</a></li>
                                                    <li><a href="#tab5fb" data-toggle="tab">Address</a></li>
                                                    <li><a href="#tab6fb" data-toggle="tab">Sumary</a></li>
                                                </ul>
                                                <div class="number-page pull-right"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="section-content item bg-blue-medium padding-top10 padding-bottom10 no-border-top">
                                        <div id="bar" class="progress progress-info progress-mini no-margin">
                                            <div class="bar"></div>
                                        </div>
                                    </div>
                                    <div class="tab-content section-content item">
                                        <div class="tab-pane" id="tab1fb">
                                            <div class="row-fluid">
                                                <div class="span12">
                                                    <fieldset>
                                                        <legend><i class="fontello-icon-user-4"></i> Persona麓s name <span> New Account form</span></legend>
                                                        <ul class="form-list label-left list-bordered dotted">
                                                            <li class="control-group">
                                                                <label for="wzNewPrefix" class="control-label">Prefix</label>
                                                                <div class="controls">
                                                                    <input id="wzNewPrefix" class="span6" type="text" value="" name="wzNewPrefix">
                                                                </div>
                                                            </li>
                                                            <!-- // form item -->
                                                            
                                                            <li class="control-group">
                                                                <label for="wzNewFirstName" class="control-label">First Name <span class="required">*</span></label>
                                                                <div class="controls">
                                                                    <input id="wzNewFirstName" class="span11" type="text" name="wzNewFirstName" value="">
                                                                </div>
                                                            </li>
                                                            <!-- // form item -->
                                                            
                                                            <li class="control-group">
                                                                <label for="wzNewLastName" class="control-label">Last Name <span class="required">*</span></label>
                                                                <div class="controls">
                                                                    <input id="wzNewLastName" class="span11" type="text" name="wzNewLastName" value="">
                                                                </div>
                                                            </li>
                                                            <!-- // form item -->
                                                            
                                                            <li class="control-group">
                                                                <label for="wzNewSuffix" class="control-label">Suffix</label>
                                                                <div class="controls">
                                                                    <input id="wzNewSuffix" class="span6" type="text" name="wzNewSuffix" value="">
                                                                </div>
                                                            </li>
                                                            <!-- // form item -->
                                                            
                                                        </ul>
                                                    </fieldset>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- // tab1 -->
                                        
                                        <div class="tab-pane" id="tab2fb">
                                            <div class="row-fluid">
                                                <div class="span12">
                                                    <fieldset>
                                                        <legend><i class="fontello-icon-vcard"></i> Personal Data <span> Default wizard legend</span></legend>
                                                        <ul class="form-list label-left list-bordered dotted">
                                                            <li class="control-group">
                                                                <label for="wzNewMaritalStatus" class="control-label">Marital Status</label>
                                                                <div class="controls">
                                                                    <input id="wzNewMaritalStatus" class="span6" type="text" name="wzNewMaritalStatus" value="">
                                                                </div>
                                                            </li>
                                                            <!-- // form item -->
                                                            
                                                            <li class="control-group">
                                                                <label for="wzNewGenderInput" class="control-label">Gender</label>
                                                                <div class="controls">
                                                                    <input id="wzNewGenderInput" type="hidden" name="wzNewGender" value="" />
                                                                    <div id="wzNewGender" class="btn-group change" data-toggle="buttons-radio" data-target="wzNewGenderInput">
                                                                        <button type="button" class="btn" class-toggle="btn-green" name="wzNewGender" value="male">&nbsp; Male &nbsp;</button>
                                                                        <button type="button" class="btn" class-toggle="btn-green" name="wzNewGender" value="female">Female</button>
                                                                    </div>
                                                                </div>
                                                            </li>
                                                            <!-- // form item -->
                                                            
                                                            <li class="control-group">
                                                                <label for="wzNewDob" class="control-label">Date Of Birth <span class="required">*</span></label>
                                                                <div class="controls">
                                                                    <input id="wzNewDob" class="span6" type="text" name="wzNewDob" value="">
                                                                </div>
                                                            </li>
                                                            <!-- // form item -->
                                                            
                                                            <li class="control-group">
                                                                <label for="wzNewAge" class="control-label">Age</label>
                                                                <div class="controls">
                                                                    <input id="wzNewAge" class="span4" type="text" name="wzNewAge" value="">
                                                                </div>
                                                            </li>
                                                            <!-- // form item -->
                                                            
                                                        </ul>
                                                    </fieldset>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- // tab2 -->
                                        
                                        <div class="tab-pane" id="tab3fb">
                                            <div class="row-fluid">
                                                <div class="span12">
                                                    <fieldset>
                                                        <legend><i class="fontello-icon-bag"></i> Dates of employment <span> Default wizard legend</span></legend>
                                                        <ul class="form-list label-left list-bordered dotted">
                                                            <li class="control-group">
                                                                <label for="wzNewEmployer" class="control-label">Employer</label>
                                                                <div class="controls">
                                                                    <input id="wzNewEmployer" class="span11" type="text" name="wzNewEmployer" value="">
                                                                </div>
                                                            </li>
                                                            
                                                            <!-- // form item -->
                                                            <li class="control-group">
                                                                <label for="wzNewDepartment" class="control-label">Department</label>
                                                                <div class="controls">
                                                                    <input id="wzNewMiddleName" class="span11" type="text" name="wzNewMiddleName" value="">
                                                                </div>
                                                            </li>
                                                            <!-- // form item -->
                                                            
                                                            <li class="control-group">
                                                                <label for="wzNewJob" class="control-label">Account Job</label>
                                                                <div class="controls">
                                                                    <input id="wzNewJob" class="span11" type="text" name="wzNewJob" value="">
                                                                    <p class="help-block">Lorem ipsum dolor sit amet consectetuer convallis nisl dolor tellus porta. Curabitur accumsan tempus semper eget Aliquam ante Aliquam Curabitur odio tincidunt.</p>
                                                                </div>
                                                            </li>
                                                            <!-- // form item -->
                                                            
                                                        </ul>
                                                    </fieldset>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- // tab3 -->
                                        
                                        <div class="tab-pane" id="tab4fb">
                                            <div class="row-fluid">
                                                <div class="span12">
                                                    <fieldset>
                                                        <legend><i class="fontello-icon-phone"></i> Contact info <span> Default wizard legend</span></legend>
                                                        <ul class="form-list label-left list-bordered dotted">
                                                            <li class="control-group">
                                                                <label for="wzNewEmail" class="control-label">Email <span class="required">*</span></label>
                                                                <div class="controls">
                                                                    <input id="wzNewEmail" class="span11" type="text" name="wzNewEmail" value="">
                                                                </div>
                                                            </li>
                                                            <!-- // form item -->
                                                            
                                                            <li class="control-group">
                                                                <label for="wzNewPhoneNumber" class="control-label">Phone <span class="required">*</span></label>
                                                                <div class="controls">
                                                                    <input id="wzNewPhoneNumber" class="span6 maskPhone" type="text" name="wzNewPhoneNumber" value="">
                                                                </div>
                                                            </li>
                                                            <!-- // form item -->
                                                            
                                                            <li class="control-group">
                                                                <label for="wzNewFaxNumber" class="control-label">Fax</label>
                                                                <div class="controls">
                                                                    <input id="wzNewFaxNumber" class="span6 maskPhone" type="text" name="wzNewFaxNumber" value="">
                                                                </div>
                                                            </li>
                                                            <!-- // form item -->
                                                            
                                                            <li class="control-group">
                                                                <div class="controls">
                                                                    <p>Lorem ipsum dolor sit amet consectetuer convallis nisl dolor tellus porta.</p>
                                                                </div>
                                                            </li>
                                                            <!-- // form item -->
                                                            
                                                        </ul>
                                                    </fieldset>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- // tab4 -->
                                        
                                        <div class="tab-pane" id="tab5fb">
                                            <div class="row-fluid">
                                                <div class="span12">
                                                    <fieldset>
                                                        <legend><i class="fontello-icon-home"></i> Address <span> Default wizard legend</span></legend>
                                                        <ul class="form-list label-left list-bordered dotted">
                                                            <li class="control-group">
                                                                <label for="wzNewAddressStreet" class="control-label">Address <span class="required">*</span></label>
                                                                <div class="controls controls-row">
                                                                    <input id="wzNewAddressStreet" class="span6" type="text" value="" name="wzNewAddressStreet">
                                                                </div>
                                                            </li>
                                                            <!-- // form item -->
                                                            
                                                            <li class="control-group">
                                                                <label for="wzNewAddressCity" class="control-label">City <span class="required">*</span></label>
                                                                <div class="controls">
                                                                    <input id="wzNewAddressCity" class="span6" type="text" value="" name="wzNewAddressCity">
                                                                </div>
                                                            </li>
                                                            <!-- // form item -->
                                                            
                                                            <li class="control-group">
                                                                <label for="wzNewAddressState2" class="control-label">State <span class="required">*</span></label>
                                                                <div class="controls">
                                                                    <select id="wzNewAddressState2" class="span6" name="wzNewAddressState2">
                                                                        <option value="" selected="selected">Select a State</option>
                                                                        <option value="AL">Alabama</option>
                                                                        <option value="AK">Alaska</option>
                                                                        <option value="AZ">Arizona</option>
                                                                        <option value="AR">Arkansas</option>
                                                                        <option value="CA">California</option>
                                                                        <option value="CO">Colorado</option>
                                                                        <option value="CT">Connecticut</option>
                                                                        <option value="DE">Delaware</option>
                                                                        <option value="DC">District Of Columbia</option>
                                                                        <option value="FL">Florida</option>
                                                                        <option value="GA">Georgia</option>
                                                                        <option value="HI">Hawaii</option>
                                                                        <option value="ID">Idaho</option>
                                                                        <option value="IL">Illinois</option>
                                                                        <option value="IN">Indiana</option>
                                                                        <option value="IA">Iowa</option>
                                                                        <option value="KS">Kansas</option>
                                                                        <option value="KY">Kentucky</option>
                                                                        <option value="LA">Louisiana</option>
                                                                        <option value="ME">Maine</option>
                                                                        <option value="MD">Maryland</option>
                                                                        <option value="MA">Massachusetts</option>
                                                                        <option value="MI">Michigan</option>
                                                                        <option value="MN">Minnesota</option>
                                                                        <option value="MS">Mississippi</option>
                                                                        <option value="MO">Missouri</option>
                                                                        <option value="MT">Montana</option>
                                                                        <option value="NE">Nebraska</option>
                                                                        <option value="NV">Nevada</option>
                                                                        <option value="NH">New Hampshire</option>
                                                                        <option value="NJ">New Jersey</option>
                                                                        <option value="NM">New Mexico</option>
                                                                        <option value="NY">New York</option>
                                                                        <option value="NC">North Carolina</option>
                                                                        <option value="ND">North Dakota</option>
                                                                        <option value="OH">Ohio</option>
                                                                        <option value="OK">Oklahoma</option>
                                                                        <option value="OR">Oregon</option>
                                                                        <option value="PA">Pennsylvania</option>
                                                                        <option value="RI">Rhode Island</option>
                                                                        <option value="SC">South Carolina</option>
                                                                        <option value="SD">South Dakota</option>
                                                                        <option value="TN">Tennessee</option>
                                                                        <option value="TX">Texas</option>
                                                                        <option value="UT">Utah</option>
                                                                        <option value="VT">Vermont</option>
                                                                        <option value="VA">Virginia</option>
                                                                        <option value="WA">Washington</option>
                                                                        <option value="WV">West Virginia</option>
                                                                        <option value="WI">Wisconsin</option>
                                                                        <option value="WY">Wyoming</option>
                                                                    </select>
                                                                </div>
                                                            </li>
                                                            <!-- // form item -->
                                                            
                                                            <li class="control-group">
                                                                <label for="wzNewAddressZip" class="control-label">Zip / Postal code <span class="required">*</span></label>
                                                                <div class="controls">
                                                                    <input id="wzNewAddressZip" class="span4 maskZipcode" type="text" value="" name="wzNewAddressZip">
                                                                </div>
                                                            </li>
                                                            <!-- // form item -->
                                                            
                                                        </ul>
                                                    </fieldset>
                                                    <!-- // fieldset Input --> 
                                                </div>
                                            </div>
                                        </div>
                                        <!-- // tab5 -->
                                        
                                        <div class="tab-pane summary" id="tab6fb">
                                            <div class="row-fluid">
                                                <div class="span12">
                                                    <fieldset>
                                                        <legend><i class="fontello-icon-th-list-4"></i> Overview form <span> Default wizard legend</span></legend>
                                                        <ul class="summary-list list-bordered dotted">
                                                            <li class="control-group row-fluid">
                                                                <div class="span6 well well-small well-nice">
                                                                    <p><span class="label-field">Name</span> <span class="field bold">mr. Jonathan Somerson</span></p>
                                                                    <p><span class="label-field">Marital Status</span> <span class="field">married</span></p>
                                                                    <p><span class="label-field">Gender</span> <span class="field">man</span></p>
                                                                    <p><span class="label-field">Date Of Birth</span> <span class="field">08/08/1978</span></p>
                                                                    <p><span class="label-field">Age</span> <span class="field">34</span></p>
                                                                </div>
                                                            </li>
                                                            <!-- // form item -->
                                                            
                                                            <li class="control-group row-fluid">
                                                                <p><span class="label-field">Email</span> <span class="field bold">j.somerson@example.com</span></p>
                                                                <p><span class="label-field">Phone</span> <span class="field bold">(123) 456-7890</span></p>
                                                                <p><span class="label-field">fax</span> <span class="field">(123) 456-7890</span></p>
                                                            </li>
                                                            <!-- // form item -->
                                                            
                                                            <li class="control-group">
                                                                <p><span class="label-field">Address</span> <span class="field"> 795 Folsom Ave, Suite 600</span></p>
                                                                <p><span class="label-field">&nbsp;</span> <span class="field">San Francisco, CA 94107</span></p>
                                                            </li>
                                                            <!-- // form item -->
                                                            
                                                            <li class="control-group">
                                                                <p><span class="label-field">Employer</span> <span class="field">Twitter, Inc.</span></p>
                                                                <p><span class="label-field">Department</span> <span class="field">sales Department</span></p>
                                                                <p><span class="label-field">Job</span> <span class="field">Manager</span></p>
                                                            </li>
                                                            <!-- // form item -->
                                                            
                                                        </ul>
                                                    </fieldset>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- // tab6 summary --> 
                                        
                                    </div>
                                    <div class="section-content footer">
                                        <ul class="wizard-action wizard-pager">
                                            <li><a class="previous first btn" href="javascript:void(0);">First</a></li>
                                            <li><a class="previous btn btn-blue" href="javascript:void(0);"><i class="fontello-icon-left-circle2"></i> Previous</a></li>
                                            <li><a class="next last btn" href="javascript:void(0);">Last</a></li>
                                            <li><a class="next btn btn-blue" href="javascript:void(0);">Next <i class="fontello-icon-right-circle2"></i></a></li>
                                            <li>
                                                <button type="submit" class="next finish btn btn-green">Send form</button>
                                            </li>
                                            <li><a class="next print btn btn-glyph" href="javascript:void(0);"><i class="fontello-icon-print-2"></i></a></li>
                                            <li><a class="next cancel btn btn-red" href="javascript:void(0);">Cancel</i></a></li>
                                        </ul>
                                        <!-- // Action --> 
                                        
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                	<!-- // example row -->
                </div>
                
                <div id="Tab2" class="tab-pane fade">
                    <div class="row-fluid">
                        <div class="span12">
                            <div class="page-header">
                                <h3><i class="aweso-icon-list-alt opaci35"></i> Wizard Steps <small>responsive style</small></h3>
                            </div>
                            <div class="row-fluid">
                            	<div class="span6 grider-item">
                                	<p>before</p>
                                    <div class="well well-nice">
                                        <ol>
                                            <li>Paragraph</li>
                                            <li>Bordered</li>
                                            <li>List</li>
                                            <li>Blockquote</li>
                                        </ol>
                                        <div class="section-content">
                                            <p>Lorem ipsum dolor sit amet consectetuer pretium Nam non libero tincidunt. Eget et feugiat consequat quis sagittis sociis Quisque fringilla sagittis et. Pede Phasellus Nam tincidunt laoreet semper cursus nunc Suspendisse suscipit enim. Metus aliquam a facilisis magna Duis eros a gravida id malesuada. Porta interdum a vitae congue justo sit mattis. Nam tincidunt laoreet semper cursus nunc Suspendisse suscipit enim. Metus aliquam a facilisis magna Duis eros a gravida id malesuada. Porta interdum a vitae congue justo sit mattis</p>
        
                                        </div>
                                        <div>
                                            <div class="section-content item">
                                                <p>Lorem ipsum dolor sit amet consectetuer pretium Nam non libero tincidunt. Eget et feugiat consequat quis sagittis sociis Quisque fringilla sagittis et. Pede Phasellus Nam tincidunt laoreet semper cursus nunc.</p>
        
                                            </div>
                                            <div class="section-content">
                                                <p>Lorem ipsum dolor sit amet consectetuer pretium Nam non libero tincidunt. Eget et feugiat consequat quis sagittis sociis Quisque fringilla sagittis et. Pede Phasellus Nam tincidunt laoreet semper cursus nunc.</p>
        
                                            </div>
                                        </div>
                                        <div class="section-content">
                                            <ol>
                                                <li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li>
                                                <li>Aliquam tincidunt mauris eu risus.</li>
                                            </ol>
                                            <hr>
                                            <ul>
                                                <li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li>
                                                <li>Aliquam tincidunt mauris eu risus.</li>
                                            </ul>
                                        </div>
                                        <div class="section-content">
                                            <h3>Header Level 3</h3>
                                            <blockquote>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus magna. Cras in mi at felis aliquet congue. Ut a est eget ligula molestie gravida. Curabitur massa. Donec eleifend, libero at sagittis mollis, tellus est malesuada tellus, at luctus turpis elit sit amet quam. Vivamus pretium ornare est.</p>
                                            </blockquote>
                                        </div>
                                    </div>
                                </div>
                                
                                
                                <div class="span6 grider-item">
                                	<p>after assigning id</p>
                                    <div id="stepsWizard" class="well well-nice well-small bwizard-bordered">
                                        <ol>
                                            <li>Paragraph</li>
                                            <li>Bordered</li>
                                            <li>List</li>
                                            <li>Blockquote</li>
                                        </ol>
                                        <div class="section-content">
                                            <p>Lorem ipsum dolor sit amet consectetuer pretium Nam non libero tincidunt. Eget et feugiat consequat quis sagittis sociis Quisque fringilla sagittis et. Pede Phasellus Nam tincidunt laoreet semper cursus nunc Suspendisse suscipit enim. Metus aliquam a facilisis magna Duis eros a gravida id malesuada. Porta interdum a vitae congue justo sit mattis. Nam tincidunt laoreet semper cursus nunc Suspendisse suscipit enim. Metus aliquam a facilisis magna Duis eros a gravida id malesuada. Porta interdum a vitae congue justo sit mattis</p>
        
                                        </div>
                                        <div>
                                            <div class="section-content item">
                                                <p>Lorem ipsum dolor sit amet consectetuer pretium Nam non libero tincidunt. Eget et feugiat consequat quis sagittis sociis Quisque fringilla sagittis et. Pede Phasellus Nam tincidunt laoreet semper cursus nunc.</p>
        
                                            </div>
                                            <div class="section-content">
                                                <p>Lorem ipsum dolor sit amet consectetuer pretium Nam non libero tincidunt. Eget et feugiat consequat quis sagittis sociis Quisque fringilla sagittis et. Pede Phasellus Nam tincidunt laoreet semper cursus nunc.</p>
        
                                            </div>
                                        </div>
                                        <div class="section-content">
                                            <ol>
                                                <li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li>
                                                <li>Aliquam tincidunt mauris eu risus.</li>
                                            </ol>
                                            <hr>
                                            <ul>
                                                <li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li>
                                                <li>Aliquam tincidunt mauris eu risus.</li>
                                            </ul>
                                        </div>
                                        <div class="section-content">
                                            <h3>Header Level 3</h3>
                                            <blockquote>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus magna. Cras in mi at felis aliquet congue. Ut a est eget ligula molestie gravida. Curabitur massa. Donec eleifend, libero at sagittis mollis, tellus est malesuada tellus, at luctus turpis elit sit amet quam. Vivamus pretium ornare est.</p>
                                            </blockquote>
                                        </div>
                                    </div>
                                    
                                    <div id="stepsWizardLoop" class="well well-black well-impressed well-small bwizard-green bwizard-bordered">
                                        <ol>
                                            <li>Paragraph</li>
                                            <li>Bordered</li>
                                            <li>List</li>
                                            <li>Blockquote</li>
                                        </ol>
                                        <div class="section-content">
                                            <p>Lorem ipsum dolor sit amet consectetuer pretium Nam non libero tincidunt. Eget et feugiat consequat quis sagittis sociis Quisque fringilla sagittis et. Pede Phasellus Nam tincidunt laoreet semper cursus nunc Suspendisse suscipit enim. Metus aliquam a facilisis magna Duis eros a gravida id malesuada. Porta interdum a vitae congue justo sit mattis. Nam tincidunt laoreet semper cursus nunc Suspendisse suscipit enim. Metus aliquam a facilisis magna Duis eros a gravida id malesuada. Porta interdum a vitae congue justo sit mattis</p>
        
                                        </div>
                                        <div>
                                            <div class="section-content item">
                                                <p>Lorem ipsum dolor sit amet consectetuer pretium Nam non libero tincidunt. Eget et feugiat consequat quis sagittis sociis Quisque fringilla sagittis et. Pede Phasellus Nam tincidunt laoreet semper cursus nunc.</p>
        
                                            </div>
                                            <div class="section-content">
                                                <p>Lorem ipsum dolor sit amet consectetuer pretium Nam non libero tincidunt. Eget et feugiat consequat quis sagittis sociis Quisque fringilla sagittis et. Pede Phasellus Nam tincidunt laoreet semper cursus nunc.</p>
        
                                            </div>
                                        </div>
                                        <div class="section-content">
                                            <ol>
                                                <li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li>
                                                <li>Aliquam tincidunt mauris eu risus.</li>
                                            </ol>
                                            <hr>
                                            <ul>
                                                <li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li>
                                                <li>Aliquam tincidunt mauris eu risus.</li>
                                            </ul>
                                        </div>
                                        <div class="section-content">
                                            <h3>Header Level 3</h3>
                                            <blockquote>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus magna. Cras in mi at felis aliquet congue. Ut a est eget ligula molestie gravida. Curabitur massa. Donec eleifend, libero at sagittis mollis, tellus est malesuada tellus, at luctus turpis elit sit amet quam. Vivamus pretium ornare est.</p>
                                            </blockquote>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                	<!-- // example row -->
                    
                </div>
                
                <div id="Tab3" class="tab-pane fade"> 
                    <div class="row-fluid">
                        <div class="span4 grider-item">
                            <div class="page-header">
                                <h3><i class="aweso-icon-list-alt opaci35"></i> Basic Wizard <small>default</small></h3>
                            </div>
                            <div id="wizard" class="wizard">
                                <div class="navbar">
                                    <div class="navbar-inner">
                                        <div class="container">
                                            <ul>
                                                <li class="active"><a href="#tab1a" data-toggle="tab">First</a></li>
                                                <li><a href="#tab2a" data-toggle="tab">Second</a></li>
                                                <li><a href="#tab3a" data-toggle="tab">Third</a></li>
                                                <li><a href="#tab4a" data-toggle="tab">Forth</a></li>
                                                <li><a href="#tab5a" data-toggle="tab">Fifth</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-content">
                                    <div class="tab-pane well active fade in" id="tab1a">
                                        <p>Lorem ipsum dolor sit amet consectetuer nunc Nam quis fermentum leo. Laoreet nonummy neque Vivamus consequat dictum nulla interdum Nam fermentum et. Ut elit Aenean cursus pede Nunc justo ligula in Suspendisse mauris.</p>
                                    </div>
                                    <div class="tab-pane well fade bg-yellow-light" id="tab2a">
                                        <p>Lorem ipsum dolor sit amet consectetuer nunc Nam quis fermentum leo. Laoreet nonummy neque Vivamus consequat dictum nulla interdum Nam fermentum et. Ut elit Aenean cursus pede Nunc justo ligula in Suspendisse mauris.</p>
                                    </div>
                                    <div class="tab-pane well fade bg-green-light" id="tab3a">
                                        <p>Lorem ipsum dolor sit amet consectetuer nunc Nam quis fermentum leo. Laoreet nonummy neque Vivamus consequat dictum nulla interdum Nam fermentum et. Ut elit Aenean cursus pede Nunc justo ligula in Suspendisse mauris.</p>
                                    </div>
                                    <div class="tab-pane well fade bg-blue-light" id="tab4a">
                                        <p>Lorem ipsum dolor sit amet consectetuer nunc Nam quis fermentum leo. Laoreet nonummy neque Vivamus consequat dictum nulla interdum Nam fermentum et. Ut elit Aenean cursus pede Nunc justo ligula in Suspendisse mauris.</p>
                                    </div>
                                    <div class="tab-pane well fade well-black" id="tab5a">
                                        <p>Lorem ipsum dolor sit amet consectetuer nunc Nam quis fermentum leo. Laoreet nonummy neque Vivamus consequat dictum nulla interdum Nam fermentum et. Ut elit Aenean cursus pede Nunc justo ligula in Suspendisse mauris.</p>
                                    </div>
                                    <hr class="margin-00">
                                    <ul class="pager wizard">
                                        <li class="previous first" style="display:none;"><a href="#">First</a></li>
                                        <li class="previous"><a href="#">Previous</a></li>
                                        <li class="next last" style="display:none;"><a href="#">Last</a></li>
                                        <li class="next"><a href="#">Next</a></li>
                                    </ul>
                                </div>
                            </div>
                            <!-- // wizard -->
                            <p><br><br></p>
                            
                            <div class="page-header">
                                <h3><i class="aweso-icon-list-alt opaci35"></i> Basic Wizard <small>tabs or tabbable</small></h3>
                            </div>
                            <div class="well well-nice well-small">
                                <form id="wizard-tabs" class="form-condensed margin-00" method="" action="">
                                    <div class="tabbable tabbable-bordered tabs-top">
                                        <ul>
                                            <li><a href="#tab1TA" data-toggle="tab">First</a></li>
                                            <li><a href="#tab2TA" data-toggle="tab">Second</a></li>
                                            <li><a href="#tab3TA" data-toggle="tab">Third</a></li>
                                            <li><a href="#tab4TA" data-toggle="tab">Forth</a></li>
                                        </ul>
                                        <div class="tab-content" style="min-height:150px">
                                            <div class="tab-pane" id="tab1TA">
                                                <div class="control-group">
                                                    <label for="FirstNameTA" class="control-label">First Name <span class="required">*</span></label>
                                                    <div class="controls">
                                                        <input id="FirstNameTA" class="input-block-level" type="text" name="FirstNameTA" value="">
                                                    </div>
                                                </div>
                                                <!-- // form item -->
                                                
                                                <div class="control-group">
                                                    <label for="LastNameTA" class="control-label">Last Name <span class="required">*</span></label>
                                                    <div class="controls">
                                                        <input id="LastNameTA" class="input-block-level" type="text" name="LastNameTA" value="">
                                                    </div>
                                                </div>
                                                <!-- // form item --> 
                                            </div>
                                            <!-- // tab1 -->
                                            
                                            <div class="tab-pane" id="tab2TA">
                                                <div class="control-group">
                                                    <label for="emailTA" class="control-label">Email <span class="required">*</span></label>
                                                    <div class="controls">
                                                        <input id="emailTA" class="input-block-level" type="email" name="emailTA" value="">
                                                    </div>
                                                </div>
                                                <!-- // form item -->
                                                
                                                <div class="control-group">
                                                    <label for="phoneTA" class="control-label">Phone <span class="required">*</span></label>
                                                    <div class="controls">
                                                        <input id="phoneTA" class="input-block-level" type="password" name="phoneTA" value="">
                                                    </div>
                                                </div>
                                                <!-- // form item --> 
                                            </div>
                                            <!-- // tab2 -->
                                            
                                            <div class="tab-pane" id="tab3TA">
                                                <div class="control-group">
                                                    <label for="passwordTA" class="control-label">Password <span class="required">*</span></label>
                                                    <div class="controls">
                                                        <input id="passwordTA" class="input-block-level" type="password" name="passwordTA" value="">
                                                    </div>
                                                </div>
                                                <!-- // form item -->
                                                
                                                <div class="control-group">
                                                    <label for="confPasswordTA" class="control-label">Confirm Password <span class="required">*</span></label>
                                                    <div class="controls">
                                                        <input id="confPasswordTA" class="input-block-level" type="password" name="confPasswordTA" value="">
                                                    </div>
                                                </div>
                                                <!-- // form item --> 
                                            </div>
                                            <!-- // tab3 -->
                                            
                                            <div class="tab-pane" id="tab4TA">
                                                <p>Lorem ipsum dolor sit amet consectetuer nunc Nam quis fermentum leo. Laoreet nonummy neque Vivamus consequat dictum nulla interdum Nam fermentum et. Ut elit Aenean cursus pede Nunc justo ligula in Suspendisse mauris.</p>
                                                <label class="checkbox">
                                                    <input class="checkbox" type="checkbox" value="option1">
                                                    Lorem ipsum dolor sit amet </label>
                                                <!-- // form item --> 
                                            </div>
                                            <!-- // tab3 -->
                                            <ul class="pager wizard margin-xs">
                                                <li class="previous"><a href="javascript:void(0);">Previous</a></li>
                                                <li class="next"><a href="javascript:void(0);">Next</a></li>
                                                <button type="submit" class="next save btn btn-green pull-right" href="javascript:void(0);">Send form</button>
                                            </ul>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <!-- // wizard -->                            
                            <p><br><br></p>
                            
                            <div class="page-header">
                                <h3><i class="aweso-icon-list-alt opaci35"></i> Basic Wizard <small>tabs disabled</small></h3>
                            </div>
                            <div id="wizard-left" class="well well-nice well-small">
                                <div class="tabbable tabbable-bordered tabs-left">
                                    <ul>
                                        <li><a href="#tab1TL" data-toggle="tab">First</a></li>
                                        <li><a href="#tab2TL" data-toggle="tab">Second</a></li>
                                        <li><a href="#tab3TL" data-toggle="tab">Third</a></li>
                                        <li><a href="#tab4TL" data-toggle="tab">Forth</a></li>
                                    </ul>
                                    <div class="tab-content" style="min-height:150px">
                                        <div class="tab-pane" id="tab1TL">
                                            <div class="control-group">
                                                <label for="FirstNameTL" class="control-label">First Name <span class="required">*</span></label>
                                                <div class="controls">
                                                    <input id="FirstNameTL" class="input-block-level" type="text" name="FirstNameTL" value="">
                                                </div>
                                            </div>
                                            <!-- // form item -->
                                            
                                            <div class="control-group">
                                                <label for="LastNameTL" class="control-label">Last Name <span class="required">*</span></label>
                                                <div class="controls">
                                                    <input id="LastNameTL" class="input-block-level" type="text" name="LastNameTL" value="">
                                                </div>
                                            </div>
                                            <!-- // form item --> 
                                        </div>
                                        <!-- // tab1 -->
                                        
                                        <div class="tab-pane" id="tab2TL">
                                            <div class="control-group">
                                                <label for="emailTL" class="control-label">Email <span class="required">*</span></label>
                                                <div class="controls">
                                                    <input id="emailTL" class="input-block-level" type="email" name="emailTL" value="">
                                                </div>
                                            </div>
                                            <!-- // form item -->
                                            
                                            <div class="control-group">
                                                <label for="phoneTL" class="control-label">Phone <span class="required">*</span></label>
                                                <div class="controls">
                                                    <input id="phoneTL" class="input-block-level" type="password" name="phoneTL" value="">
                                                </div>
                                            </div>
                                            <!-- // form item --> 
                                        </div>
                                        <!-- // tab2 -->
                                        
                                        <div class="tab-pane" id="tab3TL">
                                            <div class="control-group">
                                                <label for="passwordTL" class="control-label">Password <span class="required">*</span></label>
                                                <div class="controls">
                                                    <input id="passwordTL" class="input-block-level" type="password" name="passwordTL" value="">
                                                </div>
                                            </div>
                                            <!-- // form item -->
                                            
                                            <div class="control-group">
                                                <label for="confPasswordTL" class="control-label">Confirm Password <span class="required">*</span></label>
                                                <div class="controls">
                                                    <input id="confPasswordTL" class="input-block-level" type="password" name="confPasswordTL" value="">
                                                </div>
                                            </div>
                                            <!-- // form item --> 
                                        </div>
                                        <!-- // tab3 -->
                                        
                                        <div class="tab-pane" id="tab4TL">
                                            <p>Lorem ipsum dolor sit amet consectetuer nunc Nam quis fermentum leo. Laoreet nonummy neque Vivamus consequat dictum nulla interdum Nam fermentum et. Ut elit Aenean cursus pede Nunc justo ligula in Suspendisse mauris.</p>
                                            <label class="checkbox">
                                                <input class="checkbox" type="checkbox" value="option1">
                                                Lorem ipsum dolor sit amet </label>
                                            <!-- // form item --> 
                                        </div>
                                        <!-- // tab3 --> 
                                    </div>
                                </div>
                                <ul class="pager wizard margin-ms">
                                    <li class="previous first" style="display:none"><a href="javascript:void(0);">First</a></li>
                                    <li class="previous"><a href="javascript:void(0);">Previous</a></li>
                                    <li class="next last" style="display:none"><a href="javascript:void(0);">Last</a></li>
                                    <li class="next"><a href="javascript:void(0);">Next</a></li>
                                </ul>
                            </div>
                            <!-- // wizard -->
                            <p><br><br></p>
                            
                            <div class="page-header">
                                <h3><i class="aweso-icon-list-alt opaci35"></i> Basic Wizard <small>only tabs and submit</small></h3>
                            </div>
                            <div class="well well-nice well-small">
                                <form id="wizard-below" class="form-condensed margin-0s" method="" action="">
                                    <div class="tabbable tabbable-bordered tabs-below">
                                        <div class="tab-content" style="min-height:150px">
                                            <div class="tab-pane" id="tab1TB">
                                                <div class="control-group">
                                                    <label for="FirstNameTB" class="control-label">First Name <span class="required">*</span></label>
                                                    <div class="controls">
                                                        <input id="FirstNameTB" class="input-block-level" type="text" name="FirstNameTB" value="">
                                                    </div>
                                                </div>
                                                <!-- // form item -->
                                                
                                                <div class="control-group">
                                                    <label for="LastNameTB" class="control-label">Last Name <span class="required">*</span></label>
                                                    <div class="controls">
                                                        <input id="LastNameTB" class="input-block-level" type="text" name="LastNameTB" value="">
                                                    </div>
                                                </div>
                                                <!-- // form item --> 
                                            </div>
                                            <!-- // tab1 -->
                                            
                                            <div class="tab-pane" id="tab2TB">
                                                <div class="control-group">
                                                    <label for="emailTB" class="control-label">Email <span class="required">*</span></label>
                                                    <div class="controls">
                                                        <input id="emailTB" class="input-block-level" type="email" name="emailTB" value="">
                                                    </div>
                                                </div>
                                                <!-- // form item -->
                                                
                                                <div class="control-group">
                                                    <label for="phoneTB" class="control-label">Phone <span class="required">*</span></label>
                                                    <div class="controls">
                                                        <input id="phoneTB" class="input-block-level" type="password" name="phoneTB" value="">
                                                    </div>
                                                </div>
                                                <!-- // form item --> 
                                            </div>
                                            <!-- // tab2 -->
                                            
                                            <div class="tab-pane" id="tab3TB">
                                                <div class="control-group">
                                                    <label for="passwordTB" class="control-label">Password <span class="required">*</span></label>
                                                    <div class="controls">
                                                        <input id="passwordTB" class="input-block-level" type="password" name="passwordTB" value="">
                                                    </div>
                                                </div>
                                                <!-- // form item -->
                                                
                                                <div class="control-group">
                                                    <label for="confPasswordTB" class="control-label">Confirm Password <span class="required">*</span></label>
                                                    <div class="controls">
                                                        <input id="confPasswordTB" class="input-block-level" type="password" name="confPasswordTB" value="">
                                                    </div>
                                                </div>
                                                <!-- // form item --> 
                                            </div>
                                            <!-- // tab3 -->
                                            
                                            <div class="tab-pane" id="tab4TB">
                                                <p>Lorem ipsum dolor sit amet consectetuer nunc Nam quis fermentum leo. Laoreet nonummy neque Vivamus consequat dictum nulla interdum Nam fermentum et. Ut elit Aenean cursus pede Nunc justo ligula in Suspendisse mauris.</p>
                                                <label class="checkbox">
                                                    <input class="checkbox" type="checkbox" value="option1">
                                                    Lorem ipsum dolor sit amet </label>
                                                <!-- // form item --> 
                                            </div>
                                            <!-- // tab3 --> 
                                            
                                        </div>
                                        <ul>
                                            <li><a href="#tab1TB" data-toggle="tab">Step 1.</a></li>
                                            <li><a href="#tab2TB" data-toggle="tab">Step 2.</a></li>
                                            <li><a href="#tab3TB" data-toggle="tab">Step 3.</a></li>
                                            <li><a href="#tab4TB" data-toggle="tab">Step 4.</a></li>
                                            <div class="send-wizard pull-right">
                                                <button type="submit" class="next save btn btn-green margin-ss" href="javascript:void(0);">Send form</button>
                                            </div>
                                        </ul>
                                    </div>
                                </form>
                            </div>
                            <!-- // wizard -->
                            
                        </div>
                        <!-- // column --> 
                        
                        <div class="span8 grider-item">
                            <div class="page-header">
                                <h3><i class="aweso-icon-list-alt opaci35"></i> Wizard <small>custom button</small></h3>
                            </div>
                            <div class="well well-nice well-small wizard">
                                <form id="wizard-nice" class="form-horizontal form-dark" method="" action="" >
                                    <h3>
                                        <div class="number-page pull-right"></div>
                                        <i class="fontello-icon-user-4"></i> New Account <small> wizard form</small></h3>
                                    <div class="btn-toolbar">
                                        <ul class="margin-0s">
                                            <li><a href="#tab1c" data-toggle="tab">Username</a></li>
                                            <li><a href="#tab2c" data-toggle="tab">Password</a></li>
                                            <li><a href="#tab3c" data-toggle="tab">Email</a></li>
                                        </ul>
                                    </div>
                                    <hr class="margin-00">
                                    <div class="tab-content">
                                        <div class="tab-pane" id="tab1c">
                                            <ul class="form-list label-left list-bordered dotted">
                                                <li class="control-group">
                                                    <label for="nameNice" class="control-label">Name</label>
                                                    <div class="controls">
                                                        <input id="nameNice" class="span6" type="text" value="" name="nameNice">
                                                    </div>
                                                </li>
                                                <!-- // form item -->
                                                
                                                <li class="control-group">
                                                    <label for="userNice" class="control-label">Username</label>
                                                    <div class="controls">
                                                        <input id="userNice" class="span6" type="text" value="" name="userNice">
                                                        <p class="help-block">Lorem ipsum dolor sit amet consectetuer convallis nisl dolor tellus porta. Curabitur accumsan tempus semper eget Aliquam ante Aliquam Curabitur odio tincidunt.</p>
                                                    </div>
                                                </li>
                                                <!-- // form item -->
                                            </ul>
                                        </div>
                                        <!-- // tab1 -->
                                        
                                        <div class="tab-pane" id="tab2c">
                                            <ul class="form-list label-left list-bordered dotted">
                                                <li class="control-group">
                                                    <label for="passwordNice" class="control-label">Password</label>
                                                    <div class="controls">
                                                        <input id="passwordNice" class="span4" type="password" value="" name="passwordNice">
                                                    </div>
                                                </li>
                                                <!-- // form item -->
                                                
                                                <li class="control-group">
                                                    <label for="passwordConNice" class="control-label">Confirm Password</label>
                                                    <div class="controls">
                                                        <input id="passwordConNice" class="span4" type="password" value="" name="passwordConNice">
                                                        <p class="help-block">Lorem ipsum dolor sit amet consectetuer convallis nisl dolor tellus porta. Curabitur accumsan tempus semper eget Aliquam ante Aliquam Curabitur odio tincidunt.</p>
                                                    </div>
                                                </li>
                                                <!-- // form item -->
                                            </ul>
                                        </div>
                                        <!-- // tab2 -->
                                        
                                        <div class="tab-pane" id="tab3c">
                                            <ul class="form-list label-left list-bordered dotted">
                                                <li class="control-group">
                                                    <label for="emailNice" class="control-label">Email</label>
                                                    <div class="controls">
                                                        <input id="emailNice" class="span6" type="text" value="" name="emailNice">
                                                    </div>
                                                </li>
                                                <!-- // form item -->
                                                
                                                <li class="control-group">
                                                    <div class="controls">
                                                        <p class="help-block">Lorem ipsum dolor sit amet consectetuer convallis nisl dolor tellus porta. Curabitur accumsan tempus semper eget Aliquam ante Aliquam Curabitur odio tincidunt.</p>
                                                    </div>
                                                </li>
                                                <!-- // form item -->
                                            </ul>
                                        </div>
                                        <!-- // tab3 -->
                                        
                                        <ul class="wizard-action">
                                            <li><a class="previous btn" href="javascript:void(0);">Previous</a></li>
                                            <li><a class="next btn" href="javascript:void(0);">Next</a></li>
                                            <li><a class="next save btn btn-green pull-right" href="javascript:void(0);">Send form</a></li>
                                        </ul>
                                        <!-- // Action --> 
                                        
                                    </div>
                                </form>
                            </div>
                            
                            <div class="page-header">
                                <h3><i class="aweso-icon-list-alt opaci35"></i> Wizard <small>only button</small></h3>
                            </div>
                            <div class="well well-black well-small wizard">
                                <form id="wizard-black" class="form-horizontal form-dark" method="" action="" >
                                    <h3 class="simple-header"><i class="fontello-icon-user-4"></i> Registration <small> Create New Account</small></h3>
                                    <ul class="margin-0s hidden">
                                        <li><a href="#tab1d" data-toggle="tab">Username</a></li>
                                        <li><a href="#tab2d" data-toggle="tab">Password</a></li>
                                        <li><a href="#tab3d" data-toggle="tab">Email</a></li>
                                    </ul>
                                    <div class="tab-content">
                                        <div class="tab-pane" id="tab1d">
                                            <ul class="form-list label-left list-bordered dotted">
                                                <li class="control-group">
                                                    <label for="namehd" class="control-label">Name</label>
                                                    <div class="controls">
                                                        <input id="namehd" class="span6" type="text" value="" name="namehd">
                                                    </div>
                                                </li>
                                                <!-- // form item -->
                                                
                                                <li class="control-group">
                                                    <label for="userhd" class="control-label">Username</label>
                                                    <div class="controls">
                                                        <input id="userhd" class="span6" type="text" value="" name="userhd">
                                                        <p class="help-block">Lorem ipsum dolor sit amet consectetuer convallis nisl dolor tellus porta. Curabitur accumsan tempus semper eget Aliquam ante Aliquam Curabitur odio tincidunt.</p>
                                                    </div>
                                                </li>
                                                <!-- // form item -->
                                            </ul>
                                        </div>
                                        <!-- // tab1 -->
                                        
                                        <div class="tab-pane" id="tab2d">
                                            <ul class="form-list label-left list-bordered dotted">
                                                <li class="control-group">
                                                    <label for="passwordD" class="control-label">Password</label>
                                                    <div class="controls">
                                                        <input id="passwordD" class="span4" type="password" value="" name="passwordD">
                                                    </div>
                                                </li>
                                                <!-- // form item -->
                                                
                                                <li class="control-group">
                                                    <label for="passwordConD" class="control-label">Confirm Password</label>
                                                    <div class="controls">
                                                        <input id="passwordConD" class="span4" type="password" value="" name="passwordConD">
                                                        <p class="help-block">Lorem ipsum dolor sit amet consectetuer convallis nisl dolor tellus porta. Curabitur accumsan tempus semper eget Aliquam ante Aliquam Curabitur odio tincidunt.</p>
                                                    </div>
                                                </li>
                                                <!-- // form item -->
                                            </ul>
                                        </div>
                                        <!-- // tab1 -->
                                        
                                        <div class="tab-pane" id="tab3d">
                                            <ul class="form-list label-left list-bordered dotted">
                                                <li class="control-group">
                                                    <label for="emailD" class="control-label">Email</label>
                                                    <div class="controls">
                                                        <input id="emailD" class="span6" type="email" value="" name="emailD">
                                                    </div>
                                                </li>
                                                <!-- // form item -->
                                                
                                                <li class="control-group">
                                                    <div class="controls">
                                                        <p>Lorem ipsum dolor sit amet consectetuer convallis nisl dolor tellus porta. Curabitur accumsan tempus semper eget Aliquam ante Aliquam Curabitur odio tincidunt.</p>
                                                    </div>
                                                </li>
                                                <!-- // form item -->
                                            </ul>
                                        </div>
                                        <!-- // tab1 -->
                                        
                                        <div class="control-group">
                                            <div class="controls">
                                                <ul class="wizard-action">
                                                    <li><a class="previous btn btn-inverse" href="javascript:void(0);"><i class="fontello-icon-left-circle2"></i> Previous</a></li>
                                                    <li><a class="next btn btn-inverse" href="javascript:void(0);">Next <i class="fontello-icon-right-circle2"></i></a></li>
                                                    <li>
                                                        <button type="submit" class="next finish btn btn-green" href="javascript:void(0);">Send form <i class="fontello-icon-check"></i></button>
                                                    </li>
                                                    <li><a class="next cancel btn btn-red" href="javascript:void(0);">Cancel</i></a></li>
                                                    <li>
                                                        <div class="number-page pull-right"></div>
                                                    </li>
                                                </ul>
                                                <!-- // Action --> 
                                            </div>
                                        </div>
                                        <!-- // control grup --> 
                                        
                                    </div>
                                </form>
                            </div>
                            
                            <div class="page-header">
                                <h3><i class="aweso-icon-list-alt opaci35"></i> Wizard <small>full settings</small></h3>
                            </div>
                            <div class="well well-nice well-small wizard">
                                <form id="wizard-progress" class="form-horizontal form-dark" method="" action="" >
                                    <div class="navbar navbar-inverse">
                                        <div class="navbar-inner">
                                            <div class="container">
                                                <ul>
                                                    <li><a href="#tab1e" data-toggle="tab">First</a></li>
                                                    <li><a href="#tab2e" data-toggle="tab">Second</a></li>
                                                    <li><a href="#tab3e" data-toggle="tab">Third</a></li>
                                                    <li><a href="#tab4e" data-toggle="tab">Forth</a></li>
                                                    <li><a href="#tab5e" data-toggle="tab">Fifth</a></li>
                                                    <li><a href="#tab6e" data-toggle="tab">Sixth</a></li>
                                                </ul>
                                                <div class="number-page pull-right"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="bar" class="progress _progress-success progress-mini filled3">
                                        <div class="filler">
                                            <div class="bar"></div>
                                        </div>
                                    </div>
                                    <div class="tab-content">
                                        <div class="tab-pane" id="tab1e">
                                            <div class="row-fluid">
                                                <div class="span12">
                                                    <fieldset>
                                                        <legend><i class="fontello-icon-user-4"></i> Persona麓s name <span> New Account form</span></legend>
                                                        <ul class="form-list label-left list-bordered dotted">
                                                            <li class="control-group">
                                                                <label for="accNewPrefix" class="control-label">Prefix</label>
                                                                <div class="controls">
                                                                    <input id="accNewPrefix" class="span6" type="text" value="" name="accNewPrefix">
                                                                </div>
                                                            </li>
                                                            <!-- // form item -->
                                                            
                                                            <li class="control-group">
                                                                <label for="accNewFirstName" class="control-label">First Name <span class="required">*</span></label>
                                                                <div class="controls">
                                                                    <input id="accNewFirstName" class="span11" type="text" name="accNewFirstName" value="">
                                                                </div>
                                                            </li>
                                                            <!-- // form item -->
                                                            
                                                            <li class="control-group">
                                                                <label for="accNewLastName" class="control-label">Last Name <span class="required">*</span></label>
                                                                <div class="controls">
                                                                    <input id="accNewLastName" class="span11" type="text" name="accNewLastName" value="">
                                                                </div>
                                                            </li>
                                                            <!-- // form item -->
                                                            
                                                            <li class="control-group">
                                                                <label for="accNewSuffix" class="control-label">Suffix</label>
                                                                <div class="controls">
                                                                    <input id="accNewSuffix" class="span6" type="text" name="accNewSuffix" value="">
                                                                </div>
                                                            </li>
                                                            <!-- // form item -->
                                                            
                                                        </ul>
                                                    </fieldset>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- // tab1 -->
                                        
                                        <div class="tab-pane" id="tab2e">
                                            <div class="row-fluid">
                                                <div class="span12">
                                                    <fieldset>
                                                        <legend><i class="fontello-icon-vcard"></i> Personal Data <span> Default wizard legend</span></legend>
                                                        <ul class="form-list label-left list-bordered dotted">
                                                            <li class="control-group">
                                                                <label for="accNewMaritalStatus" class="control-label">Marital Status</label>
                                                                <div class="controls">
                                                                    <input id="accNewMaritalStatus" class="span6" type="text" name="accNewMaritalStatus" value="">
                                                                </div>
                                                            </li>
                                                            <!-- // form item -->
                                                            
                                                            <li class="control-group">
                                                                <label for="accNewGenderInput" class="control-label">Gender</label>
                                                                <div class="controls">
                                                                    <input id="accNewGenderInput" type="hidden" name="accNewGender" value="" />
                                                                    <div id="accNewGender" class="btn-group change" data-toggle="buttons-radio" data-target="accNewGenderInput">
                                                                        <button type="button" class="btn" class-toggle="btn-green" name="accNewGender" value="male">&nbsp; Male &nbsp;</button>
                                                                        <button type="button" class="btn" class-toggle="btn-green" name="accNewGender" value="female">Female</button>
                                                                    </div>
                                                                </div>
                                                            </li>
                                                            <!-- // form item -->
                                                            
                                                            <li class="control-group">
                                                                <label for="accNewDob" class="control-label">Date Of Birth <span class="required">*</span></label>
                                                                <div class="controls">
                                                                    <input id="accNewDob" class="span6" type="text" name="accNewDob" value="">
                                                                </div>
                                                            </li>
                                                            <!-- // form item -->
                                                            
                                                            <li class="control-group">
                                                                <label for="accNewAge" class="control-label">Age</label>
                                                                <div class="controls">
                                                                    <input id="accNewAge" class="span4" type="text" name="accNewAge" value="">
                                                                </div>
                                                            </li>
                                                            <!-- // form item -->
                                                            
                                                        </ul>
                                                    </fieldset>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- // tab2 -->
                                        
                                        <div class="tab-pane" id="tab3e">
                                            <div class="row-fluid">
                                                <div class="span12">
                                                    <fieldset>
                                                        <legend><i class="fontello-icon-bag"></i> Dates of employment <span> Default wizard legend</span></legend>
                                                        <ul class="form-list label-left list-bordered dotted">
                                                            <li class="control-group">
                                                                <label for="accNewEmployer" class="control-label">Employer</label>
                                                                <div class="controls">
                                                                    <input id="accNewEmployer" class="span11" type="text" name="accNewEmployer" value="">
                                                                </div>
                                                            </li>
                                                            
                                                            <!-- // form item -->
                                                            <li class="control-group">
                                                                <label for="accNewDepartment" class="control-label">Department</label>
                                                                <div class="controls">
                                                                    <input id="accNewMiddleName" class="span11" type="text" name="accNewMiddleName" value="">
                                                                </div>
                                                            </li>
                                                            <!-- // form item -->
                                                            
                                                            <li class="control-group">
                                                                <label for="accNewJob" class="control-label">Account Job</label>
                                                                <div class="controls">
                                                                    <input id="accNewJob" class="span11" type="text" name="accNewJob" value="">
                                                                    <p class="help-block">Lorem ipsum dolor sit amet consectetuer convallis nisl dolor tellus porta. Curabitur accumsan tempus semper eget Aliquam ante Aliquam Curabitur odio tincidunt.</p>
                                                                </div>
                                                            </li>
                                                            <!-- // form item -->
                                                            
                                                        </ul>
                                                    </fieldset>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- // tab3 -->
                                        
                                        <div class="tab-pane" id="tab4e">
                                            <div class="row-fluid">
                                                <div class="span12">
                                                    <fieldset>
                                                        <legend><i class="fontello-icon-phone"></i> Contact info <span> Default wizard legend</span></legend>
                                                        <ul class="form-list label-left list-bordered dotted">
                                                            <li class="control-group">
                                                                <label for="accNewEmail" class="control-label">Email <span class="required">*</span></label>
                                                                <div class="controls">
                                                                    <input id="accNewEmail" class="span11" type="text" name="accNewEmail" value="">
                                                                </div>
                                                            </li>
                                                            <!-- // form item -->
                                                            
                                                            <li class="control-group">
                                                                <label for="accNewPhoneNumber" class="control-label">Phone <span class="required">*</span></label>
                                                                <div class="controls">
                                                                    <input id="accNewPhoneNumber" class="span6 maskPhone" type="text" name="accNewPhoneNumber" value="">
                                                                </div>
                                                            </li>
                                                            <!-- // form item -->
                                                            
                                                            <li class="control-group">
                                                                <label for="accNewFaxNumber" class="control-label">Fax</label>
                                                                <div class="controls">
                                                                    <input id="accNewFaxNumber" class="span6 maskPhone" type="text" name="accNewFaxNumber" value="">
                                                                </div>
                                                            </li>
                                                            <!-- // form item -->
                                                            
                                                            <li class="control-group">
                                                                <div class="controls">
                                                                    <p>Lorem ipsum dolor sit amet consectetuer convallis nisl dolor tellus porta.</p>
                                                                </div>
                                                            </li>
                                                            <!-- // form item -->
                                                            
                                                        </ul>
                                                    </fieldset>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- // tab4 -->
                                        
                                        <div class="tab-pane" id="tab5e">
                                            <div class="row-fluid">
                                                <div class="span12">
                                                    <fieldset>
                                                        <legend><i class="fontello-icon-home"></i> Address <span> Default wizard legend</span></legend>
                                                        <ul class="form-list label-left list-bordered dotted">
                                                            <li class="control-group">
                                                                <label for="accNewAddressStreet" class="control-label">Address <span class="required">*</span></label>
                                                                <div class="controls controls-row">
                                                                    <input id="accNewAddressStreet" class="span6" type="text" value="" name="accNewAddressStreet">
                                                                </div>
                                                            </li>
                                                            <!-- // form item -->
                                                            
                                                            <li class="control-group">
                                                                <label for="accNewAddressCity" class="control-label">City <span class="required">*</span></label>
                                                                <div class="controls">
                                                                    <input id="accNewAddressCity" class="span6" type="text" value="" name="accNewAddressCity">
                                                                </div>
                                                            </li>
                                                            <!-- // form item -->
                                                            
                                                            <li class="control-group">
                                                                <label for="accNewAddressState" class="control-label">State <span class="required">*</span></label>
                                                                <div class="controls">
                                                                    <select id="accNewAddressState" class="span6" name="accNewAddressState">
                                                                        <option value="" selected="selected">Select a State</option>
                                                                        <option value="AL">Alabama</option>
                                                                        <option value="AK">Alaska</option>
                                                                        <option value="AZ">Arizona</option>
                                                                        <option value="AR">Arkansas</option>
                                                                        <option value="CA">California</option>
                                                                        <option value="CO">Colorado</option>
                                                                        <option value="CT">Connecticut</option>
                                                                        <option value="DE">Delaware</option>
                                                                        <option value="DC">District Of Columbia</option>
                                                                        <option value="FL">Florida</option>
                                                                        <option value="GA">Georgia</option>
                                                                        <option value="HI">Hawaii</option>
                                                                        <option value="ID">Idaho</option>
                                                                        <option value="IL">Illinois</option>
                                                                        <option value="IN">Indiana</option>
                                                                        <option value="IA">Iowa</option>
                                                                        <option value="KS">Kansas</option>
                                                                        <option value="KY">Kentucky</option>
                                                                        <option value="LA">Louisiana</option>
                                                                        <option value="ME">Maine</option>
                                                                        <option value="MD">Maryland</option>
                                                                        <option value="MA">Massachusetts</option>
                                                                        <option value="MI">Michigan</option>
                                                                        <option value="MN">Minnesota</option>
                                                                        <option value="MS">Mississippi</option>
                                                                        <option value="MO">Missouri</option>
                                                                        <option value="MT">Montana</option>
                                                                        <option value="NE">Nebraska</option>
                                                                        <option value="NV">Nevada</option>
                                                                        <option value="NH">New Hampshire</option>
                                                                        <option value="NJ">New Jersey</option>
                                                                        <option value="NM">New Mexico</option>
                                                                        <option value="NY">New York</option>
                                                                        <option value="NC">North Carolina</option>
                                                                        <option value="ND">North Dakota</option>
                                                                        <option value="OH">Ohio</option>
                                                                        <option value="OK">Oklahoma</option>
                                                                        <option value="OR">Oregon</option>
                                                                        <option value="PA">Pennsylvania</option>
                                                                        <option value="RI">Rhode Island</option>
                                                                        <option value="SC">South Carolina</option>
                                                                        <option value="SD">South Dakota</option>
                                                                        <option value="TN">Tennessee</option>
                                                                        <option value="TX">Texas</option>
                                                                        <option value="UT">Utah</option>
                                                                        <option value="VT">Vermont</option>
                                                                        <option value="VA">Virginia</option>
                                                                        <option value="WA">Washington</option>
                                                                        <option value="WV">West Virginia</option>
                                                                        <option value="WI">Wisconsin</option>
                                                                        <option value="WY">Wyoming</option>
                                                                    </select>
                                                                </div>
                                                            </li>
                                                            <!-- // form item -->
                                                            
                                                            <li class="control-group">
                                                                <label for="accNewAddressZip" class="control-label">Zip / Postal code <span class="required">*</span></label>
                                                                <div class="controls">
                                                                    <input id="accNewAddressZip" class="span4 maskZipcode" type="text" value="" name="accNewAddressZip">
                                                                </div>
                                                            </li>
                                                            <!-- // form item -->
                                                            
                                                        </ul>
                                                    </fieldset>
                                                    <!-- // fieldset Input --> 
                                                </div>
                                            </div>
                                        </div>
                                        <!-- // tab5 -->
                                        
                                        <div class="tab-pane summary" id="tab6e">
                                            <div class="row-fluid">
                                                <div class="span12">
                                                    <fieldset>
                                                        <legend><i class="fontello-icon-th-list-4"></i> Overview form <span> Default wizard legend</span></legend>
                                                        <ul class="summary-list list-bordered dotted">
                                                            <li class="control-group row-fluid">
                                                                <div class="span6 well well-small well-nice">
                                                                    <p><span class="label-field">Name</span> <span class="field bold">mr. Jonathan Somerson</span></p>
                                                                    <p><span class="label-field">Marital Status</span> <span class="field">married</span></p>
                                                                    <p><span class="label-field">Gender</span> <span class="field">man</span></p>
                                                                    <p><span class="label-field">Date Of Birth</span> <span class="field">08/08/1978</span></p>
                                                                    <p><span class="label-field">Age</span> <span class="field">34</span></p>
                                                                </div>
                                                            </li>
                                                            <!-- // form item -->
                                                            
                                                            <li class="control-group row-fluid">
                                                                <p><span class="label-field">Email</span> <span class="field bold">j.somerson@example.com</span></p>
                                                                <p><span class="label-field">Phone</span> <span class="field bold">(123) 456-7890</span></p>
                                                                <p><span class="label-field">fax</span> <span class="field">(123) 456-7890</span></p>
                                                            </li>
                                                            <!-- // form item -->
                                                            
                                                            <li class="control-group">
                                                                <p><span class="label-field">Address</span> <span class="field"> 795 Folsom Ave, Suite 600</span></p>
                                                                <p><span class="label-field">&nbsp;</span> <span class="field">San Francisco, CA 94107</span></p>
                                                            </li>
                                                            <!-- // form item -->
                                                            
                                                            <li class="control-group">
                                                                <p><span class="label-field">Employer</span> <span class="field">Twitter, Inc.</span></p>
                                                                <p><span class="label-field">Department</span> <span class="field">sales Department</span></p>
                                                                <p><span class="label-field">Job</span> <span class="field">Manager</span></p>
                                                            </li>
                                                            <!-- // form item -->
                                                            
                                                        </ul>
                                                    </fieldset>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- // tab6 summary -->
                                        
                                        <ul class="wizard-action wizard-pager">
                                            <li><a class="previous first btn" href="javascript:void(0);">First</a></li>
                                            <li><a class="previous btn" href="javascript:void(0);"><i class="fontello-icon-left-circle2"></i> Previous</a></li>
                                            <li><a class="next last btn" href="javascript:void(0);">Last</a></li>
                                            <li><a class="next btn" href="javascript:void(0);">Next <i class="fontello-icon-right-circle2"></i></a></li>
                                            <li>
                                                <button type="submit" class="next finish btn btn-blue" href="javascript:void(0);">Send form</button>
                                            </li>
                                            <li><a class="next print btn btn-glyph" href="javascript:void(0);"><i class="fontello-icon-print-2"></i></a></li>
                                            <li><a class="next cancel btn" href="javascript:void(0);">Cancel</i></a></li>
                                        </ul>
                                        <!-- // Action --> 
                                        
                                    </div>
                                </form>
                            </div>
                            
                            <div class="page-header">
                                <h3><i class="aweso-icon-list-alt opaci35"></i> Wizard <small>navbar indicator</small></h3>
                            </div>
                            <div class="well well-black well-small wizard">
                                <form id="wizard-idicator" class="form-horizontal" method="" action="" >
                                    <div class="navbar navbar-inverse">
                                        <div class="navbar-inner">
                                            <div class="container">
                                                <ul>
                                                    <li><a href="#tab1f" data-toggle="tab">first step</a></li>
                                                    <li><a href="#tab2f" data-toggle="tab">second step</a></li>
                                                    <li><a href="#tab3f" data-toggle="tab">third ttep</a></li>
                                                </ul>
                                                <!-- use progress, progress-small or progress-mini  -->
                                                <div class="wizard-indicator">
                                                    <div id="bar" class="progress progress-success progress-striped active filled3">
                                                        <div class="filler">
                                                            <div class="bar"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-content">
                                        <div class="tab-pane" id="tab1f">
                                            <ul class="form-list label-left list-bordered dotted">
                                                <li class="control-group">
                                                    <label for="nameF" class="control-label">Name</label>
                                                    <div class="controls">
                                                        <input id="nameF" class="span6" type="text" value="" name="nameF">
                                                    </div>
                                                </li>
                                                <!-- // form item -->
                                                
                                                <li class="control-group">
                                                    <label for="userF" class="control-label">Username</label>
                                                    <div class="controls">
                                                        <input id="userF" class="span6" type="text" value="" name="userF">
                                                        <p class="help-block">Lorem ipsum dolor sit amet consectetuer convallis nisl dolor tellus porta. Curabitur accumsan tempus semper eget Aliquam ante Aliquam Curabitur odio tincidunt.</p>
                                                    </div>
                                                </li>
                                                <!-- // form item -->
                                            </ul>
                                        </div>
                                        <!-- // tab1 -->
                                        
                                        <div class="tab-pane" id="tab2f">
                                            <ul class="form-list label-left list-bordered dotted">
                                                <li class="control-group">
                                                    <label for="passwordF" class="control-label">Password</label>
                                                    <div class="controls">
                                                        <input id="passwordF" class="span4" type="password" value="" name="passwordF">
                                                    </div>
                                                </li>
                                                <!-- // form item -->
                                                
                                                <li class="control-group">
                                                    <label for="passwordConF" class="control-label">Confirm Password</label>
                                                    <div class="controls">
                                                        <input id="passwordConF" class="span4" type="password" value="" name="passwordConF">
                                                        <p class="help-block">Lorem ipsum dolor sit amet consectetuer convallis nisl dolor tellus porta. Curabitur accumsan tempus semper eget Aliquam ante Aliquam Curabitur odio tincidunt.</p>
                                                    </div>
                                                </li>
                                                <!-- // form item -->
                                            </ul>
                                        </div>
                                        <!-- // tab1 -->
                                        
                                        <div class="tab-pane" id="tab3f">
                                            <ul class="form-list label-left list-bordered dotted">
                                                <li class="control-group">
                                                    <label for="emailF" class="control-label">Email</label>
                                                    <div class="controls">
                                                        <input id="emailF" class="span6" type="text" value="" name="emailF">
                                                    </div>
                                                </li>
                                                <!-- // form item -->
                                                
                                                <li class="control-group">
                                                    <div class="controls">
                                                        <p class="help-block">Lorem ipsum dolor sit amet consectetuer convallis nisl dolor tellus porta. Curabitur accumsan tempus semper eget Aliquam ante Aliquam Curabitur odio tincidunt.</p>
                                                    </div>
                                                </li>
                                                <!-- // form item -->
                                            </ul>
                                        </div>
                                        <!-- // tab1 -->
                                        
                                        <ul class="wizard-action center">
                                            <li><a class="previous first btn btn-inverse pull-left" href="javascript:void(0);">First</a></li>
                                            <li><a class="previous btn" href="javascript:void(0);"><i class="fontello-icon-left-circle2"></i> Previous</a> </li>
                                            <li><a class="next btn" href="javascript:void(0);">Next <i class="fontello-icon-right-circle2"></i></a></li>
                                            <li><a class="next last btn btn-inverse pull-right" href="javascript:void(0);">Last</a> </li>
                                            <li>
                                                <button type="submit" class="next finish btn btn-green" href="javascript:void(0);">Send form</button>
                                            </li>
                                            <li><a class="next print btn _btn-glyph" href="javascript:void(0);"><i class="fontello-icon-print-2"></i></a> </li>
                                            <li>
                                                <div class="number-page pull-right"></div>
                                            </li>
                                        </ul>
                                        <!-- // Action --> 
                                    </div>
                                </form>
                            </div>
                        </div>
                        <!-- // column -->
                        
                    </div>
                    <!-- // Example row -->
                </div>
                
            </div>
            <!-- // page content --> 