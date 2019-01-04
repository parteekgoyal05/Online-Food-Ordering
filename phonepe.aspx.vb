Imports Microsoft.VisualBasic
Imports System.Data
Imports System.Data.SqlClient
Imports System
Imports System.Collections
Partial Class paytm
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim con As New SqlConnection
        Dim cmd As New SqlCommand
        Dim result As New Integer
        Try
            con.ConnectionString = "Data Source=PARTEEK-GOYAL-0\SQLEXPRESS;Initial Catalog=Food_Ordering;Integrated Security=True"
            con.Open()
            cmd.Connection = con
            cmd.CommandType = CommandType.StoredProcedure
            cmd.CommandText = "pass_payment"
            cmd.Parameters.Add("@contact", SqlDbType.BigInt).Value = Session("user")
            cmd.Parameters.Add("@pass", SqlDbType.BigInt).Value = TextBox2.Text
            cmd.Parameters.Add("@res", SqlDbType.BigInt).Direction = ParameterDirection.Output
            cmd.ExecuteNonQuery()
            result = cmd.Parameters("@res").Value
            If result = 1 Then
                Response.Redirect("success_pay.aspx")
            End If
            If result = 0 Then
                Label5.Text = "Incorrect Password"
            End If
        Catch ex As Exception
            Label5.Text = ex.Message
        End Try
    End Sub
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Label4.Text = Session("user")
    End Sub
End Class
