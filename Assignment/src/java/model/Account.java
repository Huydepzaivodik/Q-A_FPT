
package model;




public class Account {
    private String account_id, account_name, password,student_name,phone,email,address_id;

    public Account() {
    }

    public Account(String account_id, String account_name, String password, String student_name, String phone, String email, String address_id) {
        this.account_id = account_id;
        this.account_name = account_name;
        this.password = password;
        this.student_name = student_name;
        this.phone = phone;
        this.email = email;
        this.address_id = address_id;
    }

    public String getAccount_id() {
        return account_id;
    }

    public void setAccount_id(String account_id) {
        this.account_id = account_id;
    }

    public String getAccount_name() {
        return account_name;
    }

    public void setAccount_name(String account_name) {
        this.account_name = account_name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getStudent_name() {
        return student_name;
    }

    public void setStudent_name(String student_name) {
        this.student_name = student_name;
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

    public String getAddress_id() {
        return address_id;
    }

    public void setAddress_id(String address_id) {
        this.address_id = address_id;
    }
    
    
   
    
}
