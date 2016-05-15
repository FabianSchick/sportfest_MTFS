import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/myservletEingabeMaskeSportfest")
public class WebServletEingabeMaske extends HttpServlet {

	@Override

	 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


	if (request.getParameter("SchuelerPruefen") != null) {

		String s = EingabeMaskeFunktionen.pruefeDaten(request.getParameter("vornameSchueler"), request.getParameter("nachnameSchueler"), request.getParameter("stufeSchueler"), request.getParameter("klasseSchueler"));
		if(s.equals("Schueler existiert nicht")){
			System.out.println("Existiert niocht");
		}
		else if(s.equals("Bitte tragen Sie die Daten ein")){
			System.out.println("BIS hierher klappt es!");
			AusgabeBestenliste.zeichne();
			System.out.println("kiajio");
			response.sendRedirect("SportfestEingabeMaskeSportart.jsp");
			
		}
		else{
			System.out.println("blalabla zu viele 'Schueler im RS");
		}
		
		
	 } 
	 else if (request.getParameter("ErgebnisEintragen") != null) {
		 boolean b = EingabeMaskeFunktionen.ergebnisEintragen(request.getParameter("ErgebnisSprinten"), request.getParameter("ErgebnisDauerlauf"), request.getParameter("ErgebnisWeitwurf"), request.getParameter("ErgebnisWeitsprung"), request.getParameter("ErgebnisKugelstoﬂen"), request.getParameter("ErgebnisSchlagball"));
		 if(b==true){
			 System.out.println("JUHUUUUU");
			 
			 response.sendRedirect("../index.jsp");
		 } else{System.out.println("SCHEIﬂE");}

	 } else if (request.getParameter("button3") != null) {

	 } else {

	 // some code

	 }//request.getRequestDispatcher("/tabelle.jsp").forward(request, response);
	 }
}	
	

