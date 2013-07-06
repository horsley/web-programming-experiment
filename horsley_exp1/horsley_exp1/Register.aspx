<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="horsley_exp1.Register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
    <style type="text/css">

        .style3
        {
            width: 113px;
        }
        .style2
        {
            width: 562px;
        }
        .style4
        {
            width: 135px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
    </div>
    <div>
    
        <asp:Panel ID="Panel1" runat="server" Width="684px">
            <h1 align="center">
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                    ForeColor="Blue" style="text-align: center" Text="课程在线测试"></asp:Label>
            </h1>
            <table align="center" style="width: 69%;">
                <tr>
                    <td class="style1" colspan="3">
                        <asp:Label ID="Label5" runat="server" Text="用户注册"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        &nbsp;</td>
                    <td class="style4">
                        <asp:Label ID="Label1" runat="server" Text="帐号："></asp:Label>
                    </td>
                    <td class="style2">
                        <asp:TextBox ID="user" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="user" Display="Dynamic" ErrorMessage="必须填写帐号"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        &nbsp;</td>
                    <td class="style4">
                        <asp:Label ID="Label6" runat="server" Text="密码："></asp:Label>
                    </td>
                    <td class="style2">
                        <asp:TextBox ID="pass0" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="pass" Display="Dynamic" ErrorMessage="必须填写密码"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                            ControlToValidate="pass" Display="Dynamic" ErrorMessage="密码格式不正确" 
                            ValidationExpression="[A-Za-z0-9]{1,8}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        &nbsp;</td>
                    <td class="style4">
                        <asp:Label ID="Label2" runat="server" Text="确认密码："></asp:Label>
                    </td>
                    <td class="style2">
                        <asp:TextBox ID="pass" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="pass0" Display="Dynamic" ErrorMessage="必须填确认密码"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" 
                            ControlToCompare="pass" ControlToValidate="pass0" Display="Dynamic" 
                            ErrorMessage="两次密码不一致"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        &nbsp;</td>
                    <td class="style4">
                        <asp:Label ID="Label3" runat="server" Text="Email："></asp:Label>
                    </td>
                    <td class="style2">
                        <asp:TextBox ID="email" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="email" Display="Dynamic" ErrorMessage="必须填写电子邮件"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ControlToValidate="email" ErrorMessage="不合法的电子邮件地址" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        &nbsp;</td>
                    <td class="style4">
                        &nbsp;</td>
                    <td class="style2">
                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="注册" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="返回登录页面" 
                            CausesValidation="False" />
                    </td>
                </tr>
            </table>
            <br />
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
