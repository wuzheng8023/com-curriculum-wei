package com.service;

import com.entity.News;
import com.entity.News;

import java.util.List;

public interface NewsService {
    /**
     * 查询全部用户
     * @return
     */
    public List<News> listUsers();
//    /**
//     * 添加用户
//     * @param name
//     */
//    public void addUser(String name);
//
//    /**
//     *
//     * @param news
//     */
//    public void updateUser(News news);
//
//    /**
//     * 基于ID获取指定用户
//     * @param id
//     * @return
//     */
//    public News getNews(int id);
}
