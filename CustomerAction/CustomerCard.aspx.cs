using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace CustomerAction {
	public partial class CustomerCard : System.Web.UI.Page {
		protected void Page_Load(object sender, EventArgs e)
		{
			// ポストバックかどうか判定する(他のWebページから遷移してきたかどうか)
			if (!this.IsPostBack) 
			{
				// 他のフォームから遷移してきたとき
				if (this.Request.QueryString["id"] == null)
				{
					// URLにクエリ文字列idが含まれていないときには
					// フォームビューのデフォルトモードを挿入モードにする
					this.FormView1.DefaultMode = FormViewMode.Insert;
				}
			}
		}

		protected void FormView1_ItemUpdating(object sender, FormViewUpdateEventArgs e)
		{
			// 最終更新日時と最終更新者をセットする
			e.NewValues["update_date"] = DateTime.Now;
			e.NewValues["update_staff_name"] = "(---)";
		}

		protected void FormView1_ItemInserting(object sender, FormViewInsertEventArgs e)
		{
			// 顧客IDを取得する(最大値＋１)
			int customerID = GetNewID();

			if (customerID != -1) 
			{
				// 顧客IDが取得できたため、顧客IDをセットする
				e.Values["customerID"] = customerID;

				// 初回登録日時と初回登録者をセットする
				e.Values["input_date"] = DateTime.Now;
				e.Values["input_staff_name"] = "(---)";

				// 最終更新日時と最終更新者をセットする
				e.Values["update_date"] = DateTime.Now;
				e.Values["update_staff_name"] = "(---)";
			}
			else 
			{
				// 顧客IDの取得に失敗したため、処理をキャンセルする
				e.Cancel = true;
			}
		}

		private int GetNewID() 
		{
			// 戻り値用の変数を定義する(-1は失敗したときの数値として設定)
			int ret = -1;

			try
			{
				// 接続文字列を取得する
				string connectionString = System.Configuration.ConfigurationManager.
					ConnectionStrings["customer_actionConnectionString"].ConnectionString;

				// コネクションを定義する
				using (SqlConnection connection = new SqlConnection(connectionString)) 
				{
					// SQLステートメントを定義する(現在の顧客IDの最大値＋１を取得)
					string queryString = "SELECT ISNULL(MAX(custormerID), 0)+1 FROM tbl_customer";

					// コマンドを定義する
					SqlCommand command = new SqlCommand(queryString, connection);

					// コネクションを開く
					connection.Open();

					// SQLステートメントの実行結果を取得する
					Object result = command.ExecuteScalar();

					// 結果を正しく取得できた時には、戻り値を設定する
					if (result != null) 
					{
						ret = (int)result;
					}
				}
			}
			catch (Exception) 
			{
				// 何らかのエラーが発生した(握りつぶす？)
			}

			// 新規データ用の顧客IDを返す
			return ret;
		}

		protected void FormView1_ItemCommand(object sender, FormViewCommandEventArgs e)
		{
			// 実行するコマンド名と現在のモードを判定する
			if (e.CommandName.Equals("Cancel") && FormView1.CurrentMode == FormViewMode.Insert) 
			{
				// コマンド名が「Cancel」で挿入モードのときにはCustomerListフォームに戻る
				Response.Redirect("CustomerList.aspx");
			}
		}
	}
}