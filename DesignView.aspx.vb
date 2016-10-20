
Partial Class AppData_Details
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        AccessDataSource1.FilterExpression = "project_company + project_name + group_name + project_amountSR like '%" & TextBox1.Text & "%'"
    End Sub
End Class
