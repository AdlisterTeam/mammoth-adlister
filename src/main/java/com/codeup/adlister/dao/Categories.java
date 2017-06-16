package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;

import java.util.List;

/**
 * Created by frenchfryes on 6/16/17.
 */
public interface Categories {
    List<String> all();
    List<String> getAdCategories(Ad ad);
}
