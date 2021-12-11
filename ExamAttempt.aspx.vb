Imports System.Data.SqlClient
Partial Class ExamAttempt
    Inherits System.Web.UI.Page
    Dim conn As SqlConnection
    Dim comm As SqlCommand
    Dim dar As SqlDataReader
    Dim marks As Integer

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        txtkaushalyaid.Text = Session("KID")
        If txtkaushalyaid.Text = "" Then
            Response.Redirect("login.aspx")
        End If
        conn = New SqlConnection("server=ROHIT-PANDEY\SQL17;uid=sa;pwd=sa@1234;database=c2a")
        conn.Open()
        comm = New SqlCommand("select * from ExamMaster where Q_Id=" & txtquestionid.Text & "", conn)
        dar = comm.ExecuteReader()
        While dar.Read
            txtquestion.Text = dar(1)
            RadioButton1.Text = dar(2)
            RadioButton2.Text = dar(3)
            RadioButton3.Text = dar(4)
            RadioButton4.Text = dar(5)
            txtrightanswer.text = dar(6)
        End While
        conn.Close()

    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        RadioButton1.Checked = False
        RadioButton2.Checked = False
        RadioButton3.Checked = False
        RadioButton4.Checked = False

        If txtquestionid.Text >= 1 And txtquestionid.Text < 4 Then
            txtquestionid.Text = txtquestionid.Text + 1
            conn = New SqlConnection("server=ROHIT-PANDEY\SQL17;uid=sa;pwd=sa@1234;database=c2a")
            conn.Open()
            comm = New SqlCommand("select * from ExamMaster where Q_Id=" & txtquestionid.Text & "", conn)
            dar = comm.ExecuteReader()
            While dar.Read
                txtquestion.Text = dar(1)
                RadioButton1.Text = dar(2)
                RadioButton2.Text = dar(3)
                RadioButton3.Text = dar(4)
                RadioButton4.Text = dar(5)
                txtrightanswer.Text = dar(6)
            End While
            Label1.Text = ""
        Else
            Label1.Visible = True
            Label1.Text = "Last Question "

        End If
        conn.Close()
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        RadioButton1.Checked = False
        RadioButton2.Checked = False
        RadioButton3.Checked = False
        RadioButton4.Checked = False

        If txtquestionid.Text > 1 And txtquestionid.Text <= 4 Then
            txtquestionid.Text = txtquestionid.Text - 1
            conn = New SqlConnection("server=ROHIT-PANDEY\SQL17;uid=sa;pwd=sa@1234;database=c2a")
            conn.Open()
            comm = New SqlCommand("select * from ExamMaster where Q_Id=" & txtquestionid.Text & "", conn)
            dar = comm.ExecuteReader()
            While dar.Read
                txtquestion.Text = dar(1)
                RadioButton1.Text = dar(2)
                RadioButton2.Text = dar(3)
                RadioButton3.Text = dar(4)
                RadioButton4.Text = dar(5)
                txtrightanswer.Text = dar(6)
            End While
            Label1.Text = ""
        Else
            Label1.Visible = True
            Label1.Text = "First Question "

        End If
        conn.Close()
    End Sub

    Protected Sub RadioButton1_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles RadioButton1.CheckedChanged
        txtselectedanswer.Text = RadioButton1.Text
    End Sub

    Protected Sub RadioButton2_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles RadioButton2.CheckedChanged
        txtselectedanswer.Text = RadioButton2.Text
    End Sub

    Protected Sub RadioButton3_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles RadioButton3.CheckedChanged
        txtselectedanswer.Text = RadioButton3.Text
    End Sub

    Protected Sub RadioButton4_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles RadioButton4.CheckedChanged
        txtselectedanswer.Text = RadioButton4.Text()
    End Sub
    Dim duplicaterecord As Integer

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        If txtselectedanswer.Text = txtrightanswer.Text Then
            marks = 1
        Else
            marks = 0
        End If
        conn = New SqlConnection("server=ROHIT-PANDEY\SQL17;uid=sa;pwd=sa@1234;database=c2a")
        conn.Open()
        comm = New SqlCommand("select count(*) from exam_attempt where  Q_Id = '" & txtquestionid.Text & "' AND K_ID = '" & txtkaushalyaid.Text & "'", conn)
        duplicaterecord = comm.ExecuteScalar
        conn.Close()

        If duplicaterecord = 0 Then
            conn.Open()
            comm = New SqlCommand("insert into exam_attempt values('" & txtkaushalyaid.Text & "','" & txtquestionid.Text & "','" & txtselectedanswer.Text & "'," & marks & ",'" & txtquestion.Text & "')", conn)
            comm.ExecuteNonQuery()
            Label1.Visible = True
            Label1.Text = "Answer Submitted"
            conn.Close()
        Else
            conn.Open()
            comm = New SqlCommand("update exam_attempt set Answer = '" & txtselectedanswer.Text & "', marks= '" & marks & "' where K_ID= '" & txtkaushalyaid.Text & "' and Q_Id = " & txtquestionid.Text & " ", conn)
            comm.ExecuteNonQuery()
            Label1.Visible = True
            Label1.Text = "Previously attempted Answer Changed "
        End If

    End Sub

    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button4.Click
        Response.Redirect("Result.aspx")
    End Sub
    Protected Sub txtquestion_TextChanged(sender As Object, e As EventArgs) Handles txtquestion.TextChanged

    End Sub
    Protected Sub txtrightanswer_TextChanged(sender As Object, e As EventArgs) Handles txtrightanswer.TextChanged

    End Sub
End Class
