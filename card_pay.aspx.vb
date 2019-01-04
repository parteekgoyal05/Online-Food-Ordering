Imports Microsoft.VisualBasic
Imports System.Data
Imports System.Data.SqlClient
Imports System
Imports System.Collections
Partial Class card_pay
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim con As New SqlConnection
        Dim cmd As New SqlCommand
        Try
            con.ConnectionString = "Data Source=PARTEEK-GOYAL-0\SQLEXPRESS;Initial Catalog=Food_Ordering;Integrated Security=True"
            con.Open()
            cmd.Connection = con
            cmd.CommandType = CommandType.StoredProcedure
            cmd.CommandText = "card_no"
            cmd.Parameters.Add("@orderno", SqlDbType.BigInt).Value = Session("ordernumber")
            cmd.Parameters.Add("@cardno", SqlDbType.BigInt).Value = TextBox1.Text
            cmd.ExecuteNonQuery()
            If (TextBox1.Text.Length = 16 And TextBox2.Text.Length = 3 And TextBox3.Text.Length > 0) Then
                Response.Redirect("success_pay.aspx")
            Else

                Label6.Text = "Insufficient Data"
            End If


        Catch ex As Exception

        End Try
    End Sub
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub
End Class
