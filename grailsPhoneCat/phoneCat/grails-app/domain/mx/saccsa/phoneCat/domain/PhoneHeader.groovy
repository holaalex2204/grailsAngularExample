package mx.saccsa.phoneCat.domain

class PhoneHeader {	
	int age
	String idDesc
	String imageUrl
	String name
	String snippet
	Long id
    static constraints = {      		   
    	id column: 'phoneHeader_id'
    	idDesc column: 'phoneHeader_idDesc'
    	age column: 'phoneHeader_age'
    	imageUrl column: 'phoneHeader_imageUrl'
    	name column: 'phoneHeader_name'
    	snippet column: 'phoneHeader_snippet'
    }
}