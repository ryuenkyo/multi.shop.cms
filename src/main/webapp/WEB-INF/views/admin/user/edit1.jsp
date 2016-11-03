<%@ page contentType="text/html; charset=utf8" pageEncoding="UTF-8" language="java" errorPage=""%>
<%@ include file="/include.inc.jsp"%>
    <div id="page-content" class="page-content tab-content overflow-y">
        <div id="TabTop1" class="tab-pane padding-bottom30 active fade in">
            <div class="page-header">
                <h3><i class="aweso-icon-list-alt opaci35"></i> 用户修改 <small></small></h3>
            </div>
            <div class="row-fluid">
                <div class="span8 grider">
                    <div class="widget widget-simple">
                        <div class="widget-header">
                            <h4><i class="fontello-icon-user"></i> 账号信息 <small>(${form.username})</small></h4>
                        </div>
                        <div class="widget-content">
                            <div class="widget-body">
                                <form id="accounForm" class="form-horizontal" method="post" action="#" >
                                    <div class="row-fluid">
                                        <div class="span12">
                                            <div class="control-group no-margin-bootom">
                                                <label class="control-label label-left"> 
                                                	<img src="${userInfo.avatar}assets/img/demo/demo-avatar9604.jpg" class="thumbnail" width="96" height="96"> 
                                                </label>
                                                <div class="controls">
                                                    <address>
                                                    <h2>${userInfo.nickname}</h2>
                                                    <strong>Development manager</strong> at <strong><a href="#">ShopGate Inc.</a></strong><br>
                                                    <abbr title="Work email">e-mail:</abbr> <a href="mailto:#">${userInfo.email}</a><br>
                                                    <abbr title="Work Phone">phone:</abbr> ${userInfo.phone}
                                                    </address>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row-fluid">
                                        <div class="span12 form-dark">
                                            <fieldset>
                                                <legend>Account edit form <small>Default legend</small></legend>
                                                <ul class="form-list label-left list-bordered dotted">
                                                    <li class="section-form">
                                                        <h4>Personal data</h4>
                                                    </li>
                                                    <!-- // section form divider -->
                                                    
                                                    <li class="control-group">
                                                        <label for="nickname" class="control-label">昵称</label>
                                                        <div class="controls">
                                                            <input id="nickname" class="span6" type="text" value="" name="nickname">
                                                        </div>
                                                    </li>
                                                    <!-- // form item -->
                                                    
                                                    <li class="control-group">
                                                        <label for="realName" class="control-label">真实姓名 <span class="required">*</span></label>
                                                        <div class="controls">
                                                            <input id="realName" class="span11" type="text" name="realName" value="">
                                                        </div>
                                                    </li>
                                                    <!-- // form item -->
                                                    
                                                    <li class="control-group">
                                                        <label for="phone" class="control-label">电话 <span class="required">*</span></label>
                                                        <div class="controls">
                                                            <input id="phone" class="span11" type="text" name="phone" value="">
                                                        </div>
                                                    </li>
                                                    <!-- // form item -->
                                                    <li class="control-group">
                                                        <label for="email" class="control-label">Email <span class="required">*</span></label>
                                                        <div class="controls">
                                                            <div class="input-append block">
                                                                <input id="email" class="span6" type="text" name="email" value="">
                                                                <a class="btn fontello-icon-edit" type="button">write an email</a> </div>
                                                        </div>
                                                    </li>
                                                    <li class="control-group">
                                                        <label for="email" class="control-label">email</label>
                                                        <div class="controls">
                                                            <input id="email" class="span6" type="text" name="email" value="">
                                                        </div>
                                                    </li>
                                                    <!-- // form item -->
                                                    
                                                    <li class="control-group">
                                                        <label for="accountMiddleName" class="control-label">Middle Name / Initial</label>
                                                        <div class="controls">
                                                            <input id="accountMiddleName" class="span11" type="text" name="accountMiddleName" value="">
                                                        </div>
                                                    </li>
                                                    <!-- // form item -->
                                                    
                                                    <li class="control-group">
                                                        <label for="accountGender" class="control-label">性别</label>
                                                        <div class="controls">
                                                            <input id="accountGenderInput" type="hidden" name="gender" value="" />
                                                            <div id="accountGender" class="btn-group change" data-toggle="buttons-radio" data-target="accountGenderInput">
                                                                <button type="button" class="btn" class-toggle="btn-green" name="gender" value="male">&nbsp; 男 &nbsp;</button>
                                                                <button type="button" class="btn" class-toggle="btn-green" name="gender" value="female">女</button>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <!-- // form item -->
                                                    
                                                    <li class="control-group">
                                                        <label for="birthday" class="control-label">生日 <span class="required">*</span></label>
                                                        <div class="controls">
                                                            <input id="birthday" class="span6" type="text" name="birthday" value="">
                                                        </div>
                                                    </li>
                                                    <!-- // form item -->
                                                    
                                                    <li class="section-form">
                                                        <h4>Contact info</h4>
                                                    </li>
                                                    <!-- // section form divider -->
                                                    
                                                    <li class="control-group">
                                                        <label for="accountEmail" class="control-label">Email <span class="required">*</span></label>
                                                        <div class="controls">
                                                            <div class="input-append block">
                                                                <input id="accountEmail" class="span6" type="text" name="accountEmail" value="">
                                                                <a class="btn fontello-icon-edit" type="button">write an email</a> </div>
                                                        </div>
                                                    </li>
                                                    <!-- // form item -->
                                                    
                                                    <li class="control-group">
                                                        <label for="accountPhoneNumber" class="control-label">Phone <span class="required">*</span></label>
                                                        <div class="controls controls-row">
                                                            <input id="accountPhoneNumber" class="span6 maskPhone margin-right5" type="text" name="accountPhoneNumber" value="">
                                                            <select id="accountPhoneType" class="selectpicker" data-style="btn-info" name="accountPhoneType">
                                                                <option value="1">Work</option>
                                                                <option value="2">Home</option>
                                                                <option value="3">Next</option>
                                                            </select>
                                                        </div>
                                                    </li>
                                                    <!-- // form item -->
                                                    
                                                    <li class="control-group">
                                                        <label for="accountFaxNumber" class="control-label">Fax</label>
                                                        <div class="controls controls-row">
                                                            <input id="accountFaxNumber" class="span6 maskPhone margin-right5" type="text" name="accountFaxNumber" value="">
                                                            <select id="accountFaxType" class="selectpicker" data-style="btn-info" name="accountFaxType">
                                                                <option value="1">Work</option>
                                                                <option value="2">Home</option>
                                                                <option value="3">Next</option>
                                                            </select>
                                                            <a class="btn btn-glyph fontello-icon-plus-1" href="javascript:void(0);"></a> </div>
                                                    </li>
                                                    <!-- // form item -->
                                                    
                                                </ul>
                                            </fieldset>
                                            <fieldset>
                                                <legend class="section-form">Address <a class="btn btn-mini fontello-icon-plus-1 pull-right margin-0s" href="javascript:void(0);">Add Address</a> </legend>
                                                <ul class="form-list label-left list-bordered dotted">
                                                    <li class="control-group">
                                                        <label for="accountAddressStreet" class="control-label">Address <span class="required">*</span></label>
                                                        <div class="controls controls-row">
                                                            <input id="accountAddressStreet" class="span6 margin-right5" type="text" value="" name="accountAddressStreet">
                                                            <select id="accountAddressDestinationType" class="selectpicker" data-style="btn-info" name="accountAddressType">
                                                                <option value="1">Work</option>
                                                                <option value="2">Home</option>
                                                                <option value="3">Next</option>
                                                            </select>
                                                        </div>
                                                        <div class="controls margin-s0">
                                                            <input id="accountAddressDestination" class="span6" type="text" value="" name="accountAddressDestination">
                                                        </div>
                                                    </li>
                                                    <!-- // form item -->
                                                    
                                                    <li class="control-group">
                                                        <label for="accountAddressCity" class="control-label">City <span class="required">*</span></label>
                                                        <div class="controls">
                                                            <input id="accountAddressCity" class="span6" type="text" value="" name="accountAddressCity">
                                                        </div>
                                                    </li>
                                                    <!-- // form item -->
                                                    
                                                    <li class="control-group">
                                                        <label for="accountAddressState" class="control-label">State <span class="required">*</span></label>
                                                        <div class="controls">
                                                            <select id="accountAddressState" class="span6" name="accountAddressState">
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
                                                        <label for="accountAddressZip" class="control-label">Zip / Postal code <span class="required">*</span></label>
                                                        <div class="controls">
                                                            <input id="accountAddressZip" class="span6 maskZipcode" type="text" value="" name="accountAddressZip">
                                                        </div>
                                                    </li>
                                                    <!-- // form item -->
                                                    
                                                    <li class="control-group">
                                                        <label for="accountAddressCountry" class="control-label">Country <span class="required">*</span></label>
                                                        <div class="controls">
                                                            <input id="accountAddressCountryData" type="hidden" value="" name="accountAddressCountry">
                                                            <select id="accountAddressCountry" class="span6" name="accountAddressCountry">
                                                                <option value=""></option>
                                                                <option value="United States">United States</option>
                                                                <option value="United Kingdom">United Kingdom</option>
                                                                <option value="Afghanistan">Afghanistan</option>
                                                                <option value="Albania">Albania</option>
                                                                <option value="Algeria">Algeria</option>
                                                                <option value="American Samoa">American Samoa</option>
                                                                <option value="Andorra">Andorra</option>
                                                                <option value="Angola">Angola</option>
                                                                <option value="Anguilla">Anguilla</option>
                                                                <option value="Antarctica">Antarctica</option>
                                                                <option value="Antigua and Barbuda">Antigua and Barbuda</option>
                                                                <option value="Argentina">Argentina</option>
                                                                <option value="Armenia">Armenia</option>
                                                                <option value="Aruba">Aruba</option>
                                                                <option value="Australia">Australia</option>
                                                                <option value="Austria">Austria</option>
                                                                <option value="Azerbaijan">Azerbaijan</option>
                                                                <option value="Bahamas">Bahamas</option>
                                                                <option value="Bahrain">Bahrain</option>
                                                                <option value="Bangladesh">Bangladesh</option>
                                                                <option value="Barbados">Barbados</option>
                                                                <option value="Belarus">Belarus</option>
                                                                <option value="Belgium">Belgium</option>
                                                                <option value="Belize">Belize</option>
                                                                <option value="Benin">Benin</option>
                                                                <option value="Bermuda">Bermuda</option>
                                                                <option value="Bhutan">Bhutan</option>
                                                                <option value="Bolivia">Bolivia</option>
                                                                <option value="Bosnia and Herzegovina">Bosnia and Herzegovina</option>
                                                                <option value="Botswana">Botswana</option>
                                                                <option value="Bouvet Island">Bouvet Island</option>
                                                                <option value="Brazil">Brazil</option>
                                                                <option value="British Indian Ocean Territory">British Indian Ocean Territory</option>
                                                                <option value="Brunei Darussalam">Brunei Darussalam</option>
                                                                <option value="Bulgaria">Bulgaria</option>
                                                                <option value="Burkina Faso">Burkina Faso</option>
                                                                <option value="Burundi">Burundi</option>
                                                                <option value="Cambodia">Cambodia</option>
                                                                <option value="Cameroon">Cameroon</option>
                                                                <option value="Canada">Canada</option>
                                                                <option value="Cape Verde">Cape Verde</option>
                                                                <option value="Cayman Islands">Cayman Islands</option>
                                                                <option value="Central African Republic">Central African Republic</option>
                                                                <option value="Chad">Chad</option>
                                                                <option value="Chile">Chile</option>
                                                                <option value="China">China</option>
                                                                <option value="Christmas Island">Christmas Island</option>
                                                                <option value="Cocos (Keeling) Islands">Cocos (Keeling) Islands</option>
                                                                <option value="Colombia">Colombia</option>
                                                                <option value="Comoros">Comoros</option>
                                                                <option value="Congo">Congo</option>
                                                                <option value="Congo, The Democratic Republic of The">Congo, The Democratic Republic of The</option>
                                                                <option value="Cook Islands">Cook Islands</option>
                                                                <option value="Costa Rica">Costa Rica</option>
                                                                <option value="Cote D'ivoire">Cote D'ivoire</option>
                                                                <option value="Croatia">Croatia</option>
                                                                <option value="Cuba">Cuba</option>
                                                                <option value="Cyprus">Cyprus</option>
                                                                <option value="Czech Republic">Czech Republic</option>
                                                                <option value="Denmark">Denmark</option>
                                                                <option value="Djibouti">Djibouti</option>
                                                                <option value="Dominica">Dominica</option>
                                                                <option value="Dominican Republic">Dominican Republic</option>
                                                                <option value="Ecuador">Ecuador</option>
                                                                <option value="Egypt">Egypt</option>
                                                                <option value="El Salvador">El Salvador</option>
                                                                <option value="Equatorial Guinea">Equatorial Guinea</option>
                                                                <option value="Eritrea">Eritrea</option>
                                                                <option value="Estonia">Estonia</option>
                                                                <option value="Ethiopia">Ethiopia</option>
                                                                <option value="Falkland Islands (Malvinas)">Falkland Islands (Malvinas)</option>
                                                                <option value="Faroe Islands">Faroe Islands</option>
                                                                <option value="Fiji">Fiji</option>
                                                                <option value="Finland">Finland</option>
                                                                <option value="France">France</option>
                                                                <option value="French Guiana">French Guiana</option>
                                                                <option value="French Polynesia">French Polynesia</option>
                                                                <option value="French Southern Territories">French Southern Territories</option>
                                                                <option value="Gabon">Gabon</option>
                                                                <option value="Gambia">Gambia</option>
                                                                <option value="Georgia">Georgia</option>
                                                                <option value="Germany">Germany</option>
                                                                <option value="Ghana">Ghana</option>
                                                                <option value="Gibraltar">Gibraltar</option>
                                                                <option value="Greece">Greece</option>
                                                                <option value="Greenland">Greenland</option>
                                                                <option value="Grenada">Grenada</option>
                                                                <option value="Guadeloupe">Guadeloupe</option>
                                                                <option value="Guam">Guam</option>
                                                                <option value="Guatemala">Guatemala</option>
                                                                <option value="Guinea">Guinea</option>
                                                                <option value="Guinea-bissau">Guinea-bissau</option>
                                                                <option value="Guyana">Guyana</option>
                                                                <option value="Haiti">Haiti</option>
                                                                <option value="Heard Island and Mcdonald Islands">Heard Island and Mcdonald Islands</option>
                                                                <option value="Holy See (Vatican City State)">Holy See (Vatican City State)</option>
                                                                <option value="Honduras">Honduras</option>
                                                                <option value="Hong Kong">Hong Kong</option>
                                                                <option value="Hungary">Hungary</option>
                                                                <option value="Iceland">Iceland</option>
                                                                <option value="India">India</option>
                                                                <option value="Indonesia">Indonesia</option>
                                                                <option value="Iran, Islamic Republic of">Iran, Islamic Republic of</option>
                                                                <option value="Iraq">Iraq</option>
                                                                <option value="Ireland">Ireland</option>
                                                                <option value="Israel">Israel</option>
                                                                <option value="Italy">Italy</option>
                                                                <option value="Jamaica">Jamaica</option>
                                                                <option value="Japan">Japan</option>
                                                                <option value="Jordan">Jordan</option>
                                                                <option value="Kazakhstan">Kazakhstan</option>
                                                                <option value="Kenya">Kenya</option>
                                                                <option value="Kiribati">Kiribati</option>
                                                                <option value="Korea, Democratic People's Republic of">Korea, Democratic People's Republic of</option>
                                                                <option value="Korea, Republic of">Korea, Republic of</option>
                                                                <option value="Kuwait">Kuwait</option>
                                                                <option value="Kyrgyzstan">Kyrgyzstan</option>
                                                                <option value="Lao People's Democratic Republic">Lao People's Democratic Republic</option>
                                                                <option value="Latvia">Latvia</option>
                                                                <option value="Lebanon">Lebanon</option>
                                                                <option value="Lesotho">Lesotho</option>
                                                                <option value="Liberia">Liberia</option>
                                                                <option value="Libyan Arab Jamahiriya">Libyan Arab Jamahiriya</option>
                                                                <option value="Liechtenstein">Liechtenstein</option>
                                                                <option value="Lithuania">Lithuania</option>
                                                                <option value="Luxembourg">Luxembourg</option>
                                                                <option value="Macao">Macao</option>
                                                                <option value="Macedonia, The Former Yugoslav Republic of">Macedonia, The Former Yugoslav Republic of</option>
                                                                <option value="Madagascar">Madagascar</option>
                                                                <option value="Malawi">Malawi</option>
                                                                <option value="Malaysia">Malaysia</option>
                                                                <option value="Maldives">Maldives</option>
                                                                <option value="Mali">Mali</option>
                                                                <option value="Malta">Malta</option>
                                                                <option value="Marshall Islands">Marshall Islands</option>
                                                                <option value="Martinique">Martinique</option>
                                                                <option value="Mauritania">Mauritania</option>
                                                                <option value="Mauritius">Mauritius</option>
                                                                <option value="Mayotte">Mayotte</option>
                                                                <option value="Mexico">Mexico</option>
                                                                <option value="Micronesia, Federated States of">Micronesia, Federated States of</option>
                                                                <option value="Moldova, Republic of">Moldova, Republic of</option>
                                                                <option value="Monaco">Monaco</option>
                                                                <option value="Mongolia">Mongolia</option>
                                                                <option value="Montserrat">Montserrat</option>
                                                                <option value="Morocco">Morocco</option>
                                                                <option value="Mozambique">Mozambique</option>
                                                                <option value="Myanmar">Myanmar</option>
                                                                <option value="Namibia">Namibia</option>
                                                                <option value="Nauru">Nauru</option>
                                                                <option value="Nepal">Nepal</option>
                                                                <option value="Netherlands">Netherlands</option>
                                                                <option value="Netherlands Antilles">Netherlands Antilles</option>
                                                                <option value="New Caledonia">New Caledonia</option>
                                                                <option value="New Zealand">New Zealand</option>
                                                                <option value="Nicaragua">Nicaragua</option>
                                                                <option value="Niger">Niger</option>
                                                                <option value="Nigeria">Nigeria</option>
                                                                <option value="Niue">Niue</option>
                                                                <option value="Norfolk Island">Norfolk Island</option>
                                                                <option value="Northern Mariana Islands">Northern Mariana Islands</option>
                                                                <option value="Norway">Norway</option>
                                                                <option value="Oman">Oman</option>
                                                                <option value="Pakistan">Pakistan</option>
                                                                <option value="Palau">Palau</option>
                                                                <option value="Palestinian Territory, Occupied">Palestinian Territory, Occupied</option>
                                                                <option value="Panama">Panama</option>
                                                                <option value="Papua New Guinea">Papua New Guinea</option>
                                                                <option value="Paraguay">Paraguay</option>
                                                                <option value="Peru">Peru</option>
                                                                <option value="Philippines">Philippines</option>
                                                                <option value="Pitcairn">Pitcairn</option>
                                                                <option value="Poland">Poland</option>
                                                                <option value="Portugal">Portugal</option>
                                                                <option value="Puerto Rico">Puerto Rico</option>
                                                                <option value="Qatar">Qatar</option>
                                                                <option value="Reunion">Reunion</option>
                                                                <option value="Romania">Romania</option>
                                                                <option value="Russian Federation">Russian Federation</option>
                                                                <option value="Rwanda">Rwanda</option>
                                                                <option value="Saint Helena">Saint Helena</option>
                                                                <option value="Saint Kitts and Nevis">Saint Kitts and Nevis</option>
                                                                <option value="Saint Lucia">Saint Lucia</option>
                                                                <option value="Saint Pierre and Miquelon">Saint Pierre and Miquelon</option>
                                                                <option value="Saint Vincent and The Grenadines">Saint Vincent and The Grenadines</option>
                                                                <option value="Samoa">Samoa</option>
                                                                <option value="San Marino">San Marino</option>
                                                                <option value="Sao Tome and Principe">Sao Tome and Principe</option>
                                                                <option value="Saudi Arabia">Saudi Arabia</option>
                                                                <option value="Senegal">Senegal</option>
                                                                <option value="Serbia and Montenegro">Serbia and Montenegro</option>
                                                                <option value="Seychelles">Seychelles</option>
                                                                <option value="Sierra Leone">Sierra Leone</option>
                                                                <option value="Singapore">Singapore</option>
                                                                <option value="Slovakia">Slovakia</option>
                                                                <option value="Slovenia">Slovenia</option>
                                                                <option value="Solomon Islands">Solomon Islands</option>
                                                                <option value="Somalia">Somalia</option>
                                                                <option value="South Africa">South Africa</option>
                                                                <option value="South Georgia and The South Sandwich Islands">South Georgia and The South Sandwich Islands</option>
                                                                <option value="Spain">Spain</option>
                                                                <option value="Sri Lanka">Sri Lanka</option>
                                                                <option value="Sudan">Sudan</option>
                                                                <option value="Suriname">Suriname</option>
                                                                <option value="Svalbard and Jan Mayen">Svalbard and Jan Mayen</option>
                                                                <option value="Swaziland">Swaziland</option>
                                                                <option value="Sweden">Sweden</option>
                                                                <option value="Switzerland">Switzerland</option>
                                                                <option value="Syrian Arab Republic">Syrian Arab Republic</option>
                                                                <option value="Taiwan, Province of China">Taiwan, Province of China</option>
                                                                <option value="Tajikistan">Tajikistan</option>
                                                                <option value="Tanzania, United Republic of">Tanzania, United Republic of</option>
                                                                <option value="Thailand">Thailand</option>
                                                                <option value="Timor-leste">Timor-leste</option>
                                                                <option value="Togo">Togo</option>
                                                                <option value="Tokelau">Tokelau</option>
                                                                <option value="Tonga">Tonga</option>
                                                                <option value="Trinidad and Tobago">Trinidad and Tobago</option>
                                                                <option value="Tunisia">Tunisia</option>
                                                                <option value="Turkey">Turkey</option>
                                                                <option value="Turkmenistan">Turkmenistan</option>
                                                                <option value="Turks and Caicos Islands">Turks and Caicos Islands</option>
                                                                <option value="Tuvalu">Tuvalu</option>
                                                                <option value="Uganda">Uganda</option>
                                                                <option value="Ukraine">Ukraine</option>
                                                                <option value="United Arab Emirates">United Arab Emirates</option>
                                                                <option value="United Kingdom">United Kingdom</option>
                                                                <option value="United States">United States</option>
                                                                <option value="United States Minor Outlying Islands">United States Minor Outlying Islands</option>
                                                                <option value="Uruguay">Uruguay</option>
                                                                <option value="Uzbekistan">Uzbekistan</option>
                                                                <option value="Vanuatu">Vanuatu</option>
                                                                <option value="Venezuela">Venezuela</option>
                                                                <option value="Viet Nam">Viet Nam</option>
                                                                <option value="Virgin Islands, British">Virgin Islands, British</option>
                                                                <option value="Virgin Islands, U.S.">Virgin Islands, U.S.</option>
                                                                <option value="Wallis and Futuna">Wallis and Futuna</option>
                                                                <option value="Western Sahara">Western Sahara</option>
                                                                <option value="Yemen">Yemen</option>
                                                                <option value="Zambia">Zambia</option>
                                                                <option value="Zimbabwe">Zimbabwe</option>
                                                            </select>
                                                        </div>
                                                    </li>
                                                    <!-- // form item -->
                                                </ul>
                                            </fieldset>
                                            <!-- // fieldset Input -->
                                            <div class="form-actions">
                                                <button type="submit" class="btn btn-blue">Submit & Validate</button>
                                                <button class="btn cancel">Cancel</button>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <!-- // Widget --> 
                    
                </div>
                <!-- // Column -->
                
                <div class="span4 grider">
                    <div class="widget widget-simple widget-notes">
                        <div class="widget-header">
                            <h4><i class="fontello-icon-edit"></i> Notes</h4>
                            <div class="widget-tool"><a class="btn btn-green btn-small btn-glyph" href="javascript:void(0);"> show all</a></div>
                        </div>
                        <div class="widget-content">
                            <div class="widget-body">
                                <form id="formNotes" class="form-dark">
                                    <fieldset>
                                        <label for="accountTaxVat" class="control-label"> Title</label>
                                        <input id="accountTaxVat" class="input-block-level" type="text">
                                        <label for="accountNotes">Note Text:</label>
                                        <textarea id="accountNotes" class="input-block-level" rows="4"></textarea>
                                    </fieldset>
                                    <!-- // fieldset Input -->
                                    
                                    <button class="btn btn-yellow btn-block">Add a note</button>
                                </form>
                            </div>
                        </div>
                        <div class="widget-header">
                            <h4><i class="fontello-icon-list-alt"></i> Last Note for Account </h4>
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
                    
                </div>
                <!-- // Column --> 
                
            </div>
            <!-- // Example row --> 
        </div>
        <!-- // Example TAB 1 -->
        
        <div id="TabTop2" class="tab-pane fade padding-bottom30">
            <div class="page-header">
                <h3><i class="fontello-icon-doc-2 opaci35"></i> New Article <small>.form-horizontal</small></h3>
            </div>
            <div class="row-fluid">
                <div class="span8 grider">
                    <div class="widget well well-nice">
                        <div class="widget-header">
                            <h4><i class="fontello-icon-article-alt-1"></i> Articles <small>edit or new article</small></h4>
                        </div>
                        <div class="widget-content">
                            <div class="widget-body">
                                <form id="itemForm" class="span12 form-horizontal" method="" action="" >
                                    <div class="row-fluid">
                                        <div class="span12 form-dark">
                                            <fieldset>
                                                <ul class="form-list list-bordered dotted">
                                                    <li class="control-group">
                                                        <label for="articleTitle" class="control-label">Title <span class="required">*</span></label>
                                                        <div class="controls">
                                                            <input id="articleTitle" class="input-block-level" type="text" value="" name="articleTitle">
                                                        </div>
                                                    </li>
                                                    <!-- // form item -->
                                                    
                                                    <li class="control-group">
                                                        <label for="articleAlias" class="control-label">Alias <span class="required">*</span></label>
                                                        <div class="controls">
                                                            <input id="articleAlias" class="input-block-level " type="text" name="articleAlias" value="">
                                                        </div>
                                                    </li>
                                                    <!-- // form item -->
                                                    
                                                    <li class="control-group">
                                                        <label for="articleCategory" class="control-label">Category <span class="required">*</span></label>
                                                        <div class="controls clearfix">
                                                            <select id="articleCategory" class="span6 selecttwo" data-class="btn-info" name="articleCategory">
                                                                <option value=""></option>
                                                                <option value="1">Catagory 1</option>
                                                                <option value="2">Catagory 2</option>
                                                                <option value="3">Catagory 3</option>
                                                            </select>
                                                            <div class="popover popover-error fade right in" style="top: 153px; left: -291px; display: block;">
                                                                <div class="arrow"></div>
                                                                <div class="popover-inner">
                                                                    <div class="popover-content">
                                                                        <p>Please select a Category</p>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <!-- // form item -->
                                                    
                                                    <li class="control-group">
                                                        <label for="articleState" class="control-label">Status</label>
                                                        <div class="controls">
                                                            <select id="articleStatus" class="selectpicker input-medium" data-style="btn-info" name="articleStatus">
                                                                <option value="1">Published</option>
                                                                <option value="2">Unpublished</option>
                                                                <option value="3">Archived</option>
                                                                <option value="4">Trashed</option>
                                                            </select>
                                                        </div>
                                                    </li>
                                                    <!-- // form item -->
                                                    
                                                    <li class="control-group">
                                                        <label for="articleAccess" class="control-label">Access</label>
                                                        <div class="controls">
                                                            <select id="articleAccess" class="selectpicker input-medium" data-style="btn-info" name="articleAccess">
                                                                <option value="1">Public</option>
                                                                <option value="2">Registred</option>
                                                                <option value="3">Special</option>
                                                            </select>
                                                        </div>
                                                    </li>
                                                    <!-- // form item -->
                                                    
                                                    <li class="control-group">
                                                        <label for="articleTags" class="control-label">Tags</label>
                                                        <div class="controls">
                                                            <input id="articleTags" class="span6" type="text" name="articleTags" value="" />
                                                            <span class="help-block">Write or select a tag and press "enter" or "comma" to add them.</span> </div>
                                                    </li>
                                                    <!-- // form item -->
                                                    
                                                    <li class="control-group">
                                                        <label for="itemPublished" class="control-label">Articles </label>
                                                        <div class="controls">
                                                            <div class="well well-nice well-small">
                                                                <ul class="nav nav-pills no-margin">
                                                                    <li class="active"><a href="#TabContent" data-toggle="tab"><i class="fontello-icon-edit"></i> Content</a></li>
                                                                    <li><a href="#TabPicture" data-toggle="tab"><i class="fontello-icon-picture-1"></i> Picture</a></li>
                                                                    <li><a href="#TabGallery" data-toggle="tab"><i class="fontello-icon-picture"></i> Image Gallery</a></li>
                                                                    <li class="disabled"><a href="#TabAdditional" data-toggle="tab"><i class="fontello-icon-attach"></i> Additional Files</a></li>
                                                                </ul>
                                                                <div class="tab-content tab-content-visible">
                                                                    <div class="tab-pane active" id="TabContent">
                                                                        <textarea id="wysiBooEditorCustom" class="input-block-level" style="height: 200px" placeholder="Enter text ..."></textarea>
                                                                        <!-- // fieldset Input -->
                                                                        <div class="btn-toolbar pull-right"> <a class="btn btn-green" href="javascript:void(0);">Update</a> <a class="btn btn-red" href="javascript:void(0);">Clear</a> </div>
                                                                    </div>
                                                                    <!-- // tab 1 -->
                                                                    
                                                                    <div class="tab-pane" id="TabPicture"> </div>
                                                                    <!-- // tab 2 -->
                                                                    
                                                                    <div class="tab-pane" id="TabGallery"> </div>
                                                                    <!-- // tab 3 -->
                                                                    
                                                                    <div class="tab-pane" id="TabAdditional"> </div>
                                                                    <!-- // tab 4 --> 
                                                                    
                                                                </div>
                                                            </div>
                                                            <!-- // Tabs TOP - .tabbable-bordered --> 
                                                        </div>
                                                    </li>
                                                    <!-- // form item -->
                                                    
                                                </ul>
                                            </fieldset>
                                            <fieldset>
                                                <legend class="section-form">Publishing option </legend>
                                                <ul class="form-list label-left list-bordered dotted">
                                                    <li class="control-group">
                                                        <label for="articlePostFromTo" class="control-label">Post from - to </label>
                                                        <div class="controls">
                                                            <input id="articlePostFromTo" class="span3" type="text" name="articlePostFromTo" value="" >
                                                        </div>
                                                    </li>
                                                    <!-- // form item -->
                                                    
                                                    <li class="control-group">
                                                        <label for="articleAuthor" class="control-label">Author <span class="required">*</span></label>
                                                        <div class="controls">
                                                            <input id="articleAuthor" class="span6" type="text" value="" name="articleAuthor">
                                                        </div>
                                                    </li>
                                                    <!-- // form item -->
                                                    
                                                    <li class="control-group">
                                                        <label for="articleAuthorAlias" class="control-label">Alias author <span class="required">*</span></label>
                                                        <div class="controls">
                                                            <input id="articleAuthorAlias" class="span6" type="text" value="" name="articleAuthorAlias">
                                                        </div>
                                                    </li>
                                                    <!-- // form item -->
                                                    
                                                    <li class="control-group">
                                                        <label for="articleCreated" class="control-label">Date Creation</label>
                                                        <div class="controls">
                                                            <input id="articleCreated" class="span3" type="text" name="articleCreated" value="">
                                                        </div>
                                                    </li>
                                                    <!-- // form item -->
                                                    
                                                </ul>
                                            </fieldset>
                                            <!-- // fieldset Input -->
                                            <div class="form-actions">
                                                <button type="submit" class="btn btn-blue">Submit</button>
                                                <button class="btn">Cancel</button>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <!-- // Widget --> 
                    
                </div>
                <!-- // Column -->
                
                <div class="span4 grider">
                    <div class="widget widget-simple">
                        <div class="widget-header">
                            <h4><i class="fontello-icon-equalizer"></i> Options</h4>
                        </div>
                        <div class="widget-content">
                            <div class="widget-body">
                                <form id="formArticleSetting" class="span12 form-horizontal form-condensed form-dark label-left small-labels">
                                    <div class="row-fluid">
                                        <div class="span12">
                                            <fieldset>
                                                <ul class="form-list list-bordered dotted">
                                                    <li class="section-form">
                                                        <h4>Publishing option</h4>
                                                    </li>
                                                    <!-- // section form divider -->
                                                    
                                                    <li class="control-group">
                                                        <label for="articleCreator" class="control-label">Created by <span class="required">*</span></label>
                                                        <div class="controls">
                                                            <input id="articleCreator" class="input-block-level margin-0s" type="text" value="" name="articleCreator">
                                                            <a class="btn btn-mini btn-boo" href="javascript:void(0);">Select user</a> </div>
                                                    </li>
                                                    <!-- // form item -->
                                                    
                                                    <li class="control-group">
                                                        <label for="articleCreatorAlias" class="control-label">Created by Alias <span class="required">*</span></label>
                                                        <div class="controls">
                                                            <input id="articleCreatorAlias" class="input-block-level" type="text" value="" name="articleCreatorAlias">
                                                        </div>
                                                    </li>
                                                    <!-- // form item -->
                                                    
                                                    <li class="control-group">
                                                        <label for="articleCreatedDate" class="control-label">Created Date</label>
                                                        <div class="controls">
                                                            <input id="articleCreatedDate" class="input-block-level" type="text" name="articleCreatedDate" value="">
                                                        </div>
                                                    </li>
                                                    <!-- // form item -->
                                                    
                                                    <li class="control-group">
                                                        <label for="articlePublishingStart" class="control-label">Start Publishing</label>
                                                        <div class="controls">
                                                            <input id="articlePublishingStart" class="input-block-level" type="text" name="articlePublishingStart" value="">
                                                        </div>
                                                    </li>
                                                    <!-- // form item -->
                                                    
                                                    <li class="control-group">
                                                        <label for="articlePublishingFinish" class="control-label">Finish Publishing</label>
                                                        <div class="controls">
                                                            <input id="articlePublishingFinish" class="input-block-level" type="text" name="articlePublishingFinish" value="">
                                                        </div>
                                                    </li>
                                                    <!-- // form item -->
                                                    
                                                    <li class="control-group">
                                                        <label for="articleLanguage" class="control-label">Language</label>
                                                        <div class="controls">
                                                            <select id="articleLanguage" class="selectpicker inp input-medium" data-style="btn-boo" name="articleLanguage">
                                                                <option selected value="1">All Language</option>
                                                                <option value="2">English</option>
                                                                <option value="3">Poland</option>
                                                            </select>
                                                        </div>
                                                    </li>
                                                    <!-- // form item -->
                                                </ul>
                                            </fieldset>
                                            <!-- // fieldset Input -->
                                            <fieldset>
                                                <ul class="form-list list-bordered dotted small-labels">
                                                    <li class="section-form">
                                                        <h4>Article option</h4>
                                                    </li>
                                                    <!-- // section form divider -->
                                                    
                                                    <li class="control-group">
                                                        <label for="articleShowTitle" class="control-label">Show Title</label>
                                                        <div class="controls">
                                                            <select id="articleShowTitle" class="selectpicker input-small" data-style="btn-boo" name="articleShowTitle">
                                                                <option selected value="1">Global</option>
                                                                <option value="2">Hide</option>
                                                                <option value="3">Snow</option>
                                                            </select>
                                                        </div>
                                                    </li>
                                                    <!-- // form item -->
                                                    
                                                    <li class="control-group">
                                                        <label for="articleShowCategory" class="control-label">Show Category</label>
                                                        <div class="controls">
                                                            <select id="articleShowCategory" class="selectpicker input-small" data-style="btn-boo" name="articleShowCategory">
                                                                <option selected value="1">Global</option>
                                                                <option value="2">Hide</option>
                                                                <option value="3">Snow</option>
                                                            </select>
                                                        </div>
                                                    </li>
                                                    <!-- // form item -->
                                                    
                                                    <li class="control-group">
                                                        <label for="articleShowAutor" class="control-label">Show Autor</label>
                                                        <div class="controls">
                                                            <select id="articleShowAutor" class="selectpicker input-small" data-style="btn-boo" name="articleShowAutor">
                                                                <option selected value="1">Global</option>
                                                                <option value="2">Hide</option>
                                                                <option value="3">Snow</option>
                                                            </select>
                                                        </div>
                                                    </li>
                                                    <!-- // form item -->
                                                    
                                                    <li class="control-group">
                                                        <label for="articleLinkAutor" class="control-label">Link Autor</label>
                                                        <div class="controls">
                                                            <select id="articleLinkAutor" class="selectpicker input-small" data-style="btn-boo" name="articleLinkAutor">
                                                                <option selected value="1">Global</option>
                                                                <option value="2">Hide</option>
                                                                <option value="3">Snow</option>
                                                            </select>
                                                        </div>
                                                    </li>
                                                    <!-- // form item -->
                                                    
                                                    <li class="control-group">
                                                        <label for="articleShowCreateDate" class="control-label">Show Create Date</label>
                                                        <div class="controls">
                                                            <select id="articleShowCreateDate" class="selectpicker input-small" data-style="btn-yellow" name="articleShowCreateDate">
                                                                <option selected value="1">Global</option>
                                                                <option value="2">Hide</option>
                                                                <option value="3">Snow</option>
                                                            </select>
                                                        </div>
                                                    </li>
                                                    <!-- // form item -->
                                                    
                                                    <li class="control-group">
                                                        <label for="articleShowModifyDate" class="control-label">Show Modify Date</label>
                                                        <div class="controls">
                                                            <select id="articleShowModifyDate" class="selectpicker input-small" data-style="btn-yellow" name="articleShowModifyDate">
                                                                <option selected value="1">Global</option>
                                                                <option value="2">Hide</option>
                                                                <option value="3">Snow</option>
                                                            </select>
                                                        </div>
                                                    </li>
                                                    <!-- // form item -->
                                                    
                                                    <li class="control-group">
                                                        <label for="articleShowPublishDate" class="control-label">Show Publish Date</label>
                                                        <div class="controls">
                                                            <select id="articleShowPublishDate" class="selectpicker  input-small" data-style="btn-yellow" name="articleShowPublishDate">
                                                                <option selected value="1">Global</option>
                                                                <option value="2">Hide</option>
                                                                <option value="3">Snow</option>
                                                            </select>
                                                        </div>
                                                    </li>
                                                    <!-- // form item -->
                                                    
                                                </ul>
                                            </fieldset>
                                            <!-- // fieldset Input --> 
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <!-- // Widget -->
                    
                    <div class="widget widget-simple">
                        <div class="widget-header">
                            <h4><i class="fontello-icon-target-2"></i> Metadata Options </h4>
                        </div>
                        <div class="widget-content">
                            <div class="widget-body">
                                <form id="formA">
                                    <div class="row-fluid">
                                        <div class="span12">
                                            <fieldset>
                                                <ul class="form-list">
                                                    <li class="control-group">
                                                        <label for="metaArticleDescript" class="control-label">Article Descript</label>
                                                        <div class="controls">
                                                            <textarea id="metaArticleDescript" class="input-block-level" rows="2" placeholder="Enter description for Article ..."></textarea>
                                                        </div>
                                                    </li>
                                                    <!-- // form item -->
                                                    
                                                    <li class="control-group">
                                                        <label for="metaArticleKeywords" class="control-label">Meta Keywords</label>
                                                        <div class="controls">
                                                            <input id="metaArticleKeywords" class="input-block-level" type="text" name="metaArticleKeywords" value="" />
                                                            <span class="help-block">Write or select a tag and press "enter" or "comma" to add them.</span> </div>
                                                    </li>
                                                    <!-- // form item -->
                                                    
                                                    <li class="control-group">
                                                        <label for="articleRobots" class="control-label">Robots</label>
                                                        <div class="controls">
                                                            <select id="articleRobots" class="selectpicker input-block-level" data-style="btn-boo" name="articleRobots">
                                                                <option selected value="1">Use Global</option>
                                                                <option value="2">Index, Follow</option>
                                                                <option value="3">No index, follow</option>
                                                                <option value="4">Index, No follow</option>
                                                                <option value="5">No index, No follow</option>
                                                            </select>
                                                        </div>
                                                    </li>
                                                    <!-- // form item -->
                                                    
                                                    <li class="control-group">
                                                        <label for="metaArticleAuthor" class="control-label">Author</label>
                                                        <div class="controls">
                                                            <input id="metaArticleAuthor" class="input-block-level" type="text" name="metaArticleAuthor" value="">
                                                        </div>
                                                    </li>
                                                    <!-- // form item -->
                                                    
                                                </ul>
                                            </fieldset>
                                            <!-- // fieldset Input --> 
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <!-- // Widget --> 
                    
                </div>
                <!-- // Column --> 
                
            </div>
            <!-- // Example row --> 
        </div>
        <!-- // Example TAB 2 -->
        
        <div id="TabTop3" class="tab-pane fade">
            <div class="page-header">
                <h3><i class="aweso-icon-list-alt opaci35"></i> Text <small>here</small></h3>
            </div>
            <div class="row-fluid">
                <div class="span6 grider-item">
                </div>
                
                <div class="span6 grider-item">
                </div>
            </div>
            <!-- // Example row --> 
           
            <div class="row-fluid">
                <div class="span12">
                </div>
            </div>
            <!-- // Example row -->
            
            <div class="row-fluid">
                <div class="span12">
                </div>
            </div>
            <!-- // Example row -->
            
         </div>
        <!-- // Example TAB 3 --> 
        
    </div>
    <!-- // page content --> 
    
</div>
<!-- // main-content --> 