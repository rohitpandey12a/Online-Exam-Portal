<%@ Page Language="VB" AutoEventWireup="false" CodeFile="StartTest.aspx.vb" Inherits="StartTest" %>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <meta http-equiv="Content-Language" content="en-us">
    <title>Thakur Polytechnic - Online Registration</title>
    <link href="style/Style1.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            font-weight: normal;
            color: #FFFFFF;
            font-size: large;
            font-family: Arial;
            width: 417px;
            border-left-color: #A0A0A0;
            border-right-color: #C0C0C0;
            border-top-color: #A0A0A0;
            border-bottom-color: #C0C0C0;
            height: 37px;
        }
        .style2
        {
            width: 82%;
            height: 252px;
            margin-right: 0px;
        }
        .style4
        {
            font-family: "Times New Roman", Times, serif;
            font-size: large;
            font-weight: bold;
            color: #000000;
            background-color: #996633;
            height: 46px;
        }
        .style6
        {
            width: 273px;
            font-family: Arial;
            font-style: italic;
            font-weight: bold;
            color: #FF0000;
            height: 28px;
            background-color: #FF9966;
        }
        .style10
        {
            font-family: Arial;
            font-style: italic;
            font-weight: bold;
            color: #FF0000;
            height: 28px;
            width: 256px;
            background-color: #FF9966;
        }
        .style11
        {
            font-family: Arial;
            font-style: italic;
            font-weight: bold;
            color: #000000;
            height: 20px;
            background-color: #FFFFFF;
        }
        .style16
        {
            font-family: Arial;
            font-style: italic;
            font-weight: bold;
            color: #00FF00;
            width: 256px;
            background-color: #FF9966;
            height: 22px;
        }
        .style20
        {
            color: #00FF00;
        }
        .style22
        {
            color: #FF00FF;
        }
        .style23
        {
            font-family: Arial;
            font-style: italic;
            font-weight: bold;
            color: #000000;
            width: 256px;
            height: 10px;
            background-color: #996633;
        }
        .style27
        {
            color: #00FFFF;
        }
        .style29
        {
            color: #FF3300;
        }
        .style32
        {
            color: #FFFFFF;
        }
        .style33
        {
            height: 37px;
        }
        .style34
        {
            width: 273px;
            font-family: Arial;
            font-style: italic;
            font-weight: bold;
            color: #000000;
            background-color: #FF9966;
            height: 22px;
        }
        .style35
        {
            font-family: Arial;
            font-style: italic;
            color: #FFFFCC;
            background-color: #666699;
            height: 212px;
        }
        .style36
        {
            font-family: Arial;
            font-style: italic;
            font-weight: bold;
            color: #FFFFFF;
            height: 10px;
            background-color: #996633;
            text-align: center;
        }
        .style37
        {
            color: #000000;
        }
        .style38
        {
            text-align: left;
            font-size: small;
            font-style: normal;
            font-weight: 700;
            font-family: "Bodoni MT";
        }
        .style39
        {
            font-family: "Times New Roman", Times, serif;
            font-size: large;
            color: #FFFFFF;
        }
        .style40
        {
            font-family: "Times New Roman", Times, serif;
            font-weight: normal;
            font-size: medium;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <div align="center">
    	<table border="1" width="800" cellspacing="0" cellpadding="0" style="border-collapse: collapse" id="table3" bordercolor="#434367">
			<tr>
				<td align="left" valign="top">
		<table border="0" width="800" cellspacing="0" id="table4" height="548">
			<tr>
				<td background="images/header_background.gif" height="133" align="left" valign="top" width="796" colspan="2">
				<div align="left">
					<table border="0" width="796" id="table5" cellspacing="0">
						<tr>
							<td width="311" rowspan="5" colspan="2" align="left" valign="top">
							<img border="0" src="images/logo1.gif" width="306" height="82"></td>
							<td width="30">&nbsp;</td>
							<td style="width: 417px">&nbsp;</td>
							<td width="17">&nbsp;</td>
						</tr>
						<tr>
							<td width="30">&nbsp;</td>
							<td style="width: 417px">
							<p align="right">
                                <font color="#FFFFFF"><%=Now() %></font></td>
							<td width="17">&nbsp;</td>
						</tr>
						<tr>
							<td width="30" class="style33"></td>
							<td class="style1">THAKUR POLYTECHNIC</td>
							<td width="17" class="style33"></td>
						</tr>
						<tr>
							<td width="30" >&nbsp;</td>
							<td valign="top" style="text-align: right">
                                &nbsp; </td>
							<td width="17" >&nbsp;</td>
						</tr>
						<tr>
							<td width="30" style="height: 15px">&nbsp;</td>
							<td style="width: 417px; height: 15px;">&nbsp;</td>
							<td width="17" style="height: 15px">&nbsp;</td>
						</tr>
						<tr>
							<td width="22" style="height: 15px">&nbsp;</td>
							<td width="289" align="left" style="height: 15px">&nbsp;</td>
							<td width="30" style="height: 15px">&nbsp;</td>
							<td style="width: 417px; height: 15px;">&nbsp;</td>
							<td width="17" style="height: 15px">&nbsp;</td>
						</tr>
						<tr>
							<td width="22">&nbsp;</td>
							<td width="289" align="left">&nbsp;</td>
							<td width="30">&nbsp;</td>
							<td style="width: 417px">&nbsp;</td>
							<td width="17">&nbsp;</td>
						</tr>
						<tr>
							<td width="22">&nbsp;</td>
							<td width="289" align="left"><a href="HOME.aspx">Home</a> 
							<a href="Registration.aspx">Registration</a> &nbsp; |&nbsp;
							<a href="Login.aspx">Student Login</a></td>
							<td width="30">&nbsp;</td>
							<td style="width: 417px">
                                <p align="right"><a href="faq.asp">FAQ&#39;s</a> |&nbsp;
								<a href="contact.asp">Contact Us</a></td>
							<td width="17">&nbsp;</td>
						</tr>
					</table>
				</div>
				</td>
			</tr>
			<tr>
				<td width="135" align="left" valign="top" rowspan="2" style="border-left-width: 1px; border-top-width: 1px; border-bottom-width: 1px">
				<img border="0" src="images/admin_s.gif" width="150" height="500"></td>
				<td  align="left" valign="top" height="396" style=" padding-left:5pt; padding-top :5pt;"> 
				
				 
				
				    <div align="center" style="color: #FF00FF">
                        &nbsp;<table class="style2">
                            <tr>
                                <td class="style4" colspan="2">
                                    Start Exam Page</td>
                            </tr>
                            <tr>
                                <td class="style34">
                                    Kaushalya id</td>
                                <td class="style16">
                                    <span class="style20"><span class="style22"><span class="style27">
                                    <span class="style29"><span class="style32">
                                    <asp:TextBox ID="txtkaushalyaid" runat="server" Enabled="False"></asp:TextBox>
                                    </span></span></span></span></span>
                                    <br class="style37" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style35" align="left" colspan="2" valign="top">
                                    <p class="style38">
                                        <span class="style39">Instructions:-</span><br />
                                        <span class="style40">1) No Electronics Gadgets are allowed<br />
                                        2)Use of internet is not allowed<br />
                                        3)All questions are compulsory<br />
                                        4)Interim break is not allowed</span></p>
                                                    </td>
                            </tr>
                            <tr>
                                <td class="style6">
                                    <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" 
                                        Text="I Accept..." />
                                </td>
                                <td class="style10">
                                </td>
                            </tr>
                            <tr>
                                <td class="style36" colspan="2">
                                    <asp:Button ID="Button1" runat="server" Height="26px" Text="Start Exam" 
                                        Width="102px" Enabled="False" 
                                        style="color: #00FFFF; background-color: #FF6600" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style11" colspan="2">
                                    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </div>
				
				</td>
			</tr>
			<tr>
				<td width="661" height="19" align="left" valign="top" style="border-left-width: 1px; border-right-width: 1px; border-top-style: solid; border-top-width: 1px">
				<p align="center"> 
				    © 2019-2020, Thakur Polytechnic Online Registration                         &nbsp;ation                         &nbsp;</td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="style3">
                                                        &nbsp;</td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="style3">
                                                        &nbsp;</td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="style3">
                                                        &nbsp;</td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                            </table>
                                        </div>
				
				</td>
			</tr>
			<tr>
				<td width="661" height="19" align="left" valign="top" style="border-left-width: 1px; border-right-width: 1px; border-top-style: solid; border-top-width: 1px">
				<p align="center"> 
				    © 2019-2020, Thakur Polytechnic Online Registration</table>
	</div>
    
    </div>
    </form>
</body>
</html>

