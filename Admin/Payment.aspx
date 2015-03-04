<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="Social_Media_Service_Panel.Admin.Payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="page-heading"><h1>Add Payment</h1></div>
    <table border="0" width="100%" cellpadding="0" cellspacing="0" id="content-table">
<tr>
	<th rowspan="3" class="sized"><img src="../images/shared/side_shadowleft.jpg" width="20" height="300" alt="" /></th>
	<th class="topleft"></th>
	<td id="tbl-border-top">&nbsp;</td>
	<th class="topright"></th>
	<th rowspan="3" class="sized"><img src="../images/shared/side_shadowright.jpg" width="20" height="300" alt="" /></th>
</tr>
<tr>
	<td id="tbl-border-left"></td>
	<td>
	<!--  start content-table-inner -->
	<div id="content-table-inner">
	
	<table border="0" width="100%" cellpadding="0" cellspacing="0">
	<tr valign="top">
	<td>
	
	
		<!--  start step-holder -->
		<%--<div id="step-holder">
			<div class="step-no">1</div>
			<div class="step-dark-left"><a href="">Add product details</a></div>
			<div class="step-dark-right">&nbsp;</div>
			<div class="step-no-off">2</div>
			<div class="step-light-left">Select related products</div>
			<div class="step-light-right">&nbsp;</div>
			<div class="step-no-off">3</div>
			<div class="step-light-left">Preview</div>
			<div class="step-light-round">&nbsp;</div>
			<div class="clear"></div>
		</div>--%>
		<!--  end step-holder -->
	
		<!-- start id-form -->
		<table border="0" cellpadding="0" cellspacing="0"  id="id-form">
		
        <tr>
		<th valign="top" class="style1">User Name :</th>
		<td>
            <asp:DropDownList ID="ddlUserName" runat="server" class="styledselect_form_1" >
            </asp:DropDownList>	
		</td>
		<td></td>
		</tr>

        <tr>
		<th valign="top" class="style1">Amount :</th>
		<td><asp:TextBox ID="txtAmount" 
           runat="server"  Width="184px" ></asp:TextBox></td>
		<td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
           ControlToValidate="txtAmount" ErrorMessage="*" Font-Bold="True" 
           ForeColor="Red"></asp:RequiredFieldValidator></td>
           <td>&nbsp;</td>
           <td>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ControlToValidate="txtAmount" ErrorMessage="Enter Number" 
        ValidationExpression="^\d{1,8}(\.\d{1,2})?$" 
        Font-Bold="True"></asp:RegularExpressionValidator></td>
	</tr>

        <tr>
		<th valign="top" class="style1">Payment Site :</th>
		<td><asp:TextBox ID="txtPaymentSite" 
           runat="server"  Width="184px" ></asp:TextBox></td>
           <td><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
           ControlToValidate="txtPaymentSite" ErrorMessage="*" Font-Bold="True" 
           ForeColor="Red"></asp:RequiredFieldValidator></td>
	</tr>
    
    <tr>
		<th valign="top" class="style1">Transaction Id:</th>
		<td><asp:TextBox ID="txtTransactionId" 
           runat="server"  Width="184px" ></asp:TextBox></td>
		<td><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
           ControlToValidate="txtTransactionId" ErrorMessage="*" Font-Bold="True" 
           ForeColor="Red"></asp:RequiredFieldValidator></td>
           <td>&nbsp;</td>
	</tr>

    <tr>
		<th valign="top" class="style1">&nbsp;Status :</th>
		<td>
            <asp:DropDownList ID="ddlStatus" runat="server" class="styledselect_form_1" >
            </asp:DropDownList>	
		</td>
		<td></td>
		</tr>

    <%--<tr>
		<th valign="top" class="style1">End Point :</th>
		<td><asp:TextBox ID="txtEndPoint" 
           runat="server"  Width="184px" ></asp:TextBox></td>
		<td><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
           ControlToValidate="txtEndPoint" ErrorMessage="*" Font-Bold="True" 
           ForeColor="Red"></asp:RequiredFieldValidator></td>
           <td>&nbsp;</td>
	</tr>--%>
		

        <tr>
		<th valign="top" class="style1" >Manually/Automatically :</th>
		<td>
            <asp:DropDownList ID="ddlManuAuto" runat="server" class="styledselect_form_1" >
            </asp:DropDownList>	
		</td>
		<td></td>
		</tr>

        
	<tr>
		<th class="style1">&nbsp;</th>
		<td valign="top">
            <asp:Button ID="btnSubmit" runat="server" onclick="btnSubmit_Click" class="form-submit" />
		</td>
		<td></td>
	</tr>
    
    <tr>
		<th class="style1">&nbsp;</th>
		<td valign="top">
            <asp:Label ID="lblSubmitmsg" runat="server" Font-Bold="True" ForeColor="Lime"></asp:Label>
		</td>
		<td></td>
	</tr>

     <tr>
		<th class="style1">&nbsp;</th>
		<td valign="top">
            <asp:Label ID="lblerror" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
		</td>
		<td></td>
	</tr>
	</table>
	<!-- end id-form  -->

	</td>
	<td>

	

