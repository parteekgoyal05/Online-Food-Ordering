Imports Microsoft.VisualBasic
Imports System.Data
Imports System.Data.SqlClient
Imports System
Imports System.Collections
Partial Class show_menu_new
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Label2.Text = "Restaurant: " & Session("restname")
        Label3.Text = "Welcome, " & Session("uname")
        Dim order As Integer
        Dim con As New SqlConnection
        Dim cmd As New SqlCommand
        Try
            con.ConnectionString = "Data Source=PARTEEK-GOYAL-0\SQLEXPRESS;Initial Catalog=Food_Ordering;Integrated Security=True"
            con.Open()
            cmd.Connection = con
            cmd.CommandType = CommandType.StoredProcedure
            cmd.CommandText = "gen_order"
            cmd.Parameters.Add("@user", SqlDbType.BigInt).Value = Session("user")
            cmd.Parameters.Add("@contact", SqlDbType.BigInt).Value = Session("user")
            cmd.Parameters.Add("@res_code", SqlDbType.BigInt).Value = Session("rest")
            cmd.Parameters.Add("@gen_order", SqlDbType.BigInt).Direction = ParameterDirection.Output
            cmd.ExecuteNonQuery()
            order = cmd.Parameters("@gen_order").Value
            Session.Add("ordernumber", order)
            Label4.Text = order
        Catch ex As Exception
            Label5.Text = ex.Message
        End Try
        Dim check As New CheckBox
        Dim fi As New Label
        Dim q As New DropDownList
        Dim cmd1 As New SqlCommand
        Try
            Dim i As Integer
            i = 0
            For i = 0 To GridView1.Rows.Count() - 1
                check = CType(GridView1.Rows(i).FindControl("checkbox1"), CheckBox)
                q = CType(GridView1.Rows(i).FindControl("DropDownList1"), DropDownList)
                fi = CType(GridView1.Rows(i).FindControl("Label1"), Label)
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
            Label5.Text = ex.Message
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
            Label6.Text = "Total MRP is: " & mrp
        Catch ex As Exception

        End Try
        Button2.Visible = True
        Button3.Visible = True
        Button4.Visible = False
        Panel2.Visible = True
        GridView2.Visible = True
        Label2.Visible = True

    End Sub
    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Response.Redirect("choose_order_details.aspx")
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

        Catch ex As Exception

        End Try
        Button2.Visible = False
        Button1.Visible = False
        Button4.Visible = True
        Label2.Visible = False

    End Sub
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim con As New SqlConnection
        Dim cmd As New SqlCommand
        Dim resto As New Label
        Try
            con.ConnectionString = "Data Source=PARTEEK-GOYAL-0\SQLEXPRESS;Initial Catalog=Food_Ordering;Integrated Security=True"
            con.Open()
            cmd.Connection = con
            cmd.CommandType = CommandType.StoredProcedure
            cmd.CommandText = "rest_name"
            cmd.Parameters.Add("@rest_code", SqlDbType.BigInt).Value = Session("rest")
            cmd.Parameters.Add("@rest_name", SqlDbType.VarChar, 150).Direction = ParameterDirection.Output
            cmd.ExecuteNonQuery()
            resto.Text = cmd.Parameters("@rest_name").Value
            Session.Add("restname", resto.Text)
        Catch ex As Exception

        End Try



        Label2.Text = "Restaurant: " & Session("restname")
        Label3.Text = "Welcome, " & Session("uname")

        Label4.Visible = False
        Label2.Visible = True
        Label3.Visible = True
        Button2.Visible = False
        Button3.Visible = False
        Button4.Visible = False
        Panel2.Visible = False
        GridView2.Visible = False
    End Sub


    Protected Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        Dim con As New SqlConnection
        Dim check As New CheckBox
        Dim fi As New Label
        Dim q As New DropDownList
        Dim cmd1 As New SqlCommand
        Label4.Text = Session("ordernumber")
        Try
            con.ConnectionString = "Data Source=PARTEEK-GOYAL-0\SQLEXPRESS;Initial Catalog=Food_Ordering;Integrated Security=True"
            con.Open()
            Dim i As Integer
            i = 0
            For i = 0 To GridView1.Rows.Count() - 1
                check = CType(GridView1.Rows(i).FindControl("checkbox1"), CheckBox)
                q = CType(GridView1.Rows(i).FindControl("DropDownList1"), DropDownList)
                fi = CType(GridView1.Rows(i).FindControl("Label1"), Label)
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
            Label5.Text = ex.Message
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
            Label6.Text = "Total MRP is " & mrp
        Catch ex As Exception

        End Try
        GridView2.DataBind()
        Panel2.Visible = True
        GridView2.Visible = True
        Button2.Visible = True
        Button3.Visible = True
        Label2.Visible = True

    End Sub

End Class
