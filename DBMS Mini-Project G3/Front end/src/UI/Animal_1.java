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
@Table(name = "animal", catalog = "wildlife", schema = "")
@NamedQueries({
    @NamedQuery(name = "Animal_1.findAll", query = "SELECT a FROM Animal_1 a")
    , @NamedQuery(name = "Animal_1.findByAnimalId", query = "SELECT a FROM Animal_1 a WHERE a.animalId = :animalId")
    , @NamedQuery(name = "Animal_1.findBySpecies", query = "SELECT a FROM Animal_1 a WHERE a.species = :species")
    , @NamedQuery(name = "Animal_1.findByGenus", query = "SELECT a FROM Animal_1 a WHERE a.genus = :genus")
    , @NamedQuery(name = "Animal_1.findByEndangeredS", query = "SELECT a FROM Animal_1 a WHERE a.endangeredS = :endangeredS")
    , @NamedQuery(name = "Animal_1.findBySex", query = "SELECT a FROM Animal_1 a WHERE a.sex = :sex")
    , @NamedQuery(name = "Animal_1.findByPregS", query = "SELECT a FROM Animal_1 a WHERE a.pregS = :pregS")
    , @NamedQuery(name = "Animal_1.findByWeight", query = "SELECT a FROM Animal_1 a WHERE a.weight = :weight")
    , @NamedQuery(name = "Animal_1.findByDoe", query = "SELECT a FROM Animal_1 a WHERE a.doe = :doe")
    , @NamedQuery(name = "Animal_1.findByFeedCount", query = "SELECT a FROM Animal_1 a WHERE a.feedCount = :feedCount")
    , @NamedQuery(name = "Animal_1.findByAlive", query = "SELECT a FROM Animal_1 a WHERE a.alive = :alive")
    , @NamedQuery(name = "Animal_1.findByInjuryS", query = "SELECT a FROM Animal_1 a WHERE a.injuryS = :injuryS")})
public class Animal_1 implements Serializable {

    @Transient
    private PropertyChangeSupport changeSupport = new PropertyChangeSupport(this);

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "animal_id")
    private Integer animalId;
    @Basic(optional = false)
    @Column(name = "species")
    private String species;
    @Basic(optional = false)
    @Column(name = "genus")
    private String genus;
    @Basic(optional = false)
    @Column(name = "endangered_S")
    private boolean endangeredS;
    @Basic(optional = false)
    @Column(name = "sex")
    private String sex;
    @Column(name = "preg_S")
    private Boolean pregS;
    @Basic(optional = false)
    @Column(name = "weight")
    private int weight;
    @Basic(optional = false)
    @Column(name = "doe")
    @Temporal(TemporalType.DATE)
    private Date doe;
    @Basic(optional = false)
    @Column(name = "feed_count")
    private int feedCount;
    @Column(name = "alive")
    private Boolean alive;
    @Column(name = "injury_S")
    private Boolean injuryS;

    public Animal_1() {
    }

    public Animal_1(Integer animalId) {
        this.animalId = animalId;
    }

    public Animal_1(Integer animalId, String species, String genus, boolean endangeredS, String sex, int weight, Date doe, int feedCount) {
        this.animalId = animalId;
        this.species = species;
        this.genus = genus;
        this.endangeredS = endangeredS;
        this.sex = sex;
        this.weight = weight;
        this.doe = doe;
        this.feedCount = feedCount;
    }

    public Integer getAnimalId() {
        return animalId;
    }

    public void setAnimalId(Integer animalId) {
        Integer oldAnimalId = this.animalId;
        this.animalId = animalId;
        changeSupport.firePropertyChange("animalId", oldAnimalId, animalId);
    }

    public String getSpecies() {
        return species;
    }

    public void setSpecies(String species) {
        String oldSpecies = this.species;
        this.species = species;
        changeSupport.firePropertyChange("species", oldSpecies, species);
    }

    public String getGenus() {
        return genus;
    }

    public void setGenus(String genus) {
        String oldGenus = this.genus;
        this.genus = genus;
        changeSupport.firePropertyChange("genus", oldGenus, genus);
    }

    public boolean getEndangeredS() {
        return endangeredS;
    }

    public void setEndangeredS(boolean endangeredS) {
        boolean oldEndangeredS = this.endangeredS;
        this.endangeredS = endangeredS;
        changeSupport.firePropertyChange("endangeredS", oldEndangeredS, endangeredS);
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        String oldSex = this.sex;
        this.sex = sex;
        changeSupport.firePropertyChange("sex", oldSex, sex);
    }

    public Boolean getPregS() {
        return pregS;
    }

    public void setPregS(Boolean pregS) {
        Boolean oldPregS = this.pregS;
        this.pregS = pregS;
        changeSupport.firePropertyChange("pregS", oldPregS, pregS);
    }

    public int getWeight() {
        return weight;
    }

    public void setWeight(int weight) {
        int oldWeight = this.weight;
        this.weight = weight;
        changeSupport.firePropertyChange("weight", oldWeight, weight);
    }

    public Date getDoe() {
        return doe;
    }

    public void setDoe(Date doe) {
        Date oldDoe = this.doe;
        this.doe = doe;
        changeSupport.firePropertyChange("doe", oldDoe, doe);
    }

    public int getFeedCount() {
        return feedCount;
    }

    public void setFeedCount(int feedCount) {
        int oldFeedCount = this.feedCount;
        this.feedCount = feedCount;
        changeSupport.firePropertyChange("feedCount", oldFeedCount, feedCount);
    }

    public Boolean getAlive() {
        return alive;
    }

    public void setAlive(Boolean alive) {
        Boolean oldAlive = this.alive;
        this.alive = alive;
        changeSupport.firePropertyChange("alive", oldAlive, alive);
    }

    public Boolean getInjuryS() {
        return injuryS;
    }

    public void setInjuryS(Boolean injuryS) {
        Boolean oldInjuryS = this.injuryS;
        this.injuryS = injuryS;
        changeSupport.firePropertyChange("injuryS", oldInjuryS, injuryS);
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (animalId != null ? animalId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Animal_1)) {
            return false;
        }
        Animal_1 other = (Animal_1) object;
        if ((this.animalId == null && other.animalId != null) || (this.animalId != null && !this.animalId.equals(other.animalId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "UI.Animal_1[ animalId=" + animalId + " ]";
    }

    public void addPropertyChangeListener(PropertyChangeListener listener) {
        changeSupport.addPropertyChangeListener(listener);
    }

    public void removePropertyChangeListener(PropertyChangeListener listener) {
        changeSupport.removePropertyChangeListener(listener);
    }
    
}
