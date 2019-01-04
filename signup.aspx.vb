Imports Microsoft.VisualBasic
Imports System.Data
Imports System.Data.SqlClient
Imports System
Imports System.Collections


Partial Class signup
    Inherits System.Web.UI.Page
    Protected Sub TextBox1_TextChanged(sender As Object, e As EventArgs) Handles TextBox1.TextChanged
        Dim con1 As New SqlConnection
        Dim cmd1 As New SqlCommand
        Try
            con1.ConnectionString = "Data Source=PARTEEK-GOYAL-0\SQLEXPRESS;Initial Catalog=Food_Ordering;Integrated Security=True"
            con1.Open()
            cmd1.Connection = con1
            cmd1.CommandType = CommandType.StoredProcedure
            cmd1.CommandText = "check_contact"
            cmd1.Parameters.Add("@chk_contact", SqlDbType.BigInt).Value = TextBox1.Text
            cmd1.Parameters.Add("@res", SqlDbType.BigInt).Direction = ParameterDirection.Output
            cmd1.ExecuteNonQuery()
            Dim flag As Integer
            flag = cmd1.Parameters("@res").Value
            If flag = 1 Then
                Label5.Text = "Account already exists.Please LogIn"
            End If
        Catch ex As Exception
            Label5.Text = ex.Message
        End Try
    End Sub
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim con As New SqlConnection
        Dim cmd As New SqlCommand
        Try
            con.ConnectionString = "Data Source=PARTEEK-GOYAL-0\SQLEXPRESS;Initial Catalog=Food_Ordering;Integrated Security=True"
            con.Open()
            cmd.Connection = con
            cmd.CommandType = CommandType.StoredProcedure
            cmd.CommandText = "sign_up"
            cmd.Parameters.Add("@contact", SqlDbType.BigInt).Value = TextBox1.Text
            cmd.Parameters.Add("@pass", SqlDbType.VarChar, 50).Value = TextBox2.Text
            cmd.Parameters.Add("@confirm_pass", SqlDbType.VarChar, 50).Value = TextBox3.Text
            cmd.Parameters.Add("@res1", SqlDbType.BigInt).Direction = ParameterDirection.Output
            cmd.ExecuteNonQuery()
            Session.Add("cnt", cmd.Parameters("@contact").Value)
            Dim flag1 As Integer
            flag1 = cmd.Parameters("@res1").Value
            If flag1 = 1 Then
                Response.Redirect("customer_details.aspx")
            Else
                Label5.Text = "Password does not match"
            End If

        Catch ex As Exception
            Label5.Text = ex.Message
        End Try
    End Sub
End Class
