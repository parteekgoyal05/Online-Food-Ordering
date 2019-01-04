Imports Microsoft.VisualBasic
Imports System.Data
Imports System.Data.SqlClient
Imports System
Imports System.Collections
Partial Class choose_state_city_res
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Session.Add("rest", DropDownList3.Text)
        Session.Add("city", DropDownList2.Text)
        Session.Add("state", DropDownList1.Text)


        Response.Redirect("show_menu_new.aspx")
    End Sub
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Label6.Text = "Welcome, " & Session("uname")
    End Sub
End Class
