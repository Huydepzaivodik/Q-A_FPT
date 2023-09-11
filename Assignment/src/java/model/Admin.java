package model;

public class Admin {

    private String admin_id, admin_name, phone, email, password;

    public Admin() {
    }

    public Admin(String admin_id, String admin_name, String phone, String email, String password) {
        this.admin_id = admin_id;
        this.admin_name = admin_name;
        this.phone = phone;
        this.email = email;
        this.password = password;
    }

    public String getAdmin_id() {
        return admin_id;
    }

    public void setAdmin_id(String admin_id) {
        this.admin_id = admin_id;
    }

    public String getAdmin_name() {
        return admin_name;
    }

    public void setAdmin_name(String admin_name) {
        this.admin_name = admin_name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

}
