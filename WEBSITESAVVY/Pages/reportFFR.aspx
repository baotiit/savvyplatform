﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reportFFR.aspx.cs" Inherits="WEBSITESAVVY.Pages.reportSP" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>report FFR</title>
    <link rel="stylesheet" type="text/css" href="../Content/themes/default/easyui.css"/>
	<link rel="stylesheet" type="text/css" href="../Content/themes/icon.css"/>

    <script type="text/javascript" src="../js/jquery-1.4.min.js"></script>
    <style type="text/css">
        @page :first {
              margin: 5mm 7.5mm 0 15mm;   
        }
        @page {
              size: A4 portrait;
              margin: 7mm 7.5mm 0 15mm;
        }
        
        body
        {
            width:900px;
            margin:0px auto;
            font-size:19px;
            background:#FFF;
            line-height:1.5;
            font-family:Times New Roman;
        }
        
        .page
        {
            background: #fff;
            width: 100%;
            page-break-after: always;
        }
        
        .body
        {
            background:FFF;
            height:93%;
            width: 888px;
        }
        .footer
        {
            background:#fff;
            height:7%;
            width:100%;
        }
        
        .tool_bottom
        {
	        padding:5px; position: fixed; bottom: 0px; left: 0px; background:#EAEAEA; width:100%; border-top:1px solid #DDD; text-align:center;
        }
        
        h1, h2, h3, h4
        {
            padding:0px;
            margin:0px 0px;
        }
        
        table
        {
            border: 0px;
        }
        
        table td 
        {
            vertical-align:top;
            margin-left: 80px;
        }
        
        p {
            margin:0px 0px 10px;
            padding:0px;   
        }

        .align-left
        {
            text-align:left!important;
            margin-left: 5px;
        }
        
        .align-left p
        {
            text-align:left!important;
        }
        .align-right
        {
            text-align:right;
            margin-left: 5px;
        }
        
        .bg_text
        {
            /*background:#f0f0f0;*/
            font-weight:bold;
            font-size:20px;
            padding:0px 5px;
        }
        
        .align-center
        {
            text-align:center;
        }
        
        .title_2
        {
            /*text-decoration:underline; */
            font-style:italic;
            margin-top:15px;
        }
        
        
        .field_input
        {
            /*border-left: 1.5px solid #FFFFFF;
            border-right: 1.5px solid #FFFFFF;
            border-top: 1.5px solid #FFFFFF;
            border-bottom: 1.5px solid #DCDCDC;
           
            color: #000080;
            
            margin-top: 1px;
            margin-bottom: 2px;
            margin-left: 82px;*/
        }
        
        .hr
        {
            height: 1px;
            background: none repeat scroll 0% 0% #008000;
            margin-bottom: 10px;
        }
        
        .gridview
        {
            width: 100%;
            border: 1px solid #CDCDCD;
            border-collapse: collapse;
        }
    
        .gridview  td 
        {
            border: 1px solid #CDCDCD;
            padding: 7px 5px 2px 5px;
            height: 25px;
            /*color: #004033;*/
            vertical-align:top;
        }
        
        .dislay-block
        {
            display:block ! important;
        }
       
        .box
        {
            margin:10px 5px 20px 0;
        }
      
        .box *
        {
            font-size:19px!important;
        }  
        
        .box h3
        {
            font-size:22px!important;
            margin:10px 0px 15px 0px;
        }  
      
        

        
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="page1" >
            <div id="body1" class="body">
                <div id="header">
                    <div style="height:30px"></div>
                    <div style="float:left; width:65%; clear:both;"><img src="../images/banner.jpg" width="100%" alt="" /></div>
            
                    <div>
                        <asp:Label ID="lblNgayMoPR" runat="server" Text="Ngày 5/3/2014."
                              CssClass="title_2" Width="581px" 
                            Font-Size="18px" ></asp:Label>
                    </div>
                    <div style="text-align:center; margin-bottom:15px">
                        <table style="width:100%">
                            <tr valign="middle">
                                <td class="align-left" style="width:50%"><i><u>Tham chiếu KH:</u> <asp:Label 
                                        ID="lblRefKH" runat="server" 
                                    Width="279px"  CssClass="field_input" ></asp:Label> </i>

                                
                                    </i></td>
                                <td class="align-left" style="color:#006600;"><i><u>Tham chiếu Savvy:</u> </i><asp:Label ID="lblTenClaim" runat="server" 
                                    Text="SR01+ CL.TENCLAIM" Width="275px" 
                                    ForeColor="#006600" Font-Bold=True CssClass="field_input" ></asp:Label></td>
                            </tr>
                        </table>
                    </div>

                    <div>
                        <h3><asp:Label ID="lblTenNhaBH" runat="server" 
                            Text="TEN NHÀ BẢO HIỂM" Width="800px" 
                            CssClass="field_input" Font-Bold="True" ></asp:Label></h3>
                        <h3><asp:Label ID="lblTenDonVi" runat="server" 
                                    Text="TEN DON VI" Width="800px" 
                                    CssClass="field_input" Font-Bold="True" ></asp:Label></h3>
                        <div style="font:20px; margin-bottom:10px" ><i>
                            <u><asp:Label  runat="server" >Địa chỉ</asp:Label>:</u>
                            <asp:Label ID="lblDiaChiNBH" runat="server" Width="800px"  ></asp:Label></i>
                        </div>

                        <table width="100%" >
                            <tr>
                                <td style="width:200px"><b><u>Kính gửi:</u></b></td>
                                <td >
                                    <asp:Label ID="lblKinhGui" runat="server" Width="760px" 
                                        CssClass="field_input" Font-Bold=True Font-Size="20px" ></asp:Label>
                                </td>
                            </tr>
                        </table>

                    </div>
                </div>

                <div id="content">
                    


                    <table width="750px" cellspacing="10px" >

                        <tr>
                            <td colspan="3" style="text-align:center; " class="style1"  >
                                <div class="bg_text" style="margin:3px 5px">
                                    <h2 style="padding-top:10px; padding-bottom:5px; margin:0"  >BÁO CÁO GIÁM ĐỊNH<br /></h2>
                                    
                                    <asp:Label ID="lblBrief" runat="server" Width="90%" 
                                        ForeColor="#006600" Font-Bold=True CssClass="field_input" 
                                        Font-Italic="True" ></asp:Label>
                                    
                                </div>
                            </td>
                        </tr>

                        <tr style="display:none;">
                            <td>
                                <asp:Label  runat="server" 
                                    Text="BÁO CÁO TRƯỚC" 
                                    Width="260px" CssClass=" bg_text" ></asp:Label>
                            </td>
                            <td>:</td>
                            <td >
                                <asp:Label ID="lblDateILA" runat="server" Width="570px" 
                                    CssClass="field_input" Font-Bold=False ></asp:Label>
                                    <%--<asp:Label ID="lblILADATE" runat="server" 
                                    CssClass="field_input" Font-Bold=False ></asp:Label>--%>
                            </td>
                        </tr>

                        <tr>
                            <td >
                                <asp:Label   runat="server" 
                                    Text="HỢP ĐỒNG BẢO HIỂM SỐ" 
                                    Width="260px" CssClass="bg_text" ></asp:Label>
                            </td>
                            <td>:</td>
                            <td >
                                <asp:Label ID="lblPolicyNo" runat="server" Width="570px" 
                                    CssClass="field_input" Font-Bold="True" Font-Size="20px" ></asp:Label>
                            </td>
                        </tr>


                        <tr>
                            <td >
                                <asp:Label ID="Label7"  runat="server" 
                                    Text="TÊN VÀ ĐỊA CHỈ <br/> NGƯỜI ĐƯỢC BẢO HIỂM" 
                                    Width="260px" CssClass=" bg_text" ></asp:Label>
                            </td>
                            <td>:</td>
                            <td  >
                                <asp:Label ID="lblTenKH" runat="server" Width="570px" 
                                    CssClass="field_input" Font-Bold="true" Font-Size="20px" ></asp:Label><br />
                                <asp:Label ID="lblDiaChiKH" runat="server" Width="570px" 
                                    CssClass="field_input" Font-Bold=False ></asp:Label><br />
                            </td>
                        </tr>

                        <tr style="display:none">
                            <td>
                                <asp:Label runat="server" 
                                    Text="LĨNH VỰC KINH DOANH" 
                                    Width="260px" CssClass=" bg_text" ></asp:Label>
                            </td>
                            <td>:</td>
                            <td >
                                <asp:Label ID="lblLinhVucKinhDoanh" runat="server" Width="570px" 
                                    CssClass="field_input" Font-Bold=False ></asp:Label>
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <asp:Label ID="Label9"  runat="server" 
                                    Text="ĐỊA ĐIỂM TỔN THẤT" 
                                    Width="260px" CssClass=" bg_text" ></asp:Label>
                            </td>
                            <td>:</td>
                            <td >
                                <asp:Label ID="lblPremises" runat="server" Width="570px" 
                                    CssClass="field_input" Font-Bold=False ></asp:Label>
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <asp:Label ID="Label11"  runat="server" 
                                    Text="NGÀY GIỜ TỔN THẤT" 
                                    Width="260px" CssClass=" bg_text" ></asp:Label>
                            </td>
                            <td>:</td>
                            <td >
                                <asp:Label ID="lblDOL" runat="server" Width="570px" 
                                    CssClass="field_input" Font-Bold=False ></asp:Label>
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <asp:Label ID="Label13"  runat="server" 
                                    Text="NGUYÊN NHÂN" 
                                    Width="260px" CssClass=" bg_text" ></asp:Label>
                            </td>
                            <td>:</td>
                            <td >
                                <asp:Label ID="lblSortCause" runat="server" Width="570px" 
                                    CssClass="field_input" Font-Bold=False ></asp:Label>
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <asp:Label ID="Label15"  runat="server" 
                                    Text="PHẠM VI TỔN THẤT" 
                                    Width="260px" CssClass=" bg_text" ></asp:Label>
                            </td>
                            <td>:</td>
                            <td >
                                <asp:Label ID="lblPhamViTonThat" runat="server" Width="570px" 
                                    CssClass="field_input" Font-Bold=False ></asp:Label>
                            </td>
                        </tr>

                        <tr>
                            <td >
                                <asp:Label ID="Label17"  runat="server" 
                                    Text="QUY TẮC VÀ TÓM LƯỢC<BR/>HỢP ĐỒNG BẢO HIỂM" 
                                    Width="260px" CssClass=" bg_text" ></asp:Label>
                            </td>
                            <td>:</td>
                            <td >
                                <asp:Label ID="lblNamPolicy" runat="server" Width="570px" 
                                    CssClass="field_input" Font-Bold="true" ></asp:Label><br />

                                <table>
                                    <tr>
                                        <td><span><b>1. <u>Tổng số tiền bảo hiểm:</u></b></span></td>
                                        <td><asp:Label ID="lblSumInSured" runat="server" Width="354px"  Font-Bold=False ></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td><span><b>2. <u>Thời hạn bảo hiểm:</u></b></span> </td>
                                        <td><asp:Label ID="lblEffective" runat="server"  Width="354px" Font-Bold=False ></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td><span><b>3. <u>Mức miễn thưởng:</u></b></span> </td>
                                        <td><asp:Label ID="lblMucMienThuong" runat="server" Width="354px" Font-Bold=False ></asp:Label></td>
                                    </tr>
                                </table>


                            </td>
                        </tr>

                        <tr>
                            <td>
                                <asp:Label ID="Label19"  runat="server" 
                                    Text="ĐIỀU KHOẢN BỔ XUNG" 
                                    Width="260px" CssClass=" bg_text" ></asp:Label>
                            </td>
                            <td>:</td>
                            <td >
                                <asp:Label ID="lblDKBX" runat="server" Width="570px" 
                                    CssClass="align-left" Font-Bold=False ></asp:Label>
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <asp:Label ID="Label21"  runat="server" 
                                    Text="KHIẾU NẠI CỦA NĐBH" 
                                    Width="260px" CssClass=" bg_text" ></asp:Label>
                            </td>
                            <td>:</td>
                            <td >
                                <asp:Label ID="lblKhieuNai" runat="server" Width="570px" 
                                    CssClass="field_input" Font-Bold="true" ></asp:Label>
                            </td>
                        </tr>


                        <tr>
                            <td>
                                <asp:Label  runat="server" 
                                    Text="THIỆT HẠI HỢP LÝ" 
                                    Width="260px" CssClass=" bg_text" ></asp:Label>
                            </td>
                            <td>:</td>
                            <td >
                                <asp:Label ID="lblThietHaiHopLy" runat="server" Width="570px" 
                                    CssClass="field_input" Font-Bold="True" Font-Size="22px" ></asp:Label>
                            </td>
                        </tr>
                          <tr>
                            <td>
                                <asp:Label ID="Label1"  runat="server" 
                                    Text="THUỘC PHẠM VI HĐBH" 
                                    Width="260px" CssClass=" bg_text" ></asp:Label>
                            </td>
                            <td>:</td>
                            <td >
                                <asp:Label ID="lblTonThatHopLy" runat="server" Width="570px" 
                                    CssClass="field_input" Font-Bold="True" Font-Size="22px" ></asp:Label>
                            </td>
                        </tr>
                          <tr>
                            <td>
                                <asp:Label ID="Label3"  runat="server" 
                                    Text="TRỪ GIÁ TRỊ THU HỒI" 
                                    Width="260px" CssClass=" bg_text" Font-Italic="True" ></asp:Label>
                            </td>
                            <td>:</td>
                            <td >
                                <asp:Label ID="lblTruGiaTriThuHoi" runat="server" Width="570px" 
                                    CssClass="field_input" Font-Bold="True" Font-Size="22px" ></asp:Label>
                            </td>
                        </tr>
                          <tr>
                            <td>
                                <asp:Label ID="Label5"  runat="server" 
                                    Text="TRỪ MỨC MIỄN THƯỜNG" 
                                    Width="260px" CssClass=" bg_text" Font-Italic="True" ></asp:Label>
                            </td>
                            <td>:</td>
                            <td >
                                <asp:Label ID="lblTruMucMienThuong" runat="server" Width="570px" 
                                    CssClass="field_input" Font-Bold="True" Font-Size="22px" ></asp:Label>
                            </td>
                        </tr>
                          <tr>
                            <td>
                                <asp:Label ID="Label8"  runat="server" 
                                    Text="ĐỀ XUẤT BỒI THƯỜNG" 
                                    Width="260px" CssClass=" bg_text" ></asp:Label>
                            </td>
                            <td>:</td>
                            <td >
                                <asp:Label ID="lblBoiThuong" runat="server" Width="570px" 
                                    CssClass="field_input" Font-Bold="True" Font-Size="22px" ></asp:Label>
                            </td>
                        </tr>

                    </table>

                </div>
            
            </div>
            <div style="clear:both; page-break-after: always;"><br /></div>
             <!--<div id="footer1" class="footer"><img src="../images/footer_pdf.jpg" width="100%" alt="" /></div>    -->
        </div>


        <div class="page">
            <div class="body">

                <table width="100%" style="display:none">
                    <tr>
                        <td style="width:80%; height:90px" >
                            <div style="padding-top:15px;">
                                <asp:Label ID="Label18" runat="server" 
                                 Text="Tham chiếu <i>(Savvy’s Ref.) </i> :" 
                                 Width="239px" 
                                 ForeColor="#006600" Font-Bold="True" Font-Size="20px" ></asp:Label>

                                 <asp:Label ID="lblTenClaim1" runat="server" 
                                    Text="PR_1413BMSG-TP-PAR (SR01+ CL.TENCLAIM)" Width="509px" 
                                    ForeColor="#006600" Font-Bold="True" Font-Size="20px" ></asp:Label>
                            </div>
                            <div style="padding-top:5px;">
                                
                                <asp:Label runat="server"  
                                 ForeColor="#006600" Font-Bold="True" Font-Size="20px" ID="lblBrief1" ></asp:Label>
                            </div>
                            
                        </td>
                        <td><img src="../images/logo.png" height="90px"></td>
                    </tr>
                </table>
                <div class="hr"></div>

                <h3 style="text-align:center; font-size:25px!important; color:#006600; margin:20px 0px 0px 0">MỤC LỤC BÁO CÁO</h3>
                                <table style="cursor:pointer" cellpadding="20px" width="100%" >
                    <tr><td onclick="window.location.href ='#ExecutiveSummaryFR'"><b style="float:left">I. TÓM TẮT VỤ VIỆC </b>
                        <div style="float:right; text-align:right;" >..................................................................................................................................</div></td></tr>
                    <tr><td onclick="window.location.href ='#GioiThieu'"><b style="float:left">II. NGƯỜI ĐƯỢC BẢO HIỂM </b>
                        <div style="float:right; text-align:right;" >.....................................................................................................................</div></td></tr>
                    <tr><td onclick="window.location.href ='#K'"><b style="float:left">III. QUÁ TRÌNH XỬ LÝ VÀ KHIẾU NẠI </b>
                        <div style="float:right; text-align:right;" >.....................................................................................................</div></td></tr>
                    <tr><td onclick="window.location.href ='#C1'"><b style="float:left">IV. DIỄN BIẾN TỔN THẤT </b>
                        <div style="float:right; text-align:right;" >.........................................................................................................................</div></td></tr>
                    <tr><td onclick="window.location.href ='#C3'"><b style="float:left">V. NGUYÊN NHÂN </b>
                        <div style="float:right; text-align:right;" >.......................................................................................................................................</div></td></tr>
                    <tr><td onclick="window.location.href ='#E1'"><b style="float:left">VI. PHẠM VI BẢO HIỂM </b>
                        <div style="float:right; text-align:right;" >.............................................................................................................................</div></td></tr>
                    <tr><td onclick="window.location.href ='#D1'"><b style="float:left">VII. PHẠM VI VÀ MỨC ĐỘ THIỆT HẠI </b>
                        <div style="float:right; text-align:right;" >....................................................................................................</div></td></tr>
                    <tr><td onclick="window.location.href ='#B1'"><b style="float:left">VIII. YÊU CẦU BỒI THƯỜNG VÀ ĐỀ XUẤT TÍNH TOÁN </b>
                        <div style="float:right; text-align:right;" >......................................................................</div></td></tr>
                    <tr><td onclick="window.location.href ='#G'"><b style="float:left">IX. ĐƠN BẢO HIỂM KHÁC </b>
                        <div style="float:right; text-align:right;" >.........................................................................................................................</div></td></tr>
                    <tr><td onclick="window.location.href ='#H'"><b style="float:left">X. GIÁ TRỊ THU HỒI  </b>
                        <div style="float:right; text-align:right;" >....................................................................................................................................</div></td></tr>
                    <tr><td onclick="window.location.href ='#B2'"><b style="float:left">XI. ĐỀ XUẤT CHUNG CUỘC </b>
                        <div style="float:right; text-align:right;" >......................................................................................................................</div></td></tr>
                    <tr><td onclick="window.location.href ='#Conclution'"><b style="float:left">XII. KẾT LUẬN </b>
                        <div style="float:right; text-align:right;" >..............................................................................................................................................</div></td></tr>
                
                </table>


            </div>
            <!--<div id="footer1" class="footer"><img src="../images/footer_pdf.jpg" width="100%" alt="" /></div>-->
        </div>




        <div class="box" >
            <h3 id="ExecutiveSummaryFR" key="ExecutiveSummaryFR" title="Executive Summary" onclick="parent.updateField(this);">I. TÓM TẮT VỤ VIỆC</h3>
            <div>
                <asp:Label ID="lblExecutiveSummaryFR" runat="server" Width="100%" ></asp:Label>
            </div>
        </div>

        <div class="box" >
            <h3 id="GioiThieu" key="GioiThieu" title="Insured" onclick="parent.updateField(this);">II. NGƯỜI ĐƯỢC BẢO HIỂM </h3>
            <div>
                <asp:Label ID="lblGioiThieu" runat="server" Width="100%" ></asp:Label>
            </div>
        </div>

        <div class="box" >
            <h3 id="K" key="K" title="Claim handling Process" onclick="parent.updateField(this);">III. QUÁ TRÌNH XỬ LÝ VÀ KHIẾU NẠI</h3>
            <div><asp:Label ID="lblK" runat="server" Width="100%" ></asp:Label></div>
        </div>

        <div class="box" >
            <h3 id="C1" key="DienBienTonThat" title="Circumstance" onclick="parent.updateField(this);">IV. DIỄN BIẾN TỔN THẤT</h3>
            <div>
                <asp:Label ID="lblDienBienTonThat" runat="server" Width="100%" ></asp:Label>
            </div>
        </div>

        <div class="box" >
            <h3 id="C3" key="C3FR" title="Cause of loss" onclick="parent.updateField(this);">V. NGUYÊN NHÂN</h3>
            <div><asp:Label ID="lblC3" runat="server" Width="100%" ></asp:Label></div>
        </div>

        <div class="box" >
            <h3 id="E1" key="E2" title="Policy liability" onclick="parent.updateField(this);">VI. PHẠM VI BẢO HIỂM</h3>
            <div><asp:Label ID="lblE2" runat="server" Width="100%" ></asp:Label></div>
        </div>

        <div class="box" >
            <h3 id="D1" key="D1" title="Extent of Damage" onclick="parent.updateField(this);">VII. PHẠM VI VÀ MỨC ĐỘ THIỆT HẠI</h3>
            <div><asp:Label ID="lblD1" runat="server" Width="100%" ></asp:Label></div>
        </div>

        <div class="box" >
            <h3 id="B1" key="B1" title="Claim amount and proposed settlement" onclick="parent.updateField(this);">VIII. YÊU CẦU BỒI THƯỜNG VÀ ĐỀ XUẤT TÍNH TOÁN</h3>
            <div><asp:Label ID="lblB1" runat="server" Width="100%" ></asp:Label></div>
        </div>

        <div class="box" >
            <h3 id="G" key="G" title="Other Insurance" onclick="parent.updateField(this);">IX. ĐƠN BẢO HIỂM KHÁC</h3>
            <div><asp:Label ID="lblG" runat="server" Width="100%" ></asp:Label></div>
        </div>

        <div class="box" >
            <h3 id="H" key="H" title="Salvage" onclick="parent.updateField(this);">X. GIÁ TRỊ THU HỒI</h3>
            <div><asp:Label ID="lblH" runat="server" Width="100%" ></asp:Label></div>
        </div>

        <div class="box" >
            <h3 id="B2"  key="B2" title="Final Proposed Settlement" onclick="parent.updateField(this);">XI. ĐỀ XUẤT CHUNG CUỘC</h3>
            <div><asp:Label ID="lblB2" runat="server" Width="100%" ></asp:Label></div>
        </div>

        <div class="box" >
            <h3 id="Conclution"  key="Conclution" title="Conclution" onclick="parent.updateField(this);">XII. KẾT LUẬN</h3>
            <div><asp:Label ID="lblConclution" runat="server" Width="100%" ></asp:Label></div>
        </div>


        <!--tool bottom-->
        <script language="javascript">
            function printPDF() {
                $('.tool_bottom').css("display", "none");
                window.print();
                $('.tool_bottom').css("display", "inherit");
            }
        </script>
        <div id="tool_bottom" runat="server" class="tool_bottom" >
            <button class="btn" onclick="printPDF();" >Export to PDF</button>
             <button class="btn" onclick="window.open('../Pages/reportFFR_word.aspx','_blank');">Export To Word</button>
        </div>
        <div style="height:40px;"></div>
        <!--end tool bottom-->

    </form>
</body>
</html>

