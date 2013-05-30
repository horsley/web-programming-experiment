<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="horsley_exp1.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
        }
        .style2
        {
            width: 562px;
        }
        .style3
        {
            width: 113px;
        }
        .style4
        {
            width: 147px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" method="post">
    <div>
    
        <asp:Panel ID="Panel1" runat="server" Width="684px">
            <h1 align="center">
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                    ForeColor="Blue" style="text-align: center" Text="课程在线测试"></asp:Label>
            </h1>
            <table align="center" style="width: 58%;">
                <tr>
                    <td class="style1" colspan="3">
                        <asp:Label ID="Label5" runat="server" Text="注册用户登录"></asp:Label>
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
                        <asp:Label ID="Label2" runat="server" Text="密码："></asp:Label>
                    </td>
                    <td class="style2">
                        <asp:TextBox ID="pass" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="pass" Display="Dynamic" ErrorMessage="必须填写密码"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ControlToValidate="pass" Display="Dynamic" ErrorMessage="密码格式不正确" 
                            ValidationExpression="[A-Za-z0-9]{1,8}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        &nbsp;</td>
                    <td class="style4">
                        <asp:Label ID="Label3" runat="server" Text="类型："></asp:Label>
                    </td>
                    <td class="style2">
                        <asp:DropDownList ID="test_type" runat="server">
                            <asp:ListItem Selected="True" Value="1">基础知识</asp:ListItem>
                            <asp:ListItem Value="2">综合测试</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        &nbsp;</td>
                    <td class="style4">
                        &nbsp;</td>
                    <td class="style2">
                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="登录" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="注册新帐号" 
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
