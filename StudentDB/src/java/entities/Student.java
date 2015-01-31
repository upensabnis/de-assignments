/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

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
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author user
 */
@Entity
@Table(name = "student")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Student.findAll", query = "SELECT s FROM Student s"),
    @NamedQuery(name = "Student.findByStdid", query = "SELECT s FROM Student s WHERE s.stdid = :stdid"),
    @NamedQuery(name = "Student.findByStdname", query = "SELECT s FROM Student s WHERE s.stdname = :stdname"),
    @NamedQuery(name = "Student.findByStdbirth", query = "SELECT s FROM Student s WHERE s.stdbirth = :stdbirth"),
    @NamedQuery(name = "Student.findByStdemail", query = "SELECT s FROM Student s WHERE s.stdemail = :stdemail"),
    @NamedQuery(name = "Student.findByStdcontact", query = "SELECT s FROM Student s WHERE s.stdcontact = :stdcontact"),
    @NamedQuery(name = "Student.findByStdtwitter", query = "SELECT s FROM Student s WHERE s.stdtwitter = :stdtwitter")})
public class Student implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "stdid")
    private Integer stdid;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "stdname")
    private String stdname;
    @Basic(optional = false)
    @NotNull
    @Column(name = "stdbirth")
    @Temporal(TemporalType.DATE)
    private Date stdbirth;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "stdemail")
    private String stdemail;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 15)
    @Column(name = "stdcontact")
    private String stdcontact;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "stdtwitter")
    private String stdtwitter;

    public Student() {
    }

    public Student(Integer stdid) {
        this.stdid = stdid;
    }

    public Student(Integer stdid, String stdname, Date stdbirth, String stdemail, String stdcontact, String stdtwitter) {
        this.stdid = stdid;
        this.stdname = stdname;
        this.stdbirth = stdbirth;
        this.stdemail = stdemail;
        this.stdcontact = stdcontact;
        this.stdtwitter = stdtwitter;
    }

    public Integer getStdid() {
        return stdid;
    }

    public void setStdid(Integer stdid) {
        this.stdid = stdid;
    }

    public String getStdname() {
        return stdname;
    }

    public void setStdname(String stdname) {
        this.stdname = stdname;
    }

    public Date getStdbirth() {
        return stdbirth;
    }

    public void setStdbirth(Date stdbirth) {
        this.stdbirth = stdbirth;
    }

    public String getStdemail() {
        return stdemail;
    }

    public void setStdemail(String stdemail) {
        this.stdemail = stdemail;
    }

    public String getStdcontact() {
        return stdcontact;
    }

    public void setStdcontact(String stdcontact) {
        this.stdcontact = stdcontact;
    }

    public String getStdtwitter() {
        return stdtwitter;
    }

    public void setStdtwitter(String stdtwitter) {
        this.stdtwitter = stdtwitter;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (stdid != null ? stdid.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Student)) {
            return false;
        }
        Student other = (Student) object;
        if ((this.stdid == null && other.stdid != null) || (this.stdid != null && !this.stdid.equals(other.stdid))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entities.Student[ stdid=" + stdid + " ]";
    }
    
}
