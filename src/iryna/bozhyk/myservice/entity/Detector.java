package iryna.bozhyk.myservice.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="detector")
public class Detector {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="name")
	private String name;

	@Column (name = "type")
	private String type;
	
	
	public Detector() {
		
	}


	public Detector(String name, String type) {
		this.name = name;
		this.type = type;
	}


	

	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getType() {
		return type;
	}


	public void setType(String type) {
		this.type = type;
	}


	@Override
	public String toString() {
		return "Detector [name=" + name + ", type=" + type + "]";
	}
	
	
	
}
