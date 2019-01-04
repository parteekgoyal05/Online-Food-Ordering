Imports Microsoft.VisualBasic
Imports System.Data
Imports System.Data.SqlClient
Imports System
Imports System.Collections
Partial Class show_menu_2
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Label3.Text = Session("rest")
        Label2.Text = Session("user")
        Dim order As Integer
        Dim con As New SqlConnection
        Dim cmd As New SqlCommand
        Try
            con.ConnectionString = "Data Source=PARTEEK-GOYAL-0\SQLEXPRESS;Initial Catalog=Food_Ordering;Integrated Security=True"
            con.Open()
            cmd.Connection = con
            cmd.CommandType = CommandType.StoredProcedure
            cmd.CommandText = "gen_order"
            cmd.Parameters.Add("@contact", SqlDbType.BigInt).Value = Session("user")
            cmd.Parameters.Add("@res_code", SqlDbType.BigInt).Value = Session("rest")
            cmd.Parameters.Add("@gen_order", SqlDbType.BigInt).Direction = ParameterDirection.Output
            cmd.ExecuteNonQuery()
            order = cmd.Parameters("@gen_order").Value
            Session.Add("ordernumber", order)
            Label1.Text = order
        Catch ex As Exception
            Label1.Text = ex.Message
        End Try
        Dim check As New CheckBox
        Dim fi As New Label
        Dim q As New DropDownList
        Dim cmd1 As New SqlCommand
        Try
            Dim i As Integer
            i = 0
            For i = 0 To GridView1.Rows.Count() - 1
                check = CType(GridView1.Rows(i).FindControl("checkbox2"), CheckBox)
                q = CType(GridView1.Rows(i).FindControl("DropDownList1"), DropDownList)
                fi = CType(GridView1.Rows(i).FindControl("Label5"), Label)
                If check.Checked = True Then
                    cmd1.CommandType = CommandType.StoredProcedure
                    cmd1.CommandText = "add_order_item"
                    cmd1.Connection = con
                    cmd1.Parameters.Add("@orderno", SqlDbType.BigInt).Value = Session("ordernumber")
                    cmd1.Parameters.Add("@foodcode", SqlDbType.BigInt).Value = fi.Text
                    cmd1.Parameters.Add("@quantity", SqlDbType.BigInt).Value = q.Text
                    cmd1.Parameters.Add("@res_code", SqlDbType.BigInt).Value = Session("rest")
                    cmd1.ExecuteNonQuery()
                    cmd1.Parameters.Clear()
                End If
            Next
        Catch ex As Exception
            Label1.Text = ex.Message
        End Try
        Dim cmd2 As New SqlCommand
        Dim mrp As Integer
        Try
            cmd2.CommandType = CommandType.StoredProcedure
            cmd2.CommandText = "total_mrp"
            cmd2.Connection = con
            cmd2.Parameters.Add("@order_number", SqlDbType.BigInt).Value = Session("ordernumber")
            cmd2.Parameters.Add("@calc", SqlDbType.BigInt).Direction = ParameterDirection.Output
            cmd2.ExecuteNonQuery()
            mrp = cmd2.Parameters("@calc").Value
            Session.Add("totalmrp", mrp)
            Label3.Text = mrp
        Catch ex As Exception

        End Try
        GridView3.Visible = True
        Button2.Visible = True
        Button3.Visible = True
    End Sub
    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Response.Redirect("choose_order_details.aspx")
    End Sub
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        GridView3.Visible = False
        Button2.Visible = False
        Label4.Visible = False
        Button3.Visible = False
    End Sub
    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Dim con As New SqlConnection
        Dim cmd As New SqlCommand
        Try
            con.ConnectionString = "Data Source=PARTEEK-GOYAL-0\SQLEXPRESS;Initial Catalog=Food_Ordering;Integrated Security=True"
            con.Open()
            cmd.Connection = con
            cmd.CommandType = CommandType.StoredProcedure
            cmd.CommandText = "update_order_items"
            cmd.Parameters.Add("@orderno", SqlDbType.BigInt).Value = Session("ordernumber")
            cmd.ExecuteNonQuery()
            Label4.Visible = True
            Response.Redirect("show_menu_2.aspx")
        Catch ex As Exception

        End Try
    End Sub

End Class
