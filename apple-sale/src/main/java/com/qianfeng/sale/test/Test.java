package com.qianfeng.sale.test;

public class Test {


    public static void main(String[] args){

        int i = 6;
        int j = 7;

        test1(i,j); //传的 6 ,7
        System.out.println(i + "-----------------------" + j);

        TestInteger ti = new TestInteger();
        ti.setI(5);
        ti.setJ(6);

        test2(ti); //ti: 传的是一个地址
        //理论上来说  ti : 5,6
        System.out.println(ti);

    }

    public static void test1(int i ,int j){
        i = i+5;
        j = j+6;
    }

    public static void test2(TestInteger ti){
        ti.setI(10);
        ti.setJ(20);
    }

}
