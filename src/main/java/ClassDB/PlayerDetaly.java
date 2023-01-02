package ClassDB;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author Retro
 */
public class PlayerDetaly {

    int id;
    String LASTNAME;
    String FIRSTNAME;
    int JERSEYNUMBER;
    String LASTSPOKENWORDS;

    PlayerDetaly(Integer id, String firstname) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public PlayerDetaly(int id, String LASTNAME, String FIRSTNAME, int JERSEYNUMBER, String LASTSPOKENWORDS) {
        this.id = id;
        this.LASTNAME = LASTNAME;
        this.FIRSTNAME = FIRSTNAME;
        this.JERSEYNUMBER = JERSEYNUMBER;
        this.LASTSPOKENWORDS = LASTSPOKENWORDS;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getLASTNAME() {
        return LASTNAME;
    }

    public void setLASTNAME(String LASTNAME) {
        this.LASTNAME = LASTNAME;
    }

    public String getFIRSTNAME() {
        return FIRSTNAME;
    }

    public void setFIRSTNAME(String FIRSTNAME) {
        this.FIRSTNAME = FIRSTNAME;
    }

    public int getJERSEYNUMBER() {
        return JERSEYNUMBER;
    }

    public void setJERSEYNUMBER(int JERSEYNUMBER) {
        this.JERSEYNUMBER = JERSEYNUMBER;
    }

    public String getLASTSPOKENWORDS() {
        return LASTSPOKENWORDS;
    }

    public void setLASTSPOKENWORDS(String LASTSPOKENWORDS) {
        this.LASTSPOKENWORDS = LASTSPOKENWORDS;
    }

   
    
}
