using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using CapaDatos;

namespace CapaPresentacion
{
    public partial class FrmCuentas : Form
    {
        public FrmCuentas()
        {
            InitializeComponent();
        }


        public void MtdMostrarCuentas()
        {
            CD_Cuentas cd_cuentas = new CD_Cuentas();
            DataTable dtMostrarCuentas = cd_cuentas.MtMostrarCuentas();
            dgvCuentas.DataSource = dtMostrarCuentas;
        }

        private void FrmClientes_Load(object sender, EventArgs e)
        {
            MtdMostrarCuentas();
        }

        private void label4_Click(object sender, EventArgs e)
        {

        }

        private void btnGuardar_Click(object sender, EventArgs e)
        {
            CD_Cuentas cD_Cuentas = new CD_Cuentas();
            try
            {
                cD_Cuentas.MtdAgregarCuentas(int.Parse(txtCodigoCliente.Text), txtNumeroCuenta.Text, cboxTipoCuenta.Text, double.Parse(txtSaldo.Text),DateTime.Parse(txtFechaApertura.Text), cboxEstado.Text);
                MessageBox.Show("La cuenta se agrego con exito", "Correcto", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.StackTrace,"Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void gboxCuentas_Enter(object sender, EventArgs e)
        {

        }
    }
}
