<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Result.aspx.vb" Inherits="Result" %>

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
            font-family: Arial;
            font-size: large;
            text-decoration: underline;
            font-style: italic;
            font-weight: bold;
            color: #000000;
            background-color: #FFFFFF;
            height: 46px;
        }
        .style6
        {
            width: 273px;
            font-family: Arial;
            font-style: italic;
            font-weight: bold;
            color: #FF0000;
            height: 30px;
            background-color: #FFCC66;
        }
        .style10
        {
            font-family: Arial;
            font-style: italic;
            font-weight: bold;
            color: #FF0000;
            height: 30px;
            width: 256px;
            background-color: #FFCC66;
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
            background-color: #6A0000;
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
            background-color: #FFCC66;
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
            font-family: "Times New Roman", Times, serif;
            font-weight: bold;
            color: #FFFFFF;
            background-color: #6A0000;
            height: 22px;
            font-size: small;
        }
        .style35
        {
            font-family: Arial;
            font-style: italic;
            font-weight: bold;
            color: #000000;
            background-color: #FFCC66;
            height: 21px;
        }
        .style36
        {
            font-family: Arial;
            font-style: italic;
            font-weight: bold;
            color: #FFFFFF;
            height: 10px;
            background-color: #FFCC66;
        }
        .style37
        {
            color: #000000;
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
							<td class="style1">VARTAK POLYTECHNIC</td>
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
							<a href="Registration.aspx">Registration</a> 
							<a href="StartTest.aspx">Test</a>&nbsp; |&nbsp;
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
                                    Result Page</td>
                            </tr>
                            <tr>
                                <td class="style34">
                                    Kaushalya id</td>
                                <td class="style16">
                                    <span class="style20"><span class="style22"><span class="style27">
                                    <span class="style29"><span class="style32">
                                    <asp:TextBox ID="txtkaushalyaid" runat="server" Visible="False"></asp:TextBox>
                                    </span></span></span></span></span>
                                    <br class="style37" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style34" colspan="2">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style35" colspan="2">
                                    <asp:GridView ID="GridView1" runat="server" 
                                        style="text-align: left; color: #000099; margin-right: 0px" Width="352px">
                                    </asp:GridView>
                                </td>
                            </tr>
                            <tr>
                                <td class="style6">
                                    <asp:Label ID="Label2" runat="server" Text="Total marks"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="txttotalmarks" runat="server"></asp:TextBox>
                                </td>
                                <td class="style10">
                                    <asp:Label ID="Label3" runat="server" Text="Percentage"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="txtpercentage" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style36">
                                    <asp:Button ID="Button1" runat="server" Height="26px" Text="Login" 
                                        Width="102px" style="color: #00FFFF; background-color: #FF6600" />
                                </td>
                                <td class="style23">
                                    <asp:Button ID="Button2" runat="server" Height="26px" Text="Reset" 
                                        Width="102px" style="color: #00FFFF; background-color: #FF6600" />
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

