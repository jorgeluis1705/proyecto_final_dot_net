using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.ComponentModel.DataAnnotations;

namespace PF_dot_net
{
    public partial class Asistencia_tallerista : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Talleristas.aspx");
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
        }

        protected void Calendar1_DayRender(Object sender, DayRenderEventArgs e)
        {
            if (e.Day.IsOtherMonth)
            {
                e.Day.IsSelectable = false;
            }

            if (e.Day.IsWeekend)
            {
                e.Day.IsSelectable = false;
            }

            if (e.Day.Date > DateTime.Today)
            {
                e.Day.IsSelectable = false;
            }
        }

            public DateTime TodaysDate { get; set; }

        protected void Calendar2_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.IsOtherMonth)
            {
                e.Day.IsSelectable = false;
            }

            if (e.Day.IsWeekend)
            {
                e.Day.IsSelectable = false;
            }

            if (e.Day.Date > DateTime.Today)
            {
                e.Day.IsSelectable = false;
            }
        }
    }
}