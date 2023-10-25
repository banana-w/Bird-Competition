/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.birdcompetition.bird;

/**
 *
 * @author Admin
 */
public class BirdContestDTO {
    private String birdId;
    private String contestId;
    private int rank;
    private int beforePoint;
    private int afterPoint;
    private boolean status;
    private boolean checkIn;
    private String checkinCode;

    public BirdContestDTO() {
    }

    public BirdContestDTO(String birdId, String contestId, int rank, 
            int beforePoint, int afterPoint, boolean status, boolean checkIn, String checkinCode) {
        this.birdId = birdId;
        this.contestId = contestId;
        this.rank = rank;
        this.beforePoint = beforePoint;
        this.afterPoint = afterPoint;
        this.status = status;
        this.checkIn = checkIn;
        this.checkinCode = checkinCode;
    }
    

    /**
     * @return the birdId
     */
    public String getBirdId() {
        return birdId;
    }

    /**
     * @param birdId the birdId to set
     */
    public void setBirdId(String birdId) {
        this.birdId = birdId;
    }

    /**
     * @return the contestId
     */
    public String getContestId() {
        return contestId;
    }

    /**
     * @param contestId the contestId to set
     */
    public void setContestId(String contestId) {
        this.contestId = contestId;
    }

    /**
     * @return the rank
     */
    public int getRank() {
        return rank;
    }

    /**
     * @param rank the rank to set
     */
    public void setRank(int rank) {
        this.rank = rank;
    }

    /**
     * @return the beforePoint
     */
    public int getBeforePoint() {
        return beforePoint;
    }

    /**
     * @param beforePoint the beforePoint to set
     */
    public void setBeforePoint(int beforePoint) {
        this.beforePoint = beforePoint;
    }

    /**
     * @return the afterPoint
     */
    public int getAfterPoint() {
        return afterPoint;
    }

    /**
     * @param afterPoint the afterPoint to set
     */
    public void setAfterPoint(int afterPoint) {
        this.afterPoint = afterPoint;
    }

    /**
     * @return the status
     */
    public boolean isStatus() {
        return status;
    }

    /**
     * @param status the status to set
     */
    public void setStatus(boolean status) {
        this.status = status;
    }

    /**
     * @return the checkIn
     */
    public boolean isCheckIn() {
        return checkIn;
    }

    /**
     * @param checkIn the checkIn to set
     */
    public void setCheckIn(boolean checkIn) {
        this.checkIn = checkIn;
    }

    /**
     * @return the checkinCode
     */
    public String getCheckinCode() {
        return checkinCode;
    }

    /**
     * @param checkinCode the checkinCode to set
     */
    public void setCheckinCode(String checkinCode) {
        this.checkinCode = checkinCode;
    }
    
    
}
