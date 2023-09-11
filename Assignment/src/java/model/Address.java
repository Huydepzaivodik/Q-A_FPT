
package model;


public class Address {
    String address_id,department_name;

    public Address() {
    }

    public Address(String address_id, String department_name) {
        this.address_id = address_id;
        this.department_name = department_name;
    }

    public String getAddress_id() {
        return address_id;
    }

    public void setAddress_id(String address_id) {
        this.address_id = address_id;
    }

    public String getDepartment_name() {
        return department_name;
    }

    public void setDepartment_name(String department_name) {
        this.department_name = department_name;
    }
    
    
}
