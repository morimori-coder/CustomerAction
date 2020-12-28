using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace CustomerAction {
	public partial class StaffManager : System.Web.UI.Page {
		protected void Page_Init(object sender, EventArgs e)
		{
			if (false == Convert.ToBoolean(Session["AdminFlag"]))
			{
				// セッション変数をクリアする
				Session.Clear();
				// 管理者として認証されていないため、[ログオン]フォームに戻る
				Response.Redirect("Logon.aspx");
			}
		}
		
		protected void Page_Load(object sender, EventArgs e)
		{
			// Webページをキャッシュしないように設定する
			Response.Cache.SetCacheability(HttpCacheability.NoCache);
		}

		protected void InsertButton_Click(object sender, EventArgs e)
		{
			// 新しいスタッフIDを取得する(最大値+1)
			int newStaffID = this.GetNewStaffID();

			if (newStaffID == -1) 
			{
				// スタッフIDの取得に失敗したとき
				this.MessageLabel.Text =
					"スタッフIDの取得に失敗しました。データベースを確認してください。";
				return;
			}

			// 新規行挿入用のSQLステートメントを定義する
			string queryString = "INSERT INTO tbl_staff" +
				"(staffID, staff_name, userID, password, admin_flag, delete_flag)"+
				"VALUES(" + newStaffID + ", '(新規)', '', '', 0, 0)";

			try 
			{
				// 接続文字列を取得する
				string connectionString = System.Configuration.ConfigurationManager.
					ConnectionStrings["customer_actionConnectionString"].ConnectionString;

				// コネクションを定義する
				using (SqlConnection connection = new SqlConnection(connectionString))
				{					
					// コマンドを定義する
					SqlCommand command = new SqlCommand(queryString, connection);

					// コネクションを開く
					connection.Open();

					// コマンドに定義したSQLステートメントを実行する
					command.ExecuteNonQuery();

					// グリッドビューを再バインドしてデータを読み返す
					this.GridView1.DataBind();

					// 結果のメッセージを表示する
					this.MessageLabel.Text = "新しいスタッフを追加しました。";
				}
			} 
			catch (Exception ex)
			{
				// エラーが発生したとき
				this.MessageLabel.Text = $"エラーが発生したため、処理を中止します。<br />{ex.Message}";
			}
		}

		private int GetNewStaffID() 
		{
			// 戻り値用の変数を定義する(-1は失敗したときの値として設定)
			int ret = -1;

			try
			{
				// 接続文字列を取得する
				string connectionString = System.Configuration.ConfigurationManager.
					ConnectionStrings["customer_actionConnectionString"].ConnectionString;

				// コネクションを定義する
				using (SqlConnection connection = new SqlConnection(connectionString))
				{
					// SQLステートメントを定義する(現在のスタッフIDの最大値+1を取得する)
					string queryString = "SELECT ISNULL(MAX(staffID), 0)+1 FROM tbl_staff";

					// コマンドを定義する
					SqlCommand command = new SqlCommand(queryString, connection);

					// コネクションを開く
					connection.Open();

					// SQLステートメントの実行結果を取得する
					Object result = command.ExecuteScalar();

					// 結果を正しく取得できたときには、戻り値を設定する
					if (result != null) 
					{
						ret = Convert.ToInt32(result.ToString());
					}
				}
			}
			catch(Exception e) 
			{
				Console.WriteLine(e.Message);
			}
			// 新規のスタッフIDを返す
			return ret;
		}
	}
}