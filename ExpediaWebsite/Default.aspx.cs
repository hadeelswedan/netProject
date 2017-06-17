using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class _Default : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        WebClient client = new WebClient();
        string value = client.DownloadString("https://offersvc.expedia.com/offers/v2/getOffers?scenario=deal-finder&page=foo&uid=foo&productType=Hotel");

        RootObject _offers = new System.Web.Script.Serialization.JavaScriptSerializer().Deserialize<RootObject>(value);

        GridView1.DataSource = _offers.offers.Hotel;
        GridView1.DataBind();
    }

    protected void ShowFlights(object sender, EventArgs e)
    {   

         //<add key="APIUrl" value="https://offersvc.expedia.com/offers/v2/getOffers?scenario=deal-finder&page=foo&uid=foo&productType=Hotel"  />

    }

   
}