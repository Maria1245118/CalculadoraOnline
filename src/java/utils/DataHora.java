/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utils;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;

/**
 *
 * @author Maria
 */
public class DataHora {
    public static LocalDate data() {
        LocalDate ldNow = LocalDate.now();
        return ldNow;
    }

    public static LocalDate dateFormato(String data) {
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");
        LocalDate localDate = LocalDate.parse(data, formatter);
        return localDate;
    }

    public static LocalDateTime dateTimeFormato(String data) {
        DateTimeFormatter formatterDateTime = DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm");
        LocalDateTime localDateTime = LocalDateTime.parse(data, formatterDateTime);
        return localDateTime;
    }

    public static LocalTime hora() {
        LocalTime ltNow = LocalTime.now();
        return ltNow;
    }
    
    public static LocalDateTime dataHora() {
        LocalDateTime ldtNow = LocalDateTime.now();
        return ldtNow;
    }
    
}
