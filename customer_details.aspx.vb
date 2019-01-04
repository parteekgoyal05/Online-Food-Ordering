Imports Microsoft.VisualBasic
Imports System.Data
Imports System.Data.SqlClient
Imports System
Imports System.Collections
Imports GeneralClass

Partial Class customer_details
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim con As New SqlConnection
        Dim cmd As New SqlCommand
        con.ConnectionString = "Data Source=PARTEEK-GOYAL-0\SQLEXPRESS;Initial Catalog=Food_Ordering;Integrated Security=True"
        con.Open()
        cmd.Connection = con
        cmd.CommandType = CommandType.StoredProcedure
        cmd.CommandText = "customer_details"
        cmd.Parameters.Add("@name", SqlDbType.VarChar, 50).Value = TextBox1.Text
        cmd.Parameters.Add("@email", SqlDbType.VarChar, 50).Value = TextBox2.Text
        cmd.Parameters.Add("@contact", SqlDbType.BigInt).Value = Session("cnt")
        cmd.Parameters.Add("@address1", SqlDbType.VarChar, 50).Value = TextBox4.Text
        cmd.Parameters.Add("@address2", SqlDbType.VarChar, 50).Value = TextBox5.Text
        cmd.Parameters.Add("@city", SqlDbType.VarChar, 50).Value = TextBox6.Text
        cmd.Parameters.Add("@state", SqlDbType.VarChar, 50).Value = TextBox7.Text
        cmd.ExecuteNonQuery()
        Response.Redirect("login.aspx")
    End Sub
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        TextBox3.Text = Session("cnt")
    End Sub
End Class
