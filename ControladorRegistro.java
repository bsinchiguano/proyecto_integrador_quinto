package com.web.control;

import com.web.conexion.Conexion;
import com.web.modelo.Registro;

import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.context.FacesContext;

@ManagedBean(name = "ControlRegistro")

public class ControladorRegistro extends Registro {

	public void validaciones() {
		if (this.getCedula().equals("") || this.getNombre().equals("") || this.getCorreo().equals("")
				|| this.getContrasenia().equals("")) {
			System.out.println("Error hay campos vacios");

		} else if (this.validadorDeCedula(this.getCedula()) == false) {
			System.out.println("Cedula incorrecta ");
		} else if (this.getContrasenia().length() < 6) {
			System.out.println("La clave debe ser mayor a 6 caracteres");
		} else {
			System.out.println(this.getCedula());
			System.out.println(this.getNombre());
			System.out.println(this.getCorreo());
			System.out.println(this.getContrasenia());
			String sql = "Insert into usuarios values(" + getCedula() + ",'" + getCorreo() + "','" + getContrasenia()
					+ "','" + getNombre() + "',2";
			System.out.println(sql);
			// Conexion.conectar();
			// try {
			// int resultado = Conexion.ejecutar(sql);
			// if (resultado == 1) {
			// System.out.println("consulta exitosa");
			// } else {
			// System.out.println("Error en la consulta");
			// }
			// } catch (Exception e) {
			// e.printStackTrace();
			// }
			//
			// Conexion.cerrar();
			this.redi();
		}
	}

	public boolean validadorDeCedula(String ced) {
		boolean cedulaCorrecta = false;
		try {

			if (ced.length() == 10) // ConstantesApp.LongitudCedula
			{
				int tercerDigito = Integer.parseInt(ced.substring(2, 3));
				if (tercerDigito < 6) {
					// Coeficientes de validación cédula
					// El decimo digito se lo considera dígito verificador
					int[] coefValCedula = { 2, 1, 2, 1, 2, 1, 2, 1, 2 };
					int verificador = Integer.parseInt(ced.substring(9, 10));
					int suma = 0;
					int digito = 0;
					for (int i = 0; i < (ced.length() - 1); i++) {
						digito = Integer.parseInt(ced.substring(i, i + 1)) * coefValCedula[i];
						suma += ((digito % 10) + (digito / 10));
					}

					if ((suma % 10 == 0) && (suma % 10 == verificador)) {
						cedulaCorrecta = true;
					} else if ((10 - (suma % 10)) == verificador) {
						cedulaCorrecta = true;
					} else {
						cedulaCorrecta = false;
					}
				} else {
					cedulaCorrecta = false;
				}
			} else {
				cedulaCorrecta = false;
			}
		} catch (NumberFormatException nfe) {
			cedulaCorrecta = false;
		} catch (Exception err) {
			System.out.println("Una excepcion ocurrio en el proceso de validadcion");
			cedulaCorrecta = false;
		}

		if (!cedulaCorrecta) {
			System.out.println("La Cédula ingresada es Incorrecta");
		} else {
			System.out.println("correcta");
		}
		return cedulaCorrecta;
	}

	public String redi() {
		String A = " ";
		A = "logeo.xhtml";
		return A;
	}
}
