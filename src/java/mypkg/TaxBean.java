package mypkg;

public class TaxBean {
    private int income;
    private int age;
    private int tax;

    public void setIncome(int income) {
        this.income = income;
        calculate();
    }

    public void setAge(int age) {
        this.age = age;
    }

    public int getIncome() {
        return income;
    }

    public int getAge() {
        return age;
    }

    public int getTax() {
        return tax;
    }
    
    private void calculate(){
        if(income>=500000){
            tax=income*30/100;
        }else{
            tax=income*10/100;
        }
    }
    
}
