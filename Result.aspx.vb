Imports System.Data.SqlClient
Partial Class Result
    Inherits System.Web.UI.Page
    Dim conn As SqlConnection
    Dim comm As SqlCommand

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        txtkaushalyaid.Text = Session("KID")
        If txtkaushalyaid.Text = "" Then
            Response.Redirect("Login.aspx")
        End If
        conn = New SqlConnection("server=ROHIT-PANDEY\SQL17;uid=sa;pwd=sa@1234;database=c2a")
        conn.Open()
        comm = New SqlCommand("select Q_Id,Answer,marks,question from exam_attempt", conn)
        GridView1.DataSource = comm.ExecuteReader
        GridView1.DataBind()
        conn.Close()
        conn = New SqlConnection("server=ROHIT-PANDEY\SQL17;uid=sa;pwd=sa@1234;database=c2a")
        conn.Open()
        comm = New SqlCommand("select sum(marks) from exam_attempt", conn)
        txttotalmarks.Text = comm.ExecuteScalar
        txtpercentage.Text = (Val(txttotalmarks.Text) * 100) / 4
        conn.Close()
    End Sub

    Protected Sub GridView1_RowDataBound(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewRowEventArgs) Handles GridView1.RowDataBound
        If (e.Row.RowType = DataControlRowType.DataRow) Then
            If e.Row.Cells(2).Text = 1 Then
                e.Row.Cells(2).BackColor = System.Drawing.Color.Green
                e.Row.Cells(2).ForeColor = System.Drawing.Color.White
            Else
                e.Row.Cells(2).BackColor = System.Drawing.Color.Red
                e.Row.Cells(2).ForeColor = System.Drawing.Color.White
            End If
        End If
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Response.Redirect("Login.aspx")
    End Sub
    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click

    End Sub
End Class
