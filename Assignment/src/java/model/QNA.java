
package model;


public class QNA {
    private String qna_id,admin_id,account_id,question,answer;

    public QNA() {
    }

    public QNA(String qna_id, String admin_id, String account_id, String question, String answer) {
        this.qna_id = qna_id;
        this.admin_id = admin_id;
        this.account_id = account_id;
        this.question = question;
        this.answer = answer;
    }

    public String getQna_id() {
        return qna_id;
    }

    public void setQna_id(String qna_id) {
        this.qna_id = qna_id;
    }

    public String getAdmin_id() {
        return admin_id;
    }

    public void setAdmin_id(String admin_id) {
        this.admin_id = admin_id;
    }

    public String getAccount_id() {
        return account_id;
    }

    public void setAccount_id(String account_id) {
        this.account_id = account_id;
    }

    public String getQuestion() {
        return question;
    }

    public void setQuestion(String question) {
        this.question = question;
    }

    public String getAnswer() {
        return answer;
    }

    public void setAnswer(String answer) {
        this.answer = answer;
    }
    
}
