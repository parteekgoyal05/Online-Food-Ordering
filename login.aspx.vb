Imports Microsoft.VisualBasic
Imports System.Data
Imports System.Data.SqlClient
Imports System
Imports System.Collections
Partial Class login
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim con As New SqlConnection
        Dim cmd As New SqlCommand
        Try
            Session.Add("user", TextBox1.Text)
            con.ConnectionString = "Data Source=PARTEEK-GOYAL-0\SQLEXPRESS;Initial Catalog=Food_Ordering;Integrated Security=True"
            con.Open()
            cmd.Connection = con
            cmd.CommandType = CommandType.StoredProcedure
            cmd.CommandText = "login"
            cmd.Parameters.Add("@contact", SqlDbType.BigInt).Value = TextBox1.Text
            cmd.Parameters.Add("@pass", SqlDbType.VarChar, 50).Value = TextBox2.Text
            cmd.Parameters.Add("@res", SqlDbType.BigInt).Direction = ParameterDirection.Output
            cmd.Parameters.Add("@name", SqlDbType.VarChar, 50).Direction = ParameterDirection.Output
            cmd.ExecuteNonQuery()
            Session.Add("uname", cmd.Parameters("@name").Value)
            Dim flag1 As Integer

            flag1 = cmd.Parameters("@res").Value


            If flag1 = 1 Then

                Response.Redirect("choose_state_city_res.aspx")
            Else
                Label4.Text = "Invalid user or password"
            End If
        Catch ex As Exception
            Label4.Text = ex.Message
        End Try
    End Sub
End Class
