Imports Microsoft.VisualBasic
Imports System.Data
Imports System.Data.SqlClient
Imports System
Imports System.Collections
Partial Class choose_order_details
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Label9.Text = Session("ordernumber")
        Label8.Text = Session("city")
        Label11.Text = Session("state")
        Label17.Text = "Welcome, " & Session("uname")
    End Sub
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim con As New SqlConnection
        Dim cmd As New SqlCommand

        Try
            con.ConnectionString = "Data Source=PARTEEK-GOYAL-0\SQLEXPRESS;Initial Catalog=Food_Ordering;Integrated Security=True"
            con.Open()
            cmd.Connection = con
            cmd.CommandType = CommandType.StoredProcedure
            cmd.CommandText = "order_details_update_before_pay"
            cmd.Parameters.Add("@orderno", SqlDbType.BigInt).Value = Session("ordernumber")
            cmd.Parameters.Add("@contact", SqlDbType.BigInt).Value = TextBox5.Text
            cmd.Parameters.Add("@address1", SqlDbType.VarChar).Value = TextBox3.Text
            cmd.Parameters.Add("@address2", SqlDbType.VarChar).Value = TextBox4.Text
            cmd.Parameters.Add("@city", SqlDbType.VarChar).Value = Label8.Text
            cmd.Parameters.Add("@state", SqlDbType.VarChar).Value = Label11.Text
            cmd.Parameters.Add("@payment_mode", SqlDbType.BigInt).Value = DropDownList2.Text

            cmd.Parameters.Add("@mrp", SqlDbType.BigInt).Value = Session("totalmrp")
            'cmd.Parameters.Add("@delivery_amt", SqlDbType.BigInt).Value = 20

            cmd.ExecuteNonQuery()

            Session.Add("delivery_contact", TextBox5.Text)
            Session.Add("address_1", TextBox3.Text)
            Session.Add("address_2", TextBox4.Text)
            Session.Add("city", Label8.Text)
            Session.Add("state", Label11.Text)
            'Session.Add("deli_amt", Label14.Text)

        Catch ex As Exception
            Label15.Text = ex.Message
        End Try
        Try
            If DropDownList2.Text = 1 Then
                Response.Redirect("success_pay.aspx")
            End If
            If DropDownList2.Text = 2 Then
                Response.Redirect("card_pay.aspx")
            End If
            If DropDownList2.Text = 3 Then
                Response.Redirect("netbanking.aspx")
            End If
            If DropDownList2.Text = 4 Then
                Response.Redirect("phonepe.aspx")
            End If
            If DropDownList2.Text = 5 Then
                Response.Redirect("paytm.aspx")
            End If
        Catch ex As Exception
            Label15.Text = ex.Message
        End Try

    End Sub
    
End Class
