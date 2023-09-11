
package model;


public class Comment {
    private String cid,ctittle,account_id,teacher_id;

    public Comment() {
    }

    public Comment(String cid, String ctittle, String account_id, String teacher_id) {
        this.cid = cid;
        this.ctittle = ctittle;
        this.account_id = account_id;
        this.teacher_id = teacher_id;
    }

    public String getCid() {
        return cid;
    }

    public void setCid(String cid) {
        this.cid = cid;
    }

    public String getCtittle() {
        return ctittle;
    }

    public void setCtittle(String ctittle) {
        this.ctittle = ctittle;
    }

    public String getAccount_id() {
        return account_id;
    }

    public void setAccount_id(String account_id) {
        this.account_id = account_id;
    }

    public String getTeacher_id() {
        return teacher_id;
    }

    public void setTeacher_id(String teacher_id) {
        this.teacher_id = teacher_id;
    }
    
}
