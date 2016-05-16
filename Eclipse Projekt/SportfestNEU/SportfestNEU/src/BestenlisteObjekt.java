public class BestenlisteObjekt {
	private int[] id = new int[3];
	private int[] punkte = new int[3];
	private String [] vorname = new String[3];
	private String[] nachname = new String[3];
	private String[] stufe = new String[3];
	private String[] klasse = new String[3];
	
	public BestenlisteObjekt(int[] pID, int[] pPunkte, String[] pVorname, String[] pNachname, String[] pStufe, String[] pKlasse){
		id = pID;
		punkte =pPunkte;
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

	public int[] getPunkte() {
		return punkte;
	}

	public void setPunkte(int[] punkte) {
		this.punkte = punkte;
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
