package org.personal.studentManagementSystem.model;

public class Programme {
    int programme_id;
    String programme_name;

    public Programme() {}

    public Programme(int programme_id, String programme_name) {
        this.programme_id = programme_id;
        this.programme_name = programme_name;
    }

    public int getProgramme_id() {
        return programme_id;
    }

    public void setProgramme_id(int programme_id) {
        this.programme_id = programme_id;
    }

    public String getProgramme_name() {
        return programme_name;
    }

    public void setProgramme_name(String programme_name) {
        this.programme_name = programme_name;
    }

    @Override
    public String toString(){
        return "Programme{"
                + "programme_id" + programme_id + '\''
                + "programme_name" + programme_name + '\''
                +'}';
    }
}
