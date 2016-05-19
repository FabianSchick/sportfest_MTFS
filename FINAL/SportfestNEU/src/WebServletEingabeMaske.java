import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.websocket.Session;

import org.apache.catalina.connector.Request;

import javafx.beans.property.adapter.JavaBeanStringProperty;
import javafx.scene.control.Alert;

/*
 * Diese Klasse ist dazu da, Anfragen von den einzelnen Seiten zu verarbeiten. Sie sient sozusagen als Verteiler für Aufgaben und ruft die benötigten Funktionen auf  
 */

@WebServlet("/myservletEingabeMaskeSportfest")
public class WebServletEingabeMaske extends HttpServlet {

	@Override
	/*
	 * (non-Javadoc)
	 * @see javax.servlet.http.HttpServlet#doPost(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse)
	 * Diese Methode nimmt die einzelnen "Button-Clicks" entgegen und ruft die benötigten Fuktionen auf
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//hier wird die Funktion pruefeDaten aufgerufen. Der dazugehörige Button befindet sich auf der Seite 
		// SportfestEingabeMaskeSchueler.jsp. Des Weiteren wird das Ergebnis interpretiert und danach auf die 
		// entsprechenden Seiten weitergeleitet
		if (request.getParameter("SchuelerPruefen") != null) {
			String s = EingabeMaskeFunktionen.pruefeDaten(request.getParameter("vornameSchueler"),
					request.getParameter("nachnameSchueler"), request.getParameter("stufeSchueler"),
					request.getParameter("klasseSchueler"));
			if (s.equals("Schueler existiert nicht")) {
				response.sendRedirect("../Sportfest/Fehlermeldung.php");
			} else if (s.equals("Bitte tragen Sie die Daten ein")) {
				response.sendRedirect("SportfestEingabeMaskeSportart.jsp");
			} else {
				response.sendRedirect("../Sportfest/Fehlermeldung.php");
			}
		//hier wird die Funktion ergebnisEintragen aufgerufen. der dazugehörige Button befindet sich auf der Seite
		// SportfestEingabeMaskeSchueler.jsp. Des Weiteren wird das Ergebnis interpretiert und danach auf die 
		// entsprechenden Seiten weitergeleitet
		} else if (request.getParameter("ErgebnisEintragen") != null) {
			boolean b = EingabeMaskeFunktionen.ergebnisEintragen(request.getParameter("ErgebnisSprinten"),
					request.getParameter("ErgebnisDauerlauf"), request.getParameter("ErgebnisWeitwurf"),
					request.getParameter("ErgebnisWeitsprung"), request.getParameter("ErgebnisKugelstoßen"),
					request.getParameter("ErgebnisSchlagball"));
			if (b == true) {
				AusgabeBestenliste.bestenListeSportfest();
				response.sendRedirect("../Sportfest/index.php");
			} else {
				response.sendRedirect("../Sportfest/Fehlermeldung.php");
			}

		}
	}
}
