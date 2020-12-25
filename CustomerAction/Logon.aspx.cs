using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace CustomerAction {
	public partial class Logon : System.Web.UI.Page {
		// このWebフォームで仕様するメンバー変数の宣言
		int staffID;
		string staffName;
		bool adminFlag;

		protected void Page_Load(object sender, EventArgs e)
		{
			// [ユーザーID]ボックスにフォーカスをセットする
			this.UserIDTextBox.Focus();

			// [ログオン]ボタンをこのWebフォームの規定ボタンにする
			this.Form.DefaultButton = this.LogonButton.UniqueID;
		}

		protected void LogonButton_Click(object sender, EventArgs e)
		{
			// ユーザーIDの入力チェック
			if (string.IsNullOrEmpty(this.UserIDTextBox.Text))
			{
				this.ErrorLabel.Text = "ユーザーIDを入力してください";
				return;
			}

			// パスワードの入力チェック
			if (string.IsNullOrEmpty(this.PasswordTextBox.Text))
			{
				this.ErrorLabel.Text = "パスワードを入力してください";
				return;
			}

			// ユーザーとパスワードの検証
			if (false == this.CheckUserPassword(this.UserIDTextBox.Text, this.PasswordTextBox.Text))
			{
				this.ErrorLabel.Text = "ユーザーIDまたはパスワードが違います";
				return;
			}

			// セッション変数へ値をセットする
			this.Session["StaffID"] = this.staffID;
			this.Session["StaffName"] = this.staffName;
			this.Session["AdminFlag"] = this.adminFlag;

			// メニュー画面に遷移する
			this.Response.Redirect("Menu.aspx");
		}

		// ユーザーIDとパスワードを検証するメソッド
		private bool CheckUserPassword(string userid, string password) 
		{
			bool ret;
			string queryString;

			try
			{
				queryString = "SELECT staffID, staff_name, admin_flag FROM tbl_staff " +
					"WHERE userID = '" + userid.Replace("'", "''") +
					"' AND password = '" + password.Replace("'", "''") + "' " +
					"COLLATE Japanese_CS_AS_KS_WS";

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

					// コマンドからデータリーダーを定義する
					SqlDataReader reader = command.ExecuteReader();

					// データリーダーから結果を読み込む
					if (reader.Read())
					{
						// 対象データが存在する場合
						// 正しいユーザーIDとパスワードが指定されたので、
						// データリーダーから読みだしたデータをメンバー変数にセットする
						staffID = Int32.Parse(reader["staffID"].ToString());
						staffName = reader["staff_name"].ToString();
						adminFlag = Convert.ToBoolean(reader["admin_flag"]);

						ret = true;
					}
					else 
					{
						// 対象データが存在しない場合
						// 不正なユーザーIDまたはパスワードが指定された
						ret = false;
					}
				}
			} 
			catch (Exception ex) 
			{
				// 例外処理(SQLステートメントの実行エラーなど)
				ret = false;
			}

			// 結果を返して終了する
			return ret;
		}
	}
}