package org.personal.studentManagementSystem.model;

public class Student {
    private int student_id;
    private String student_name;
    private String student_address;
    private String student_contact;
    private String student_email;
    private int bill_id;
    private boolean fee_status;

    public Student(){

    }

    public Student(int student_id, String student_name, String student_address, String student_contact, String student_email, int bill_id, boolean fee_status){
        this.student_id = student_id;
        this.student_name = student_name;
        this.student_address = student_address;
        this.student_contact = student_contact;
        this.student_email = student_email;
        this.bill_id = bill_id;
        this.fee_status = fee_status;
    }

    public int getStudent_id() { return student_id;}
    public void setStudent_id(int student_id) {this.student_id = student_id;}

    public String getStudent_name() {return student_name;}
    public void setStudent_name(String student_name) {this.student_name = student_name;}

    public String getStudent_address() {return student_address;}
    public void setStudent_address(String student_address) {this.student_address = student_address;}

    public String getStudent_contact() {return student_contact;}
    public void setStudent_contact(String student_contact) {this.student_contact = student_contact;}

    public String getStudent_email() {return student_email;}
    public void setStudent_email(String student_email) {this.student_email = student_email;}

    public int getBill_id() {return bill_id;}
    public void setBill_id(int bill_id) { this.bill_id = bill_id;}

    public boolean isFee_status() {return fee_status;}
    public void setFee_status(boolean fee_status) {this.fee_status = fee_status;}

    @Override
    public String toString(){
        return "Student{"
                + "student_id" + student_id + '\''
                + "student_name" + student_name + '\''
                + "student_address" + student_address + '\''
                + "student_contact" + student_contact + '\''
                + "student_email" + student_contact + '\''
                + "bill_id" + bill_id + '\''
                + "fee_status" + fee_status + '\''
                +'}';
    }
}
