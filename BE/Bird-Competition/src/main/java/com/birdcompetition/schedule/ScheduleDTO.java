/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.birdcompetition.schedule;

import java.io.Serializable;
import java.sql.Date;
import java.text.SimpleDateFormat;
/**
 *
 * @author Admin
 */
public class ScheduleDTO implements Serializable {

    private int id;
    private String name;
    private Date date;
    private String locationId;
    private boolean status;
    private double factor;
    private int minPoint, maxPoint;
    private int fee;
    private String userId;
    private String location;
    private int statusOfContest;
    private int maxPar;

    public ScheduleDTO() {
    }

    public ScheduleDTO(int id, String name, Date date, String locationId, 
            boolean status, double factor, int minPoint, int maxPoint, 
            int fee, String userId, String location, int statusOfContest, int maxPar) {
        this.id = id;
        this.name = name;
        this.date = date;
        this.locationId = locationId;
        this.status = status;
        this.factor = factor;
        this.minPoint = minPoint;
        this.maxPoint = maxPoint;
        this.fee = fee;
        this.userId = userId;
        this.location = location;
        this.statusOfContest = statusOfContest;
        this.maxPar = maxPar;
    }

    public int getMaxPar() {
        return maxPar;
    }

    public void setMaxPar(int maxPar) {
        this.maxPar = maxPar;
    }

    public int getStatusOfContest() {
        return statusOfContest;
    }

    public void setStatusOfContest(int statusOfContest) {
        this.statusOfContest = statusOfContest;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getDate() {
        return date;
    }
    public String getDateFormat() {
        SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");
        return sdf.format(date);
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getLocationId() {
        return locationId;
    }

    public void setLocationId(String locationId) {
        this.locationId = locationId;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public double getFactor() {
        return factor;
    }

    public void setFactor(double factor) {
        this.factor = factor;
    }

    public int getMinPoint() {
        return minPoint;
    }

    public void setMinPoint(int minPoint) {
        this.minPoint = minPoint;
    }

    public int getMaxPoint() {
        return maxPoint;
    }

    public void setMaxPoint(int maxPoint) {
        this.maxPoint = maxPoint;
    }

    public int getFee() {
        return fee;
    }

    public void setFee(int fee) {
        this.fee = fee;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    @Override
    public String toString() {
        return "ScheduleDTO{" + "id=" + id + ", name=" + name + ", date=" + date + ", locationId=" + locationId + ", status=" + status + ", factor=" + factor + ", minPoint=" + minPoint + ", maxPoint=" + maxPoint + ", fee=" + fee + ", userId=" + userId + ", location=" + location + ", statusOfContest=" + statusOfContest + '}';
    }

    
}
