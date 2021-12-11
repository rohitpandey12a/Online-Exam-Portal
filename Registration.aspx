<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Registration.aspx.vb" Inherits="Registration" %>

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
            width: 89%;
            height: 636px;
            margin-right: 0px;
        }
        .style4
        {
            font-family: "Times New Roman", Times, serif;
            font-size: large;
            font-weight: bold;
            color: #FFFFFF;
            background-color: #996633;
            text-align: center;
            height: 30px;
        }
        .style6
        {
            font-family: Arial;
            font-style: italic;
            font-weight: bold;
            color: #FF0000;
            height: 20px;
            background-color: #33CCFF;
        }
        .style11
        {
            font-family: Arial;
            font-style: italic;
            font-weight: bold;
            color: #FFFFFF;
            height: 20px;
            background-color: #333333;
            font-size: small;
        }
        .style14
        {
            font-family: Arial;
            font-style: italic;
            font-weight: bold;
            color: #FFFFFF;
            height: 20px;
            width: 256px;
            background-color: #00CC99;
            text-align: left;
        }
        .style16
        {
            font-family: Arial;
            font-style: italic;
            font-weight: bold;
            color: #00FF00;
            width: 256px;
            background-color: #00CC99;
            text-align: left;
            margin-left: 40px;
        }
        .style17
        {
            font-family: "Times New Roman", Times, serif;
            font-weight: bold;
            color: #000099;
            background-color: #00CC99;
            font-size: small;
        }
        .style18
        {
            width: 124px;
            font-family: "Times New Roman", Times, serif;
            font-weight: bold;
            color: #000099;
            height: 31px;
            background-color: #00CC99;
            font-size: small;
        }
        .style19
        {
            font-family: Arial;
            font-style: italic;
            font-weight: bold;
            color: #FFFFFF;
            width: 256px;
            height: 31px;
            background-color: #00CC99;
            text-align: left;
        }
        .style20
        {
            color: #00FF00;
        }
        .style22
        {
            color: #FF00FF;
        }
        .style25
        {
            width: 124px;
            font-family: "Times New Roman", Times, serif;
            font-weight: bold;
            color: #000099;
            height: 29px;
            background-color: #00CC99;
            font-size: small;
        }
        .style26
        {
            font-family: Arial;
            font-style: italic;
            font-weight: bold;
            color: #FFFFFF;
            width: 256px;
            height: 29px;
            background-color: #00CC99;
            text-align: left;
        }
        .style27
        {
            color: #00FFFF;
        }
        .style29
        {
            color: #FF3300;
        }
        .style30
        {
            font-family: Arial;
            font-style: italic;
            font-weight: bold;
            color: #FFFFFF;
            width: 256px;
            background-color: #00CC99;
            text-align: left;
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
            font-family: Arial;
            font-style: italic;
            font-weight: bold;
            color: #FFFFFF;
            height: 20px;
            background-color: #9999FF;
                font-size: small;
            margin-left: 40px;
        }
        .style35
        {
            width: 124px;
            font-family: "Times New Roman", Times, serif;
            font-weight: bold;
            color: #000099;
            background-color: #00CC99;
            height: 26px;
            font-size: small;
        }
        .style36
        {
            font-family: Arial;
            font-style: italic;
            font-weight: bold;
            color: #FFFFFF;
            width: 256px;
            background-color: #00CC99;
            text-align: left;
            height: 26px;
        }
        .style37
        {
            width: 124px;
            font-family: "Times New Roman", Times, serif;
            font-weight: bold;
            color: #000099;
            background-color: #00CC99;
            height: 28px;
            font-size: small;
        }
        .style38
        {
            font-family: Arial;
            font-style: italic;
            font-weight: bold;
            color: #FFFFFF;
            width: 256px;
            background-color: #00CC99;
            text-align: left;
            height: 28px;
        }
        .style39
        {
            font-family: "Times New Roman", Times, serif;
            font-weight: bold;
            color: #000099;
            height: 20px;
            background-color: #00CC99;
            width: 124px;
            font-size: small;
        }
        .style40
        {
            font-family: "Times New Roman", Times, serif;
            font-weight: bold;
            color: #000099;
            background-color: #00CCFF;
            font-size: small;
            height: 31px;
        }
        .auto-style1 {
            font-family: "Times New Roman", Times, serif;
            font-weight: bold;
            color: #000099;
            background-color: #00CC99;
            font-size: small;
            width: 80px;
        }
        .auto-style2 {
            width: 80px;
            font-family: "Times New Roman", Times, serif;
            font-weight: bold;
            color: #000099;
            background-color: #00CC99;
            height: 28px;
            font-size: small;
        }
        .auto-style3 {
            width: 80px;
            font-family: "Times New Roman", Times, serif;
            font-weight: bold;
            color: #000099;
            height: 29px;
            background-color: #00CC99;
            font-size: small;
        }
        .auto-style4 {
            width: 80px;
            font-family: "Times New Roman", Times, serif;
            font-weight: bold;
            color: #000099;
            background-color: #00CC99;
            height: 26px;
            font-size: small;
        }
        .auto-style5 {
            width: 80px;
            font-family: "Times New Roman", Times, serif;
            font-weight: bold;
            color: #000099;
            height: 31px;
            background-color: #00CC99;
            font-size: small;
        }
        .auto-style6 {
            font-family: "Times New Roman", Times, serif;
            font-weight: bold;
            color: #000099;
            height: 20px;
            background-color: #00CC99;
            width: 80px;
            font-size: small;
        }
    </style>
