package com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class Connecter{
    public static Connection conn=null;
    public static Statement statement=null;//声明，用于执行不带参数的sql语句
    private Connecter() throws Exception {
        if (conn == null)  {//
            try {
                Class.forName("com.mysql.jdbc.Driver"); //加载驱动
            } catch (Exception e) {
                System.out.print("加载驱动失败-----------");
            }
        }
        if (statement == null) {
            try {
                //下面是连接数据库，数据库名名称，用户名"root",密码""
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/diy", "root", "");

            } catch (Exception e) {
                System.out.print("连接数据库失败");
            }
            statement = conn.createStatement();
        }
    }

}