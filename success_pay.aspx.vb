Imports Microsoft.VisualBasic
Imports System.Data
Imports System.Data.SqlClient
Imports System
Imports System.Collections
Partial Class success_pay
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Label12.Text = Session("ordernumber")
        Label38.Text = "Welcome, " & Session("uname")
        Label16.Text = Session("delivery_contact")
        Label17.Text = Session("address_1")
        Label23.Text = Session("address_2")
        Label19.Text = "Rs. " & Session("totalmrp")
        'Label25.Text = Session("deli_amt")
        Label28.Text = Session("city")
        Label29.Text = Session("state")
        Label20.Text = "Rs. " & Session("tax")
        Label15.Text = Session("name")
        Label21.Text = "Rs. " & Session("total_amt")
        Dim con As New SqlConnection
        Dim cmd As New SqlCommand

        Dim taax As Integer
        Dim totaal As Integer
        Try
            con.ConnectionString = "Data Source=PARTEEK-GOYAL-0\SQLEXPRESS;Initial Catalog=Food_Ordering;Integrated Security=True"
            con.Open()
            cmd.Connection = con
            cmd.CommandType = CommandType.StoredProcedure
            cmd.CommandText = "final_details"
            cmd.Parameters.Add("@orderno", SqlDbType.BigInt).Value = Session("ordernumber")
            cmd.Parameters.Add("@user", SqlDbType.BigInt).Value = Session("user")
            cmd.Parameters.Add("@name", SqlDbType.VarChar, 50).Direction = ParameterDirection.Output
            cmd.Parameters.Add("@tax", SqlDbType.BigInt).Direction = ParameterDirection.Output
            cmd.Parameters.Add("@total", SqlDbType.BigInt).Direction = ParameterDirection.Output
            cmd.Parameters.Add("@mop", SqlDbType.VarChar, 50).Direction = ParameterDirection.Output

            cmd.Parameters.Add("@time", SqlDbType.DateTime).Direction = ParameterDirection.Output
            cmd.ExecuteNonQuery()
            taax = cmd.Parameters("@tax").Value
            totaal = cmd.Parameters("@total").Value
            Label20.Text = "Rs. " & taax
            Label21.Text = "Rs. " & totaal
            Label15.Text = cmd.Parameters("@name").Value
            Label18.Text = cmd.Parameters("@mop").Value

            Label14.Text = cmd.Parameters("@time").Value
            Session.Add("datetime", cmd.Parameters("@time").Value)
        Catch ex As Exception
            Label31.Text = ex.Message
        End Try
        Dim cmd1 As New SqlCommand
        Try
            cmd1.Connection = con
            cmd1.CommandType = CommandType.StoredProcedure
            cmd1.CommandText = "update_date_time_in_order"
            cmd1.Parameters.Add("@orderno", SqlDbType.BigInt).Value = Session("ordernumber")
            cmd1.Parameters.Add("@dt", SqlDbType.DateTime).Value = Session("datetime")
            cmd1.ExecuteNonQuery()
        Catch ex As Exception
            Label30.Text = ex.Message
        End Try
        Dim cmd2 As New SqlCommand
        Try
            cmd2.Connection = con
            cmd2.CommandType = CommandType.StoredProcedure
            cmd2.CommandText = "allote_delivery"
            cmd2.Parameters.Add("@orderno", SqlDbType.BigInt).Value = Session("ordernumber")
            cmd2.Parameters.Add("@del_name", SqlDbType.VarChar, 50).Direction = ParameterDirection.Output
            cmd2.Parameters.Add("@con", SqlDbType.BigInt).Direction = ParameterDirection.Output
            cmd2.ExecuteNonQuery()
            Label35.Text = cmd2.Parameters("@del_name").Value & " " & cmd2.Parameters("@con").Value
        Catch ex As Exception
            Label30.Text = ex.Message
        End Try
    End Sub
End Class
