<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Expedia</h1>
        <h1></h1>
    </div>

    <div class="row" aria-sort="ascending" aria-setsize="10" style="list-style-type: disc">
        <div class="col-md-4">
            <asp:Label Text="Flight schedule list:" runat="server" ForeColor="Black">
            </asp:Label>

        </div>
    </div>


        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" ShowHeader="False">
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <table>
                            <tr style="color: darkgray">
                                <th>Destination:</th>
                                <th>HotelInfo:</th>
                                <th>Hotel Pricing Info:</th>
                            </tr>
                            <tr>
                                <td width="400px">
                                    <table>
                                        <tr>
                                            <td>
                                                <b>country:</b>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label3" runat="server" Text='<%#Eval("destination.country") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <b>City:</b>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label4" runat="server" Text='<%#Eval("destination.city") %>'></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td width="400px">
                                    <table>
                                        <tr>
                                            <td>
                                                <b>Hotel Name:</b>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label5" runat="server" Text='<%#Eval("hotelInfo.hotelName") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <b>Hotel City:</b>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label6" runat="server" Text='<%#Eval("hotelInfo.hotelCity") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <b>Hotel Location:</b>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label8" runat="server" Text='<%#Eval("hotelInfo.hotelLocation") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <b>Travel Start Date:</b>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label9" runat="server" Text='<%#Eval("hotelInfo.travelStartDate") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <b>Travel End Date:</b>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label10" runat="server" Text='<%#Eval("hotelInfo.travelEndDate") %>'></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td width="400px">
                                    <table>
                                        <tr>
                                            <td>
                                                <b>Total Price Value:</b>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label7" runat="server" Text='<%#Eval("hotelPricingInfo.totalPriceValue") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <b>Original Price Per Night:</b>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label11" runat="server" Text='<%#Eval("hotelPricingInfo.originalPricePerNight") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <b>Hotel Total Taxes And Fees:</b>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label2" runat="server" Text='<%#Eval("hotelPricingInfo.hotelTotalTaxesAndFees") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <b>Currency:</b>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label12" runat="server" Text='<%#Eval("hotelPricingInfo.currency") %>'></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>

</asp:Content>

