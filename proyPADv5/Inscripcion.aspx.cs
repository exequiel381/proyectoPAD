using proyPADv5.DataSet1TableAdapters;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace proyPADv5
{
    public partial class Formulario_web1 : System.Web.UI.Page
    {
        DataSet1 dataset = new DataSet1();//instanciamos el dataset
        CursoTableAdapter CursosTA = new CursoTableAdapter();
        TutorTableAdapter TutoresTA = new TutorTableAdapter();
        AlumnoTableAdapter AlumnosTA = new AlumnoTableAdapter();
        InscripcionTableAdapter InscripcionesTA = new InscripcionTableAdapter();
        conceptoTableAdapter ConceptoTA = new conceptoTableAdapter();
        cuentaTableAdapter cuentaTA = new cuentaTableAdapter();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        

        protected void btnInscribir_Click(object sender, EventArgs e)
        {
           
           

            if (TutoresTA.GetDataByDniTutor(int.Parse(txtDniTutor.Text)).Count == 0) // Si no existe hacemmos el insert
            {
                TutoresTA.Insert(int.Parse(txtDniTutor.Text), txtNombreTutor.Text, txtApellidoTutor.Text);
            }

            if (AlumnosTA.GetDataByAlumnoDni(int.Parse(txtDniAlumno.Text)).Count == 0)
            {
                string fechaNacimiento = ""+FechaNac.SelectedDate;
                AlumnosTA.InsertAutoIncremental(int.Parse(txtDniAlumno.Text), txtNombreAlumno.Text, txtApellidoAlumno.Text,fechaNacimiento, int.Parse(txtDniTutor.Text));
            }

            var añoActual = DateTime.Today.Year;
            var fechaActual = DateTime.Today;

            if (InscripcionesTA.GetDataByAlumnoInscripto(añoActual, int.Parse(txtDniAlumno.Text)).Count == 0)
            {
                var idCurso = cbxCurso.SelectedValue;
                int? legajo = AlumnosTA.ObtenerLegajo(int.Parse(txtDniAlumno.Text));
                

                var matricula = ConceptoTA.GetImporte("matricula");
                var seguro = ConceptoTA.GetImporte("seguro");
                var cuota = ConceptoTA.GetImporte("marzo");

                InscripcionesTA.Insert(fechaActual, añoActual, legajo, idCurso);

                cuentaTA.AgregarCuentas(añoActual,legajo,matricula,seguro,cuota);//Procedimiento almcenado

                    

            }
            else
            {
                Response.Redirect("AlumnoInscripto.aspx");
            }
            

            dataset.AcceptChanges();

            Response.Redirect("AlumnoInscripto.aspx");
        }

       
        
        protected void cbxNiveles_SelectedIndexChanged(object sender, EventArgs e)
        {
            int idNivel = int.Parse(cbxNiveles.SelectedValue);
            var Cursos = CursosTA.GetDataByNivel(idNivel);
            CursosTA.FillByNivel(dataset.Curso,idNivel);
            
            cbxCurso.DataSource = Cursos.ToList();

        }
    }
}