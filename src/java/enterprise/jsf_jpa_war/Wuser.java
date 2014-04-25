
package enterprise.jsf_jpa_war;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import static javax.persistence.GenerationType.IDENTITY;


@Entity
@Table(name = "WUSER")

        
@NamedQueries( {@NamedQuery(name = "Wuser.findById", query = "SELECT w FROM Wuser w WHERE w.id = :id"), @NamedQuery(name = "Wuser.findByFirstname", query = "SELECT w FROM Wuser w WHERE w.firstname = :firstname"), @NamedQuery(name = "Wuser.findByLastname", query = "SELECT w FROM Wuser w WHERE w.lastname = :lastname"), @NamedQuery(name = "Wuser.findByUsername", query = "SELECT w FROM Wuser w WHERE w.username = :username"), @NamedQuery(name = "Wuser.findByPassword", query = "SELECT w FROM Wuser w WHERE w.password = :password"), @NamedQuery(name = "Wuser.findBySince", query = "SELECT w FROM Wuser w WHERE w.since = :since"),@NamedQuery(name = "Wuser.findByAdminfield", query = "SELECT w FROM Wuser w WHERE w.adminfield = :adminfield")})
public class Wuser implements Serializable {

    @Id
    @GeneratedValue(strategy=IDENTITY)
    @Column(name = "ID", nullable = false)
    private Integer id;

    @Column(name = "FIRSTNAME", nullable = false)
    private String firstname;

    @Column(name = "LASTNAME", nullable = false)
    private String lastname;

    @Column(name = "USERNAME", nullable = false)
    private String username;

    @Column(name = "PASSWORD", nullable = false)
    private String password;
     @Column(name = "Role", nullable = false)
    private String role;

    
    @Column(name = "ADMINFIELD")
    private Boolean adminfield;


    @Column(name = "SINCE")
    @Temporal(TemporalType.TIMESTAMP)
    private Date since;
    
    /** Creates a new instance of Wuser
     * @return  */
    /**
     * Creates a new instance of Wuser
     */
    public Wuser() {
    }
public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }
    public Wuser(Integer id) {
        this.id = id;
    }

    public Wuser(Integer id, String firstname, String lastname, String username, String password,boolean adminfield) {
        this.id = id;
        this.firstname = firstname;
        this.lastname = lastname;
        this.username = username;
        this.password = password;
        this.adminfield = adminfield;
        
    }
    public Boolean isAdminfield() {
        return adminfield;
    }

    public void setAdminfield(boolean adminfield) {
        if (!adminfield) {
            this.role="user";
        }else this.role="admin";
           
        this.adminfield = adminfield;
    }

    public Integer getId() {
        return this.id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getFirstname() {
        return this.firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return this.lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getUsername() {
        return this.username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return this.password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Date getSince() {
        return this.since;
    }

    public void setSince(Date since) {
        this.since = since;
    }

    public int hashCode() {
        int hash = 0;
        hash += (this.id != null ? this.id.hashCode() : 0);
        return hash;
    }

    public boolean equals(Object object) {
        if (object == null || !this.getClass().equals(object.getClass())) {
            return false;
        }
        Wuser other = (Wuser)object;
        if (this.id != other.id && (this.id == null || !this.id.equals(other.id))) return false;
        return true;
    }

    public String toString() {
        //TODO change toString() implementation to return a better display name
        return "" + this.id;
    }

    
   
    
}
