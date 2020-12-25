using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CustomerAction {
    public partial class CustomerList : System.Web.UI.Page {
        protected void Page_Init(object sender, EventArgs e) 
        {
			if (this.Session["StaffID"] == null) 
            {
                // ユーザーが認証されていないため、[ログオン]フォームに戻る
                Response.Redirect("Logon.aspx");
            }
        }
        
        protected void Page_Load(object sender, EventArgs e)
        {
            // このWebページをキャッシュしないように設定する
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
        }
	}
}