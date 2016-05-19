import java.io.Serializable;
/*
 * Diese Klasse ist der Bauplan f�r die Sch�rlerobjekte, mit denen auf dem Server gearbeitet wird.
 */
public class SchuelerObjekt implements Serializable {
	private int id;
	private String vorname;
	private String nachname;
	private String klasse;
	private String stufe;
	
	public SchuelerObjekt(){
		
	}
	
	public SchuelerObjekt(int pID, String pVorname, String pNachname, String pKlasse, String pStrufe){
		id = pID;
		vorname = pVorname;
		nachname = pNachname;
		klasse = pKlasse;
		stufe = pStrufe;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getVorname() {
		return vorname;
	}

	public void setVorname(String vorname) {
		this.vorname = vorname;
	}

	public String getNachname() {
		return nachname;
	}

	public void setNachname(String nachname) {
		this.nachname = nachname;
	}

	public String getKlasse() {
		return klasse;
	}

	public void setKlasse(String klasse) {
		this.klasse = klasse;
	}

	public String getStufe() {
		return stufe;
	}

	public void setStufe(String stufe) {
		this.stufe = stufe;
	}
	
	
	
}