</td>
</tr>
<tr>
<td><img src="../images/shared/blank.gif" width="695" height="1" alt="blank" /></td>
<td></td>
</tr>
</table>
 
<div class="clear"></div>
 

</div>
<!--  end content-table-inner  -->
</td>
<td id="tbl-border-right"></td>
</tr>
<tr>
	<th class="sized bottomleft"></th>
	<td id="tbl-border-bottom">&nbsp;</td>
	<th class="sized bottomright"></th>
</tr>
</table>
    
    <%--<div class="textEntry"></div>
    <div class="textEntry"></div>
    <div class="textEntry"><span class="style1"><strong>UserName</strong></span><asp:DropDownList ID="ddlUserName" runat="server" Width="244px">
    </asp:DropDownList>
&nbsp;<span class="style1"><strong> Amount</strong></span>
    <asp:TextBox ID="txtAmount" runat="server" Width="244px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="txtAmount" ErrorMessage="Enter Your Amount" 
        Font-Bold="True"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ControlToValidate="txtAmount" ErrorMessage="Please Enter Number" 
        ValidationExpression="^\d{1,8}(\.\d{1,2})?$" 
        Font-Bold="True"></asp:RegularExpressionValidator>
    </div>
    <div class="textEntry"><span class="style1"><strong>Status</strong></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="ddlStatus" runat="server" Width="244px">
    </asp:DropDownList>
&nbsp; <span class="style1"><strong>Payment Site</strong></span>
    <asp:TextBox ID="txtPaymentSite" runat="server" Width="244px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="txtPaymentSite" ErrorMessage="Enter Your Payment Site" 
        Font-Bold="True"></asp:RequiredFieldValidator>
    </div>
    <div class="textEntry"></div>
    <div class="textEntry"><span class="style1"><strong>Manually/Automatically</strong></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="ddlManuAuto" runat="server" Width="244px">
    </asp:DropDownList>
&nbsp;<span class="style1"><strong>Transaction Id</strong></span>
    <asp:TextBox ID="txtTransactionId" runat="server" Width="244px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="txtTransactionId" 
        ErrorMessage="Enter Your Transaction Id " Font-Bold="True"></asp:RequiredFieldValidator>
    </div>
    <div class="textEntry"></div>
    <div class="textEntry" align="center">
    <asp:Button ID="btnSubmit" runat="server" 
            Text="Submit" Width="147px" BackColor="Black" BorderColor="Silver" 
            BorderStyle="Double" BorderWidth="5px" CssClass="bold" Font-Overline="False" 
            Font-Strikeout="False" ForeColor="White" onclick="btnSubmit_Click" />
    </div>
    <div class="textEntry" align="center">
    <asp:Label ID="lblSubmitmsg" runat="server" Font-Bold="True" ForeColor="Lime"></asp:Label>
&nbsp;&nbsp;</div>
    <div class="textEntry" align="center">
    <asp:Label ID="lblerror" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
    </div>
<div class="textEntry"></div>
<div class="textEntry"></div>--%>
</asp:Content>
