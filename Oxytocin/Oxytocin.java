package Oxytocin;

public class Oxytocin {
    private String physicalAction;
    private String mentalAction;

    public Oxytocin(String physicalAction, String mentalAction) {
        this.physicalAction = physicalAction;
        this.mentalAction = mentalAction;
    }

    public String getPhysicalAction() {
        return physicalAction;
    }

    public String getMentalAction() {
        return mentalAction;
    }

    public static void main(String[] args) {
        System.out.println("Hello, World!");
    }
}