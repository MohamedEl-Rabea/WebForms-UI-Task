<%@ Page Title="" Language="C#" MasterPageFile="~/UITask-Master.Master" AutoEventWireup="true" CodeBehind="My-Cart.aspx.cs" Inherits="UI_Task.My_Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="PlaceHolderScripts" runat="server">
    <script>
        $(document).ready(function () {
            $("#checkAll").click(function () {
                $('span[data-row="select-row"] input').not(this).prop('checked', this.checked);
            });
            $('span[data-row="select-row"] input').click(function () {
                if ($('span[data-row="select-row"] input').length === $('span[data-row="select-row"] input:checked').length) {
                    $("#checkAll").prop('checked', 'checked');
                }
                else {
                    $("#checkAll").prop('checked', false);
                }
            })

            function calcCost() {

            }
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PlaceHolderContent" runat="server">
    <asp:GridView ID="GridViewCart" runat="server" AutoGenerateColumns="false" CssClass="table table-bordered grid-style">
        <Columns>
            <asp:TemplateField ControlStyle-Width="1px">
                <HeaderTemplate>
                    <asp:CheckBox ID="checkAll" ClientIDMode="Static" runat="server" />
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:CheckBox ID="chkRow" data-row="select-row" runat="server" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Id" HeaderText="ID" />
            <asp:BoundField DataField="Name" HeaderText="Name" />
            <asp:BoundField DataField="Amount" HeaderText="Amount" />
            <asp:BoundField DataField="Price" DataFormatString="{0:c}" HeaderText="Price" />
        </Columns>
        <HeaderStyle CssClass="header-row" />
    </asp:GridView>
    <strong>Total Iitems cost: <small data-cost="cost">15,000 $</small></strong>

</asp:Content>

