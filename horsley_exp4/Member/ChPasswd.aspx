<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ChPasswd.aspx.cs" Inherits="Member_ChPasswd" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ChangePassword ID="ChangePassword1" runat="server" CancelButtonText="取消" 
    ChangePasswordButtonText="确认修改" ChangePasswordTitleText="修改你的密码" 
    ConfirmNewPasswordLabelText="密码确认:" 
    ConfirmPasswordCompareErrorMessage="两次输入密码不一致" 
    ConfirmPasswordRequiredErrorMessage="请再次输入新密码以确认" NewPasswordLabelText="新密码:" 
    NewPasswordRegularExpressionErrorMessage="请输入一个不同的密码" 
    NewPasswordRequiredErrorMessage="请输入新密码" PasswordLabelText="原密码:" 
    PasswordRequiredErrorMessage="请输入原密码" SuccessText="你的密码已经修改成功" 
    SuccessTitleText="修改密码完成">
</asp:ChangePassword>
</asp:Content>

