<%@ Page Language="C#" AutoEventWireup="true" CodeFile="InfoModify.aspx.cs" Inherits="InfoModify" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
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
                <asp:Parameter Name="EmpIdCard" Type="String" />
                <asp:Parameter Name="EmpName" Type="String" />
                <asp:Parameter Name="Sex" Type="String" />
                <asp:Parameter Name="Birth" Type="DateTime" />
                <asp:Parameter Name="Salary" Type="Decimal" />
                <asp:Parameter Name="EmpDepartment" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [EmpID], [EmpIdCard] FROM [Employees] WHERE ([EmpID] = @EmpID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="EmpID" 
                    PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="EmpID" 
            DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="EmpID" HeaderText="员工号码" InsertVisible="False" 
                    ReadOnly="True" SortExpression="EmpID" />
                <asp:BoundField DataField="EmpIdCard" HeaderText="工作证号码" 
                    SortExpression="EmpIdCard" />
                <asp:BoundField DataField="EmpName" HeaderText="姓名" 
                    SortExpression="EmpName" />
                <asp:TemplateField HeaderText="性别" SortExpression="Sex">
                    <EditItemTemplate>
                        <asp:RadioButtonList
                            ID="RadioButtonList1" runat="server" SelectedValue='<%# Bind("Sex") %>'>
                            <asp:ListItem>男</asp:ListItem>
                            <asp:ListItem>女</asp:ListItem>
                        </asp:RadioButtonList>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Sex") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Birth" HeaderText="出生日期" SortExpression="Birth" 
                    DataFormatString="{0:yyyy/MM/dd}" />
                <asp:BoundField DataField="Salary" HeaderText="当前薪资" 
                    SortExpression="Salary" DataFormatString="￥{0:F2}" />
                <asp:TemplateField HeaderText="部门" SortExpression="EmpDepartment">
                    <EditItemTemplate>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT * FROM [Department]"></asp:SqlDataSource>
                        <asp:DropDownList ID="DropDownList1" runat="server" 
                            DataSourceID="SqlDataSource2" DataTextField="DepartmentName" 
                            DataValueField="DepartmentName" SelectedValue='<%# Bind("EmpDepartment") %>'>
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("EmpDepartment") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                    ShowSelectButton="True" />
            </Columns>
        </asp:GridView>
    
        <br />
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="EmpID" 
            DataSourceID="SqlDataSource3">
            <EditItemTemplate>
                EmpID:
                <asp:Label ID="EmpIDLabel1" runat="server" Text='<%# Eval("EmpID") %>' />
                <br />
                EmpIdCard:
                <asp:TextBox ID="EmpIdCardTextBox" runat="server" 
                    Text='<%# Bind("EmpIdCard") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                EmpIdCard:
                <asp:TextBox ID="EmpIdCardTextBox" runat="server" 
                    Text='<%# Bind("EmpIdCard") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                    CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                <img src='images/<%# Eval("EmpIdCard") %>.jpg' alt="photo"/>
                <br />
            </ItemTemplate>
        </asp:FormView>
    
    </div>
    </form>
</body>
</html>
