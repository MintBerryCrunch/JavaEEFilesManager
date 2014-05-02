/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package enterprise.jsf_jpa_war;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 *
 * @author Элвин
 */
@Entity
@Table(name = "FILES")
@NamedQueries({
    @NamedQuery(name = "Files.findAll", query = "SELECT f FROM Files f"),
    @NamedQuery(name = "Files.findById", query = "SELECT f FROM Files f WHERE f.id = :id"),
    @NamedQuery(name = "Files.findByUserId", query = "SELECT f FROM Files f WHERE f.userId = :userId"),
    @NamedQuery(name = "Files.findByFileName", query = "SELECT f FROM Files f WHERE f.fileName = :fileName"),
    @NamedQuery(name = "Files.findByAddedDate", query = "SELECT f FROM Files f WHERE f.addedDate = :addedDate"),
    @NamedQuery(name = "Files.findByModifiedDate", query = "SELECT f FROM Files f WHERE f.modifiedDate = :modifiedDate"),
    @NamedQuery(name = "Files.findByShared", query = "SELECT f FROM Files f WHERE f.shared = :shared"),
    @NamedQuery(name = "Files.findByDescription", query = "SELECT f FROM Files f WHERE f.description = :description")})

public class Files implements Serializable {
    private static final long serialVersionUID = 1L;
    
    @Id
    @GeneratedValue(strategy=IDENTITY)
    @Column(name = "ID", nullable = false)
    private Integer id;
    
    @Column(name = "USERID", nullable = false)
    private Integer userId;
    
    @Column(name = "FILENAME", nullable = false)
    private String fileName;
    
    @Column(name = "ADDEDDATE")
    @Temporal(TemporalType.TIMESTAMP)
    private Date addedDate;
    
    @Column(name = "MODIFIEDDATE")
    @Temporal(TemporalType.TIMESTAMP)
    private Date modifiedDate;
    
    @Column(name = "SHARED", nullable = false)
    private Boolean shared;
    
    @Column(name = "FILE")
    private String file;
    
    @Column(name = "DESCRIPTION")
    private String description;
    
    public Files() {
    }
    
    public Files(Integer id, Integer userId, String fileName, Boolean shared) {
        this.id = id;
        this.userId = userId;
        this.fileName = fileName;
        this.shared = shared;
    }
    
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    public Date getAddedDate() {
        return addedDate;
    }

    public void setAddedDate(Date addedDate) {
        this.addedDate = addedDate;
    }

    public Date getModifiedDate() {
        return modifiedDate;
    }

    public void setModifiedDate(Date modifiedDate) {
        this.modifiedDate = modifiedDate;
    }

    public Boolean isShared() {
        return shared;
    }

    public void setShared(Boolean shared) {
        this.shared = shared;
    }

    public String getFile() {
        return file;
    }

    public void setFile(String file) {
        this.file = file;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
    
    

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Files)) {
            return false;
        }
        Files other = (Files) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "enterprise.jsf_jpa_war.Files[ id=" + id + " ]";
    }
    
}
