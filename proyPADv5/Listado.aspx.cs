using proyPADv5.DataSet1TableAdapters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace proyPADv5
{
    public partial class Listado : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void db_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            DataSet1 dataset = new DataSet1();//instanciamos el dataset
            CursoTableAdapter CursosTA = new CursoTableAdapter();
            AlumnoTableAdapter AlumnosTA = new AlumnoTableAdapter();
            InscripcionTableAdapter InscripcionesTA = new InscripcionTableAdapter();
            List<AlumnoEnCurso> AlumnosEnCurso = new List<AlumnoEnCurso>();

            var anio = int.Parse(DropDownList1.SelectedValue);
            string curso = DropDownList2.SelectedValue;
            
            var ListadoAlumnos = (AlumnosTA.GetDataByAlumnosPorCurso(anio,curso)).ToList();

            foreach (var a in ListadoAlumnos)
            {
                AlumnoEnCurso alumno = new AlumnoEnCurso();
                alumno.legajo = a.legajo;
                alumno.dni = a.dniAlumno;
                alumno.nombre = a.nombre;
                alumno.apellido = a.Apellido;

                AlumnosEnCurso.Add(alumno);
                
            }
        
            GridView1.DataSource = AlumnosEnCurso;
            
            GridView1.DataBind();
        }
    }
}