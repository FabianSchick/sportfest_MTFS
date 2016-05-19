/*
 * Auf dieser Klasse basiert das Objekt BestenlisteObjekt, welches für die Ausgabe der Rekorde verwendet wird
 */

public class BestenlisteObjekt {
	private int[] id = new int[3];
	private double[] ergebnisse = new double[3];
	private String [] vorname = new String[3];
	private String[] nachname = new String[3];
	private String[] stufe = new String[3];
	private String[] klasse = new String[3];
	
	public BestenlisteObjekt(int[] pID, double[] pErgebnisse, String[] pVorname, String[] pNachname, String[] pStufe, String[] pKlasse){
		id = pID;
		ergebnisse =pErgebnisse;
		vorname = pVorname;
		nachname =pNachname;
		stufe = pStufe;
		klasse = pKlasse;
	}

	public int[] getId() {
		return id;
	}

	public void setId(int[] id) {
		this.id = id;
	}

	public double[] getErgbnisse() {
		return ergebnisse;
	}

	public void setErgebnisse(double[] ergebnisse) {
		this.ergebnisse = ergebnisse;
	}

	public String[] getVorname() {
		return vorname;
	}

	public void setVorname(String[] vorname) {
		this.vorname = vorname;
	}

	public String[] getNachname() {
		return nachname;
	}

	public void setNachname(String[] nachname) {
		this.nachname = nachname;
	}

	public String[] getStufe() {
		return stufe;
	}

	public void setStufe(String[] stufe) {
		this.stufe = stufe;
	}

	public String[] getKlasse() {
		return klasse;
	}

	public void setKlasse(String[] klasse) {
		this.klasse = klasse;
	}
	
	
}
