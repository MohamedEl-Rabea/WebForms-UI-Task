<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Master-Test.aspx.cs" Inherits="UI_Task.Master_Test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/all.css" rel="stylesheet" />
    <link href="css/customeStyles.css" rel="stylesheet" />
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
    <script src="js/jQueryV3.3.1.js"></script>
    <script>
        $(document).ready(function () {
            $("a[data-link='" + window.location.pathname + "']").parent().addClass('select-side-bar-link');
            $("input[name='btn-Add-To-Cart'").click(function () {
                $("span[data-count]").attr('data-count', (parseInt($("span[data-count]").attr('data-count')) + 1).toString());
                $(this).attr('disabled', true);
                $(this).addClass('btn-disabled');
                $(this).removeClass('btn-success');
            });
        });
    </script>
    <asp:PlaceHolder ID="PlaceHolderScripts" runat="server"></asp:PlaceHolder>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <a class="navbar-brand" name="listItem" data-toggle="tab" href="#home">
                    <div style="border: 2px solid black; border-radius: 50%; width: 35px; text-align: center; display: inline-block;">
                        <b>T</b>
                    </div>
                    <b>UI-Task</b>
                </a>
            </nav>
            <div class="page-header">
                <table class="container" border="0">
                    <tr class="row">
                        <td class="col-sm-4" style="padding-top: 5px">
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <button class="input-group-text hover" type="submit">
                                        <i class="fa fa-search "></i>
                                    </button>
                                </div>
                                <input type="text" class="form-control col-12" placeholder="Search " aria-label="Username" aria-describedby="basic-addon1" />
                            </div>
                        </td>
                        <td class="col-sm-7" style="text-align: right">
                            <div id="ex4">
                                <span class="p1 fa-stack fa-2x has-badge" data-count="0">
                                    <asp:LinkButton ID="LinkButton1" runat="server">
                                        <strong><i class="p3 fa fa-shopping-cart fa-2x fa-stack-1x xfa-inverse"></i></strong>
                                    </asp:LinkButton>
                                </span>
                            </div>
                        </td>
                        <td class="col-sm-1" style="padding-top: 15px; text-align: left">
                            <asp:LinkButton ID="lnkBtnSignOut" runat="server">
                                        <strong>Sign out</strong>
                            </asp:LinkButton>
                        </td>
                    </tr>
                </table>
            </div>
            <hr />
            <div class="row custome-row">
                <div class="col-sm-3">
                    <ul class="list-group">
                        <li class="list-group-item list-group-item-action">
                            <asp:LinkButton ID="lnkBtnHome" data-link="/Master-Test.aspx" CssClass="side-bar-links" runat="server">
                                    <strong>Home</strong>
                            </asp:LinkButton>
                        </li>
                        <li class="list-group-item list-group-item-action">
                            <asp:LinkButton ID="lnkBtnAccessories" data-link="side-bar" CssClass="side-bar-links" runat="server">
                                    <strong>Accessories</strong>
                            </asp:LinkButton>
                        </li>
                        <li class="list-group-item list-group-item-action">
                            <asp:LinkButton ID="lnkBtnFootJeans" data-link="side-bar" CssClass="side-bar-links" runat="server">
                                    <strong>Jeans</strong>
                            </asp:LinkButton>
                        </li>
                        <li class="list-group-item list-group-item-action">
                            <asp:LinkButton ID="lnkBtnFootwear" data-link="side-bar" CssClass="side-bar-links" runat="server">
                                    <strong>Footwear</strong>
                            </asp:LinkButton>
                        </li>
                        <li class="list-group-item list-group-item-action">
                            <asp:LinkButton ID="lnkBtnShirts" data-link="side-bar" CssClass="side-bar-links" runat="server">
                                    <strong>Shirts</strong>
                            </asp:LinkButton>
                        </li>
                        <li class="list-group-item list-group-item-action">
                            <asp:LinkButton ID="lnkBtnTShirts" data-link="side-bar" CssClass="side-bar-links" runat="server">
                                    <strong>T-Shirts</strong>
                            </asp:LinkButton>
                        </li>
                        <li style="list-style: none; text-align: center; padding-top: 5px;">
                            <i class="fa fa-facebook-square fa-lg side-bar-icons" title="Follow our products on facebook"></i>
                            <i class="fa fa-youtube-square fa-lg side-bar-icons" title="Follow our products on youtube"></i>
                            <i class="fa fa-twitter-square fa-lg side-bar-icons" title="Follow our products on twitter"></i>
                            <i class="fa fa-snapchat fa-lg side-bar-icons" title="Follow our products on snapchat"></i>
                            <i class="fa fa-pinterest-square fa-lg side-bar-icons" title="Follow our products on pinterest"></i>
                            <i class="fa fa-vimeo-square fa-lg side-bar-icons" title="Follow our products on vimeo"></i>

                        </li>
                    </ul>
                </div>
                <div class="col-sm-9">
                    <%--<asp:PlaceHolder ID="PlaceHolderContent" runat="server"></asp:PlaceHolder>--%>
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
                </div>
            </div>
            <hr />
            <div class="row">
                <div class="col-sm-6">
                    <h5>Links</h5>
                    <h6><a href="#">Search</a></h6>
                    <h6><a href="#">News</a></h6>
                    <h6><a href="#">Our story</a></h6>
                    <h6><a href="#">FAQ</a></h6>
                    <h6><a href="#">Return policy</a></h6>
                    <h6><a href="#">Contact us</a></h6>
                </div>
                <div class="col-sm-6">
                    <h5>Subscribe</h5>
                    <br />
                    <h6>Sign up for the latest news, offers and styles</h6>
                    <br />
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <input type="text" class="form-control col-12" placeholder="Your mail " aria-label="EMail" aria-describedby="basic-addon1" />
                            <button class="btn btn-dark" type="submit">
                                Subscribe
                            </button>
                        </div>
                    </div>
                </div>
            </div>
            <hr />
            <div class="row">
                <div class="col-sm-12">
                    <small>Copyright &copy 2018, UI-Task. Ecommerce Software by M.Rabea</small>
                </div>
            </div>
            <br />
        </div>
    </form>
</body>
</html>