</head>
<body>
    <p>
&nbsp;&nbsp;&nbsp;
    </p>
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
                                    Registration Page</td>
                            </tr>
                            <tr>
                                <td class="style40" colspan="2">
                                    </td>
                            </tr>
                            <tr>
                                <td class="auto-style1">
                                    User&nbsp; id</td>
                                <td class="style16">
                                    <span class="style20"><span class="style22"><span class="style27">
                                    <span class="style29"><span class="style32">
                                    <asp:TextBox ID="txtkaushalyaid" runat="server"></asp:TextBox>
                                    </span></span></span></span></span>
                                    <br class="style32" />
                                    <span class="style20"><span class="style22"><span class="style27">
                                    <span class="style29"><span class="style32">
                                    <asp:Button ID="Button1" runat="server" Text="Show Details" Width="163px" 
                                        style="color: #00FFCC; background-color: #FF6600" />
                                    <br />
                                    <br />
                                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                                    </span></span></span></span></span>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">
                                    Password</td>
                                <td class="style38">
                                    <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" CausesValidation="True"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtpassword"  validationexpression="(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{8,10})$" ErrorMessage="Enter password of minimum length of 8 character with atleast 1 numeric value"></asp:RegularExpressionValidator>
                                    
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style1">
                                    Confirm Password</td>
                                <td class="style30">
                                    <asp:TextBox ID="txtconfirmpassword" runat="server" TextMode="Password"></asp:TextBox>
                                &nbsp;
                                    <asp:Label ID="Label2" runat="server" Visible="False"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style1">
                                    Full name</td>
                                <td class="style30">
                                    <asp:TextBox ID="txtFullname" runat="server" Enabled="False"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3">
                                    Address</td>
                                <td class="style26">
                                    <asp:TextBox ID="txtaddress" runat="server" Enabled="False" 
                                        TextMode="MultiLine"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4">
                                    Mobile</td>
                                <td class="style36">
                                    <asp:TextBox ID="txtmobile" runat="server" Enabled="False"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style5">
                                    Email</td>
                                <td class="style19">
                                    <asp:TextBox ID="txtemail" runat="server" Enabled="False"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4">
                                    Institute Name</td>
                                <td class="style36">
                                    <asp:TextBox ID="txtinstitutename" runat="server" Enabled="False"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">
                                    Branch</td>
                                <td class="style14">
                                    <asp:TextBox ID="txtbranch" runat="server" Enabled="False"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">
                                    Exam</td>
                                <td class="style14">
                                    <asp:DropDownList ID="ddexam" runat="server">
                                        <asp:ListItem>C Language</asp:ListItem>
                                        <asp:ListItem>Java</asp:ListItem>
                                        <asp:ListItem>C++</asp:ListItem>
                                        <asp:ListItem>pHP</asp:ListItem>
                                        <asp:ListItem>HTML</asp:ListItem>
                                        <asp:ListItem>HTML5</asp:ListItem>
                                        <asp:ListItem>Java Script</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style1">
                                    Month</td>
                                <td class="style30">
                                    <asp:DropDownList ID="ddmonth" runat="server">
                                        <asp:ListItem>January</asp:ListItem>
                                        <asp:ListItem Value="Fe">Febuary</asp:ListItem>
                                        <asp:ListItem>March</asp:ListItem>
                                        <asp:ListItem>April</asp:ListItem>
                                        <asp:ListItem>May</asp:ListItem>
                                        <asp:ListItem>June</asp:ListItem>
                                        <asp:ListItem>July</asp:ListItem>
                                        <asp:ListItem>August</asp:ListItem>
                                        <asp:ListItem>September</asp:ListItem>
                                        <asp:ListItem>October</asp:ListItem>
                                        <asp:ListItem>November</asp:ListItem>
                                        <asp:ListItem Value="D">December</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4">
                                    Year</td>
                                <td class="style36">
                                    <asp:DropDownList ID="ddyear" runat="server">
                                        <asp:ListItem>2019</asp:ListItem>
                                        <asp:ListItem>2020</asp:ListItem>
                                        <asp:ListItem>2021</asp:ListItem>
                                        <asp:ListItem>2022</asp:ListItem>
                                        <asp:ListItem>2023</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td class="style6" colspan="2">
                                </td>
                            </tr>
                            <tr>
                                <td class="style34" colspan="2">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button2" runat="server" Text="Register" 
                                        style="color: #00FFCC; background-color: #FF6600" />
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