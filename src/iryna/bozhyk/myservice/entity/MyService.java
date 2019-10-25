package iryna.bozhyk.myservice.entity;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.Locale;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Table;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
@Table (name ="service")
public class MyService {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column (name="id")
	private int id; 
	
	@Column(name="date")
	private LocalDate date;
	
	@ManyToOne(fetch=FetchType.LAZY, cascade={CascadeType.DETACH,
			             CascadeType.MERGE,
			             CascadeType.PERSIST,
			             CascadeType.REFRESH})
	@JoinColumn(name="detector_name")
	private Detector detectorName;
	
	@Column (name="global_reason")
	private String globalReason;
	
	@Column (name = "simple_reason")
	private String simpleReason;

	public MyService() {
		
	}

	public MyService(LocalDate date, Detector detectorName, String globalReason, String simpleReason) {
		this.date = date;
		this.detectorName = detectorName;
		this.globalReason = globalReason;
		this.simpleReason = simpleReason;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public LocalDate getDate() {
		return date;
	}
	public String getStringDate() {
		DateTimeFormatter df=DateTimeFormatter.ofPattern("MMM yyyy", new Locale ("en"));
		return df.format(date);
	}

	public void setDate(LocalDate date) {
		this.date = date;
	}

	public Detector getDetectorName() {
		return detectorName;
	}

	public void setDetectorName(Detector detectorName) {
		this.detectorName = detectorName;
	}

	public String getGlobalReason() {
		return globalReason;
	}

	public void setGlobalReason(String globalReason) {
		this.globalReason = globalReason;
	}

	public String getSimpleReason() {
		return simpleReason;
	}

	public void setSimpleReason(String simpleReason) {
		this.simpleReason = simpleReason;
	}

	@Override
	public String toString() {
		return "MyService [id=" + id + ", date=" + date + ", detectorName=" + detectorName + ", globalReason="
				+ globalReason + ", simpleReason=" + simpleReason + "]";
	}
	
	
	
}
