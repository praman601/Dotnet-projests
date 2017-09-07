<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="CompareFieldValidator.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        <b>Age:</b>
                        

                    </td>
                    <td>
                        <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
                    </td>
                    <asp:RangeValidator ID="RangeValidatorage" runat="server" ErrorMessage="Age must be between 1 and 100" 
                        ControlToValidate="txtAge" ForeColor="Red"
                        MinimumValue="1" MaximumValue="100" Type="Integer" Display="Dynamic"></asp:RangeValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Age is Required"
                        ControlToValidate="txtAge" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>

                </tr>
                <tr>
                    <td>
                        <strong>Date</strong></td>
                    <td>
                        <asp:TextBox ID="txtDate" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                        <asp:RangeValidator ID="RangeValidatorDate" runat="server" ErrorMessage="Date must be between 01/01/2012 and 31/12/2012" 
                        ControlToValidate="txtDate" ForeColor="Red"
                        MinimumValue="01/01/2012 " MaximumValue="12/31/2012" Type="Date" Display="Dynamic"></asp:RangeValidator>

                    </td>

                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="btnSave"  runat="server" Text="Button" OnClick="btnSave_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="Lblstatus" runat="server"></asp:Label>
                    </td>
                </tr>

            </table>
        </div>
    </form>
</body>
</html>
