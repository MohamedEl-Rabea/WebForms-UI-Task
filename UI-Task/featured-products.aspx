<%@ Page Title="" Language="C#" MasterPageFile="~/UITask-Master.Master" AutoEventWireup="true" CodeBehind="featured-products.aspx.cs" Inherits="UI_Task.featured_products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="PlaceHolderScripts" runat="server">
    <script>
        $(document).ready(function () {
            $("input[name='btn-Add-To-Cart'").click(function () {
                $("span[data-count]").attr('data-count', (parseInt($("span[data-count]").attr('data-count')) + 1).toString());
                $(this).attr('disabled', true);
                $(this).addClass('btn-disabled');
                $(this).removeClass('btn-success');
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PlaceHolderContent" runat="server">
    <asp:ListView runat="server" ID="listView" GroupItemCount="4">
        <LayoutTemplate>
            <div>
                <asp:PlaceHolder runat="server" ID="groupPlaceHolder" />
            </div>
            <div style="clear: both; text-align: center">
                <asp:DataPager ID="ItemDataPager" runat="server" PageSize="8">
                    <Fields>
                        <asp:NumericPagerField ButtonCount="3" />
                    </Fields>
                </asp:DataPager>
            </div>
        </LayoutTemplate>
        <GroupTemplate>
            <div style="clear: both;">
                <asp:PlaceHolder runat="server" ID="itemPlaceHolder" />
            </div>
        </GroupTemplate>
        <ItemTemplate>
            <div class="productItem">
                <div class="productImg">
                    <img src='<%# "/Images/" + Eval("ImageId")  + ".jpg"%>'
                        height="120" width="120" />
                </div>
                <div>
                    <strong><%# Eval("Name") %></strong>
                </div>
                <div>
                    <small><%# Eval("Price", "{0:c}") %></small>
                </div>
                <input type="button" name="btn-Add-To-Cart" class="btn btn-success btn-sm" value="Add to cart" />
            </div>
        </ItemTemplate>
        <ItemSeparatorTemplate>
            <div class="itemSeparator">
            </div>
        </ItemSeparatorTemplate>
        <GroupSeparatorTemplate>
            <div class="groupSeparator">
            </div>
        </GroupSeparatorTemplate>
        <EmptyDataTemplate>
        </EmptyDataTemplate>
    </asp:ListView>
</asp:Content>
