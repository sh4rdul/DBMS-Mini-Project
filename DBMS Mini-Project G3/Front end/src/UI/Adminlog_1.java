/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package UI;

import java.beans.PropertyChangeListener;
import java.beans.PropertyChangeSupport;
import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;

/**
 *
 * @author Shardul
 */
@Entity
@Table(name = "adminlog", catalog = "wildlife", schema = "")
@NamedQueries({
    @NamedQuery(name = "Adminlog_1.findAll", query = "SELECT a FROM Adminlog_1 a")
    , @NamedQuery(name = "Adminlog_1.findById", query = "SELECT a FROM Adminlog_1 a WHERE a.id = :id")
    , @NamedQuery(name = "Adminlog_1.findByEmployeeId", query = "SELECT a FROM Adminlog_1 a WHERE a.employeeId = :employeeId")
    , @NamedQuery(name = "Adminlog_1.findByChangeDate", query = "SELECT a FROM Adminlog_1 a WHERE a.changeDate = :changeDate")
    , @NamedQuery(name = "Adminlog_1.findByAction", query = "SELECT a FROM Adminlog_1 a WHERE a.action = :action")
    , @NamedQuery(name = "Adminlog_1.findByAnimalId", query = "SELECT a FROM Adminlog_1 a WHERE a.animalId = :animalId")})
public class Adminlog_1 implements Serializable {

    @Transient
    private PropertyChangeSupport changeSupport = new PropertyChangeSupport(this);

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Column(name = "employee_id")
    private Integer employeeId;
    @Basic(optional = false)
    @Column(name = "change_date")
    @Temporal(TemporalType.TIMESTAMP)
    private Date changeDate;
    @Column(name = "action")
    private String action;
    @Column(name = "animal_id")
    private Integer animalId;

    public Adminlog_1() {
    }

    public Adminlog_1(Integer id) {
        this.id = id;
    }

    public Adminlog_1(Integer id, Date changeDate) {
        this.id = id;
        this.changeDate = changeDate;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        Integer oldId = this.id;
        this.id = id;
        changeSupport.firePropertyChange("id", oldId, id);
    }

    public Integer getEmployeeId() {
        return employeeId;
    }

    public void setEmployeeId(Integer employeeId) {
        Integer oldEmployeeId = this.employeeId;
        this.employeeId = employeeId;
        changeSupport.firePropertyChange("employeeId", oldEmployeeId, employeeId);
    }

    public Date getChangeDate() {
        return changeDate;
    }

    public void setChangeDate(Date changeDate) {
        Date oldChangeDate = this.changeDate;
        this.changeDate = changeDate;
        changeSupport.firePropertyChange("changeDate", oldChangeDate, changeDate);
    }

    public String getAction() {
        return action;
    }

    public void setAction(String action) {
        String oldAction = this.action;
        this.action = action;
        changeSupport.firePropertyChange("action", oldAction, action);
    }

    public Integer getAnimalId() {
        return animalId;
    }

    public void setAnimalId(Integer animalId) {
        Integer oldAnimalId = this.animalId;
        this.animalId = animalId;
        changeSupport.firePropertyChange("animalId", oldAnimalId, animalId);
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
        if (!(object instanceof Adminlog_1)) {
            return false;
        }
        Adminlog_1 other = (Adminlog_1) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "UI.Adminlog_1[ id=" + id + " ]";
    }

    public void addPropertyChangeListener(PropertyChangeListener listener) {
        changeSupport.addPropertyChangeListener(listener);
    }

    public void removePropertyChangeListener(PropertyChangeListener listener) {
        changeSupport.removePropertyChangeListener(listener);
    }
    
}
