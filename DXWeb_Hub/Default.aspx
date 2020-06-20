<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Main.master" CodeBehind="Default.aspx.cs" Inherits="DXWeb_Hub._Default" %>


<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">
    <%-- DXCOMMENT: Configure ASPxDataView control --%>


<%-- DXCOMMENT: Configure your datasource for ASPxDataView --%>
<dx:ASPxPageControl ID="ASPxPageControl1" runat="server" ActiveTabIndex="0">
    <TabPages>
        <dx:TabPage Text="Persons (2)">
            <ContentCollection>
                <dx:ContentControl runat="server">
                    <dx:ASPxDataView ID="ASPxDataView1" runat="server" ClientInstanceName="ASPxDataView1" EnableScrolling="True" Height="200px" Layout="Flow" PagerAlign="Justify" Width="100%" DataSourceID="SqlDataSource1">
                        <SettingsFlowLayout ItemsPerPage="5" />
                        <PagerSettings ShowNumericButtons="False">
                        </PagerSettings>
                        <ItemTemplate>
                            <b>CustomerID</b>:
                            <asp:Label ID="CustomerIDLabel" runat="server" Text='<%# System.Web.HttpUtility.HtmlEncode(Eval("CustomerID")) %>' />
                            <br/>
                            <b>CompanyName</b>:
                            <asp:Label ID="CompanyNameLabel" runat="server" Text='<%# System.Web.HttpUtility.HtmlEncode(Eval("CompanyName")) %>' />
                            <br/>
                            <b>ContactName</b>:
                            <asp:Label ID="ContactNameLabel" runat="server" Text='<%# System.Web.HttpUtility.HtmlEncode(Eval("ContactName")) %>' />
                            <br/>
                            <b>ContactTitle</b>:
                            <asp:Label ID="ContactTitleLabel" runat="server" Text='<%# System.Web.HttpUtility.HtmlEncode(Eval("ContactTitle")) %>' />
                            <br/>
                            <b>Address</b>:
                            <asp:Label ID="AddressLabel" runat="server" Text='<%# System.Web.HttpUtility.HtmlEncode(Eval("Address")) %>' />
                            <br/>
                            <b>City</b>:
                            <asp:Label ID="CityLabel" runat="server" Text='<%# System.Web.HttpUtility.HtmlEncode(Eval("City")) %>' />
                            <br/>
                            <b>Region</b>:
                            <asp:Label ID="RegionLabel" runat="server" Text='<%# System.Web.HttpUtility.HtmlEncode(Eval("Region")) %>' />
                            <br/>
                            <b>PostalCode</b>:
                            <asp:Label ID="PostalCodeLabel" runat="server" Text='<%# System.Web.HttpUtility.HtmlEncode(Eval("PostalCode")) %>' />
                            <br/>
                            <b>Country</b>:
                            <asp:Label ID="CountryLabel" runat="server" Text='<%# System.Web.HttpUtility.HtmlEncode(Eval("Country")) %>' />
                            <br/>
                            <b>Phone</b>:
                            <asp:Label ID="PhoneLabel" runat="server" Text='<%# System.Web.HttpUtility.HtmlEncode(Eval("Phone")) %>' />
                            <br/>
                            <b>Fax</b>:
                            <asp:Label ID="FaxLabel" runat="server" Text='<%# System.Web.HttpUtility.HtmlEncode(Eval("Fax")) %>' />
                            <br/>
                        </ItemTemplate>
                        <ItemStyle Height="90px" Width="250px" />
                        <Border BorderWidth="0px" />
                    </dx:ASPxDataView>
                </dx:ContentControl>
            </ContentCollection>
        </dx:TabPage>
        <dx:TabPage Text="Organizations (2)">
            <ContentCollection>
                <dx:ContentControl runat="server">
                </dx:ContentControl>
            </ContentCollection>
        </dx:TabPage>
        <dx:TabPage Text="Products (0)">
            <ContentCollection>
                <dx:ContentControl runat="server">
                </dx:ContentControl>
            </ContentCollection>
        </dx:TabPage>
    </TabPages>
</dx:ASPxPageControl>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:NWindConnectionString %>" 
        SelectCommand="SELECT * FROM [Customers]">
</asp:SqlDataSource>

</asp:Content>