/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package UI;

import java.beans.PropertyChangeListener;
import java.beans.PropertyChangeSupport;
import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Transient;

/**
 *
 * @author Shardul
 */
@Entity
@Table(name = "animal_injury", catalog = "wildlife", schema = "")
@NamedQueries({
    @NamedQuery(name = "AnimalInjury.findAll", query = "SELECT a FROM AnimalInjury a")
    , @NamedQuery(name = "AnimalInjury.findBySrno", query = "SELECT a FROM AnimalInjury a WHERE a.srno = :srno")
    , @NamedQuery(name = "AnimalInjury.findByAid", query = "SELECT a FROM AnimalInjury a WHERE a.aid = :aid")})
public class AnimalInjury implements Serializable {

    @Transient
    private PropertyChangeSupport changeSupport = new PropertyChangeSupport(this);

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "srno")
    private Integer srno;
    @Column(name = "aid")
    private Integer aid;

    public AnimalInjury() {
    }

    public AnimalInjury(Integer srno) {
        this.srno = srno;
    }

    public Integer getSrno() {
        return srno;
    }

    public void setSrno(Integer srno) {
        Integer oldSrno = this.srno;
        this.srno = srno;
        changeSupport.firePropertyChange("srno", oldSrno, srno);
    }

    public Integer getAid() {
        return aid;
    }

    public void setAid(Integer aid) {
        Integer oldAid = this.aid;
        this.aid = aid;
        changeSupport.firePropertyChange("aid", oldAid, aid);
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (srno != null ? srno.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof AnimalInjury)) {
            return false;
        }
        AnimalInjury other = (AnimalInjury) object;
        if ((this.srno == null && other.srno != null) || (this.srno != null && !this.srno.equals(other.srno))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "UI.AnimalInjury[ srno=" + srno + " ]";
    }

    public void addPropertyChangeListener(PropertyChangeListener listener) {
        changeSupport.addPropertyChangeListener(listener);
    }

    public void removePropertyChangeListener(PropertyChangeListener listener) {
        changeSupport.removePropertyChangeListener(listener);
    }
    
}
