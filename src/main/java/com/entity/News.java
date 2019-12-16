package com.entity;

import java.util.Date;

public class News {


    private int id;
    private String name;
    private  String content;
    private Date insertTime;

    public News() {
    }

    public News(int id, String name, String content, Date insertTime) {
        this.id = id;
        this.name = name;
        this.content = content;
        this.insertTime = insertTime;
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

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getInsertTime() {
        return insertTime;
    }

    public void setInsertTime(Date insertTime) {
        this.insertTime = insertTime;
    }
}
