﻿<%@ Page Title="" Language="C#" MasterPageFile="~/User/Site.Master" AutoEventWireup="true"
    CodeBehind="Order.aspx.cs" Inherits="SocialPanel.User.Order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="content" class="span10">
        <!-- content starts -->
        <div>
            <ul class="breadcrumb">
                <li><a href="#">Home</a> <span class="divider">/</span> </li>
                <li><a href="#">Order</a> </li>
            </ul>
        </div>
        <div class="row-fluid sortable">
            <div class="box span6">
                <div class="box-header well" data-original-title>
                    <h2>
                        <i class="icon-edit"></i>Add Order</h2>
                    <div class="box-icon">
                        <%--<a href="#" class="btn btn-setting btn-round"><i class="icon-cog"></i></a>--%>
                        <a href="#" class="btn btn-minimize btn-round"><i class="icon-chevron-up"></i></a>
                        <%--<a href="#" class="btn btn-close btn-round"><i class="icon-remove"></i></a>--%>
                    </div>
                </div>
                <div class="box-content">
                    <div class="form-horizontal">
                        <fieldset>
                            <legend>Add Multiple Accounts</legend>
                            <div class="control-group">
                                <label class="control-label" for="selectError3">
                                    Order Type</label>
                                <div class="controls">
                                    <asp:DropDownList ID="ddlOrderType" runat="server" AutoPostBack="True" 
                                        onselectedindexchanged="ddlOrderType_SelectedIndexChanged">
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="focusedInput">
                                    Url</label>
                                <div class="controls">
                                    <asp:TextBox ID="txtUrl" runat="server" TextMode="MultiLine" Height="200px" CssClass="input-xlarge focused" placeholder="Enter Url"></asp:TextBox>
                                    <span class="help-inline">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUrl"
                                            ErrorMessage="Please Enter Url" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator></span>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="focusedInput">
                                    Amount</label>
                                <div class="controls">
                                    <asp:TextBox ID="txtAmount" TextMode="Number" CssClass="input-xlarge focused" placeholder="Enter Amount"
                                        runat="server"></asp:TextBox>
                                    <span class="help-inline">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtAmount"
                                            ErrorMessage="Please Enter Amount" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator></span>
                                </div>
                            </div>
                            <%--<div class="control-group">
                                <label class="control-label" for="focusedInput">
                                    Account</label>
                                <div class="controls">
                                    <asp:TextBox ID="txtMaxAccount" CssClass="input-xlarge focused"
                                        runat="server" placeholder="Enter Max Amount"></asp:TextBox>
                                    <span class="help-inline">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtMaxAccount"
                                            ErrorMessage="Please Enter Max Amount" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator></span>
                                </div>
                            </div>--%>
                            <div class="control-group error">
                                <label class="control-label" for="inputError">
                                    <asp:Label ID="lblErrorMessage" runat="server" CssClass="control-label" for="inputError"></asp:Label></label>
                            </div>
                            <div >
                                <asp:Button ID="btnSubmit" runat="server" Text="Add Order" 
                                    CssClass="btn btn-primary" onclick="btnSubmit_Click" />
                                <asp:Button ID="btnReset" runat="server" CssClass="btn" 
                                    Text="Reset" onclick="btnReset_Click" />
                            </div>
                        </fieldset>
                    </div>
                </div>
                <!--/span-->
            </div>
            <div class="box span6">
                <div class="box-header well" data-original-title>
                    <h2>
                        <i class="icon-edit"></i>View Price</h2>
                    <div class="box-icon">
                        <%--<a href="#" class="btn btn-setting btn-round"><i class="icon-cog"></i></a>--%>
                        <a href="#" class="btn btn-minimize btn-round"><i class="icon-chevron-up"></i></a>
                        <%--<a href="#" class="btn btn-close btn-round"><i class="icon-remove"></i></a>--%>
                    </div>
                </div>
                <div class="box-content">
                    <div class="form-horizontal">
                        <fieldset>
                            <legend>View Price</legend>
                            <div class="control-group">
                                <label class="control-label" for="focusedInput">
                                    Min Amount</label>
                                <div class="controls">
                                    <asp:TextBox ID="txtMinAmount" runat="server" CssClass="input-xlarge focused" Enabled="false"></asp:TextBox>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="focusedInput">
                                    Max Amount</label>
                                <div class="controls">
                                    <asp:TextBox ID="txtMaxAmount" runat="server" CssClass="input-xlarge focused" Enabled="false"></asp:TextBox>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="focusedInput">
                                    Price</label>
                                <div class="controls">
                                    <asp:TextBox ID="txtPrice" runat="server" CssClass="input-xlarge focused" Enabled="false"></asp:TextBox>
                                </div>
                            </div>
                        </fieldset>
                    </div>
                </div>
                <!--/span-->
            </div>
            <!--/row-->
            <!-- content ends -->
        </div>
    </div>
</asp:Content>
