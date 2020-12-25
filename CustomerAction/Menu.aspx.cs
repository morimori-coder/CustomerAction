using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CustomerAction {
	public partial class Menu : System.Web.UI.Page {
		protected void Page_Load(object sender, EventArgs e)
		{
			// 管理者権限によって、パネルの表示を切り替える
			// ユーザーレベルによる処理の分岐
			switch (this.GetUserLevel()) 
			{
				case 1:
					// 管理者の時
					this.AdminPanel.Visible = true;
					this.UserPanel.Visible = false;
					break;
				case 2:
					// 一般ユーザーの時
					this.AdminPanel.Visible = false;
					this.UserPanel.Visible = true;
					break;
				default:
					// その他(ログオンされていないときなど)
					// ユーザーが認証されていないため、[ログオン]フォームに戻る
					Response.Redirect("Logon.aspx");
					break;
			}

			
		}

		private int GetUserLevel() 
		{
			// ユーザーレベルを取得する
			// 管理者＝１、一般ユーザー＝２、その他(ログインされていないときなど)＝０

			// セッション変数から取得した値の判定
			if (this.Session["AdminFlag"] == null)
			{
				// セッション変数の値が存在しない場合
				return 0;
			}
			else if(Convert.ToBoolean(this.Session["AdminFlag"]))
			{
				// セッション変数AdminFlagがtrueの場合
				return 1;
			}
			else
			{
				// セッション変数AdminFlagがfalseの場合
				return 2;
			}
		}

		protected void LinkButton1_Click(object sender, EventArgs e)
		{
			// セッション変数をクリアする
			Session.Clear();
			// [ログオン]フォームに遷移する
			Response.Redirect("Logon.aspx");
		}

		protected void LinkButton2_Click(object sender, EventArgs e)
		{
			// セッション変数をクリアする
			Session.Clear();
			// [ログオン]フォームに遷移する
			Response.Redirect("Logon.aspx");
		}
	}
}