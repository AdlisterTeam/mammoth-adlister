package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import com.mysql.cj.mysqlx.protobuf.MysqlxDatatypes;
import com.mysql.cj.mysqlx.protobuf.MysqlxExpr;

import java.util.List;

public interface Ads {
    // get a list of all the ads
    List<Ad> all();
    // insert a new ad and return the new ad's id
    Long insert(Ad ad);

    List<Ad> usersAds(long userId);

    Object search (String searchBar);
}
