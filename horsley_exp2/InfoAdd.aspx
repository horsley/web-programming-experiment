<%@ Page Language="C#" AutoEventWireup="true" CodeFile="InfoAdd.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 124px;
            text-align: right;
        }
        .style2
        {
            width: 152px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width:100%;">
            <tr>
                <td class="style1">
                    <p>
                        添加员工信息：</p>
                </td>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    <p>
                        工作证号码：</p>
                </td>
                <td class="style2">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="工作证号码不能为空"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <p>
                        姓名：</p>
                </td>
                <td class="style2">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="姓名不能为空"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    性别：</td>
                <td class="style2">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    出生日期：</td>
                <td class="style2">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    当前薪资：</td>
                <td class="style2">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    部门：</td>
                <td class="style2">
                    <asp:DropDownList ID="DropDownList1" runat="server" 
                        DataSourceID="SqlDataSource1" DataTextField="DepartmentName" 
                        DataValueField="DepartmentID">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [DepartmentID], [DepartmentName] FROM [Department]">
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        DeleteCommand="DELETE FROM [Employees] WHERE [EmpID] = @EmpID" 
                        InsertCommand="INSERT INTO [Employees] ([EmpIdCard], [EmpName], [Sex], [Birth], [Salary], [EmpDepartment]) VALUES (@EmpIdCard, @EmpName, @Sex, @Birth, @Salary, @EmpDepartment)" 
                        SelectCommand="SELECT * FROM [Employees]" 
                        UpdateCommand="UPDATE [Employees] SET [EmpIdCard] = @EmpIdCard, [EmpName] = @EmpName, [Sex] = @Sex, [Birth] = @Birth, [Salary] = @Salary, [EmpDepartment] = @EmpDepartment WHERE [EmpID] = @EmpID">
                        <DeleteParameters>
                            <asp:Parameter Name="EmpID" Type="Int32" />
                        </DeleteParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="EmpIdCard" Type="String" />
                            <asp:Parameter Name="EmpName" Type="String" />
                            <asp:Parameter Name="Sex" Type="String" />
                            <asp:Parameter Name="Birth" Type="DateTime" />
                            <asp:Parameter Name="Salary" Type="Decimal" />
                            <asp:Parameter Name="EmpDepartment" Type="String" />
                            <asp:Parameter Name="EmpID" Type="Int32" />
                        </UpdateParameters>
                        <InsertParameters>
                            <asp:ControlParameter ControlID="TextBox1" Name="EmpIdCard" PropertyName="Text" 
                                Type="String" />
                            <asp:ControlParameter ControlID="TextBox2" Name="EmpName" PropertyName="Text" 
                                Type="String" />
                            <asp:ControlParameter ControlID="TextBox3" Name="Sex" PropertyName="Text" 
                                Type="String" />
                            <asp:ControlParameter ControlID="TextBox4" Name="Birth" PropertyName="Text" 
                                Type="DateTime" />
                            <asp:ControlParameter ControlID="TextBox5" Name="Salary" PropertyName="Text" 
                                Type="Decimal" />
                            <asp:ControlParameter ControlID="DropDownList1" Name="EmpDepartment" 
                                PropertyName="SelectedValue" Type="String" />
                        </InsertParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="添加" />
                </td>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
