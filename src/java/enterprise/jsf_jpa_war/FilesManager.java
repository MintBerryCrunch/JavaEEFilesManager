/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package enterprise.jsf_jpa_war;

import java.util.List;
import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;

/**
 *
 * @author Элвин
 */
@ManagedBean(name = "FilesManager")
@RequestScoped
public class FilesManager {
    @EJB
    private FilesFacade filesFacade;

    /**
     * Creates a new instance of FilesManager
     */
    public FilesManager() {
    }
    
    public List<Files> filesList(){
       List <Files> files;
       files = filesFacade.findAll();
       return files;
    }
}
