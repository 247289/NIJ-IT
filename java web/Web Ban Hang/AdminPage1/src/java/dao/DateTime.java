/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author Administrator
 */
public class DateTime {

    public static String getDateTime() {
        Date date = new Date();
        SimpleDateFormat ft = new SimpleDateFormat("HH:mm:ss EEEEEEEEE dd/MM/yyyy");
        String ngaygio = ft.format(date);
        return ngaygio;
    }
}
