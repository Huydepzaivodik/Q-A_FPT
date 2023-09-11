package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Account;
import model.Address;
import model.Admin;
import model.Comment;
import model.QNA;
import model.Subject;
import model.Teacher;

public class DAO extends DBContext {

    public DAO() {
    }

    public ArrayList<Address> getListAddress() {
        ArrayList<Address> addressList = new ArrayList<>();

        try {
            String sql = "Select * from Address";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();

            while (rs.next()) {
                String address_id = rs.getString(1);
                String department_name = rs.getString(2);
                Address addr = new Address(address_id, department_name);
                addressList.add(addr);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return addressList;
    }

    public ArrayList<Account> getAccountList() {
        ArrayList<Account> accountList = new ArrayList<>();
        try {
            String sql = "Select * from Account";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                String account_id = rs.getString(1);
                String account_name = rs.getString(2);
                String password = rs.getString(3);
                String student_name = rs.getString(4);
                String phone = rs.getString(5);
                String email = rs.getString(6);
                String address_id = rs.getString(7);
                Account account = new Account(account_id, account_name, password, student_name, phone, email, address_id);
                accountList.add(account);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return accountList;
    }

    public Account getAccount(String email, String password) {
        try {
            String sql = "Select * from Account where email= '" + email + "'and password='" + password + "'";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                String account_id = rs.getString(1);
                String account_name = rs.getString(2);
                String student_name = rs.getString(4);
                String phone = rs.getString(5);
                String address_id = rs.getString(7);
                return new Account(account_id, account_name, password, student_name, phone, email, address_id);

            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }

    public String getDepById(String id) {
        try {
            String sql = "select * from Address where address_id=" + id;
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                return rs.getString(2);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }

    public Account getAccountByAcc(String account_name) {
        try {
            String sql = "Select * from Account where account_name = '" + account_name + "'";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                String account_id = rs.getString(1);
                String password = rs.getString(3);
                String student_name = rs.getString(4);
                String phone = rs.getString(5);
                String email = rs.getString(6);
                String address_id = rs.getString(7);
                return new Account(account_id, account_name, password, student_name, phone, email, address_id);

            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;

    }

    public Account getAccountById(String account_id) {
        try {
            String sql = "Select * from Account where  account_id =?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, account_id);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                String account_name = rs.getString(2);
                String password = rs.getString(3);
                String student_name = rs.getString(4);
                String phone = rs.getString(5);
                String email = rs.getString(6);
                String address_id = rs.getString(7);
                return new Account(account_id, account_name, password, student_name, phone, email, address_id);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }

    public ArrayList<Teacher> getListTeacher() {
        ArrayList<Teacher> teacherList = new ArrayList<>();
        try {
            String sql = "Select * from Teacher";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();

            while (rs.next()) {
                String teacher_id = rs.getString(1);
                String teacher_name = rs.getString(2);
                String subject_id = rs.getString(3);
                String lecturer = rs.getString(4);
                Teacher teacher = new Teacher(teacher_id, teacher_name, subject_id, lecturer);
                teacherList.add(teacher);
            }

        } catch (Exception e) {
            System.out.println(e);
        }
        return teacherList;
    }

    public ArrayList<Subject> getListSubject() {
        ArrayList<Subject> subjectList = new ArrayList<>();
        try {
            String sql = "Select * from Subject";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();

            while (rs.next()) {
                String subject_id = rs.getString(1);
                String subject_name = rs.getString(2);

                Subject subject = new Subject(subject_id, subject_name);
                subjectList.add(subject);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return subjectList;
    }

    public Teacher getTeacherById(String id) {
        String sql = "Select * from Teacher where teacher_id=" + id;
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                String teacher_name = rs.getString(2);
                String subject_name = rs.getString(3);
                String lecturer = rs.getString(4);
                return new Teacher(id, teacher_name, subject_name, lecturer);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }

    public Subject getSubjectById(String id) {
        String sql = "Select * from Subject where subject_id=" + id;
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                String subject_name = rs.getString(2);
                return new Subject(id, subject_name);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }

    public ArrayList<Comment> getListComment() {
        ArrayList<Comment> commentList = new ArrayList<>();

        try {
            String sql = "Select * from Comment";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                String cid = rs.getString(1);
                String ctitle = rs.getString(2);
                String account_id = rs.getString(3);
                String teacher_id = rs.getString(4);

                Comment comment = new Comment(cid, ctitle, account_id, teacher_id);
                commentList.add(comment);

            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return commentList;
    }

    public void insertComment(String ctitle, String account_id, String teacher_id) {
        String sql = "insert into Comment(ctitle,account_id,teacher_id) values(?,?,?)";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, ctitle);
            stm.setString(2, account_id);
            stm.setString(3, teacher_id);
            stm.execute();
        } catch (Exception e) {
            System.out.println("----Error----");
        }
    }

    public void updateComment(String ctitle, String account_id, String teacher_id) {
        String sql = "update Comment set ctitle=? where account_id =? and teacher_id=?";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, ctitle);
            stm.setString(2, account_id);
            stm.setString(3, teacher_id);
            stm.execute();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public ArrayList<Comment> getCommentById(String account_id, String teacher_id) {
        ArrayList<Comment> commentList = new ArrayList<>();
        String sql = "select * from Comment where account_id = '" + account_id + "' and teacher_id ='" + teacher_id + "'";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                String cid = rs.getString(1);
                String ctitle = rs.getString(2);
                Comment comment = new Comment(cid, ctitle, account_id, teacher_id);
                commentList.add(comment);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return commentList;
    }

    public Admin getAdmin(String email, String password) {
        try {
            String sql = "Select * from Admin where email='" + email + "' and password='" + password + "'";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                String admin_id = rs.getString(1);
                String admin_name = rs.getString(2);
                String phone = rs.getString(3);
                return new Admin(admin_id, admin_name, phone, email, password);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }

    public void insertQuestion(String question, String account_id) {
        try {
            String sql = "insert into QNA(question,account_id) values (?,?)";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, question);
            stm.setString(2, account_id);
            stm.execute();
        } catch (Exception e) {
            System.out.println("---Error---");
        }
    }

    public ArrayList<QNA> getListQNA() {
        ArrayList<QNA> qnaList = new ArrayList<>();
        try {
            String sql = "select * from QNA";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                String qna_id = rs.getString(1);
                String question = rs.getString(2);
                String answer = rs.getString(3);
                String admin_id = rs.getString(4);
                String account_id = rs.getString(5);
                QNA qna = new QNA(qna_id, admin_id, account_id, question, answer);
                qnaList.add(qna);
            }

        } catch (Exception e) {
            System.out.println(e);
        }
        return qnaList;
    }

    public void updateAnswer(String question, String answer) {
        try {
            String sql = "update QNA set answer = ? where question = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, answer);
            stm.setString(2, question);
            stm.execute();
        } catch (Exception e) {
            System.out.println("---Error---");
        }
    }

    public void deleteAnswer(String question) {
        try {
            String sql = "delete QNA where question=?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, question);
            stm.execute();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public Admin getAdminByName(String admin_name) {
        try {
            String sql = "Select * from Admin where admin_name = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, admin_name);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                String admin_id = rs.getString(1);
                String phone = rs.getString(3);
                String email = rs.getString(4);
                String password = rs.getString(5);
                return new Admin(admin_id, admin_name, phone, email, password);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }

    public Teacher getTeacherByLog(String email, String password) {
        try {
            String sql = "Select * from Teacher where email=? and password=?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, email);
            stm.setString(2, password);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                String teacher_id = rs.getString(1);
                String teacher_name = rs.getString(2);
                String subject_id = rs.getString(3);
                String lecturer = rs.getString(4);
                return new Teacher(teacher_id, teacher_name, subject_id, lecturer, email, password);
            }
        } catch (SQLException e) {
        }
        return null;
    }

}
