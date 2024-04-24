<%@ Page Title="Cookie Data" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="CookieData.aspx.vb" Inherits="CookieData" Async="true" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2><%: Title %>.</h2>

    <div class="row">
        <div class="col-md-8">
            <section id="loginForm">
                <div class="form-horizontal">
                    <h4>Edit as you will!</h4>
                    <hr />
                    <div class="form-group">
                        <div class="col-md-10">
                            <asp:TextBox Rows="50" runat="server" ID="Data" CssClass="form-control" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Data"
                                CssClass="text-danger" ErrorMessage="The user name field is required." />
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <div class="col-md-offset-2 col-md-10">
                            <asp:Button runat="server" OnClick="OnUpdate" Text="Update" CssClass="btn btn-default" ID="UpdateBtn" />
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </div>
</asp:Content>

