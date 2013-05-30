<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Exam1.aspx.cs" Inherits="horsley_exp1.Exam1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
    <script type="text/javascript">
    
      function pageLoad() {
      }
    
    </script>
</head>
<body>
    <form id="form1" runat="server" method="post">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
    </div>
    <h1 align="center">
        <asp:Label ID="Label1" runat="server" Text="综合测试1"></asp:Label>
    </h1>
    <p align="center">
        用户：<% Response.Write(Request.QueryString["user"]); %>   
        成绩：<% Response.Write(score); %>
        </p>
    <p align="left">
        一、单选题（每小题20分，共40分）</p>
    <p align="left">
        1.中国历史上在位时间最长的皇帝是哪个？<<asp:RadioButtonList ID="RadioButtonList1" runat="server">
            <asp:ListItem Value="1">唐太宗</asp:ListItem>
            <asp:ListItem Value="2">康熙</asp:ListItem>
            <asp:ListItem Value="3">乾隆</asp:ListItem>
        </asp:RadioButtonList>
    </p>
    <p align="left">
        2. 三国演义的作者是谁？<asp:RadioButtonList ID="RadioButtonList2" runat="server">
            <asp:ListItem Value="1">曹雪芹</asp:ListItem>
            <asp:ListItem Value="2">罗贯中</asp:ListItem>
            <asp:ListItem Value="3">冯梦龙</asp:ListItem>
        </asp:RadioButtonList>
    </p>
    <p align="left">
        二、多选题（每小题30分，共60分）</p>
    <p align="left">
        1.三大宗教的创始人包括<asp:CheckBoxList ID="CheckBoxList1" runat="server">
            <asp:ListItem Value="1">释迦牟尼</asp:ListItem>
            <asp:ListItem Value="2">耶稣</asp:ListItem>
            <asp:ListItem Value="3">默罕默德</asp:ListItem>
            <asp:ListItem Value="4">马丁路德</asp:ListItem>
        </asp:CheckBoxList>
    </p>
    <p align="left">
        2. 下面那些作品来自英国作家<asp:CheckBoxList ID="CheckBoxList2" runat="server">
            <asp:ListItem Value="1">老古玩店</asp:ListItem>
            <asp:ListItem Value="2">雾都孤儿</asp:ListItem>
            <asp:ListItem Value="3">呼啸山庄</asp:ListItem>
            <asp:ListItem Value="4">基督山伯爵</asp:ListItem>
        </asp:CheckBoxList>
    </p>
    <p align="left">
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            style="height: 26px" Text="交卷" />
    </p>
    </form>
</body>
</html>
