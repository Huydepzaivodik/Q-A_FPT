package model;

public class Teacher {

    private String teacher_id, teacher_name, subject_id, lecturer;
    private String email, password;

    public Teacher() {
    }

 

    public Teacher(String teacher_id, String teacher_name, String subject_id, String lecturer) {
        this.teacher_id = teacher_id;
        this.teacher_name = teacher_name;
        this.subject_id = subject_id;
        this.lecturer = lecturer;
    }

    public Teacher(String teacher_id, String teacher_name, String subject_id, String lecturer, String email, String password) {
        this.teacher_id = teacher_id;
        this.teacher_name = teacher_name;
        this.subject_id = subject_id;
        this.lecturer = lecturer;
        this.email = email;
        this.password = password;
    }

    
    
    public String getTeacher_id() {
        return teacher_id;
    }

    public void setTeacher_id(String teacher_id) {
        this.teacher_id = teacher_id;
    }

    public String getTeacher_name() {
        return teacher_name;
    }

    public void setTeacher_name(String teacher_name) {
        this.teacher_name = teacher_name;
    }

    public String getSubject_id() {
        return subject_id;
    }

    public void setSubject_id(String subject_id) {
        this.subject_id = subject_id;
    }

    public String getLecturer() {
        return lecturer;
    }

    public void setLecturer(String lecturer) {
        this.lecturer = lecturer;
    }

}
