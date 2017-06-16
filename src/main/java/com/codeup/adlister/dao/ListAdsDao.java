package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import java.util.ArrayList;
import java.util.List;

public class ListAdsDao implements Ads {
    private List<Ad> ads;

    public List<Ad> all() {
        if (ads == null) {
            ads = generateAds();
        }
        return ads;
    }

    public Long insert(Ad ad) {
        // make sure we have ads
        if (ads == null) {
            ads = generateAds();
        }
        // we'll assign an "id" here based on the size of the ads list
        // really the dao would handle this
        ad.setId((long) ads.size());
        ads.add(ad);
        return ad.getId();
    }

    @Override
    public List<Ad> allByUser(User user) {
        return null;
    }

    @Override
    public String getEmail(Ad ad) {
        return null;
    }


    @Override
    public Ad getAdById(int idToFind) {
        return null;
    }

    @Override
    public List<Ad> getAdsByTerm(String search) {
        return null;
    }

    @Override
    public void updateAd(Ad ad, String title, String description) {

    }

    @Override
    public void delete(long id) {

    }

    @Override
    public List<Ad> getAdsByCategory(String category) {
        return null;
    }

    private List<Ad> generateAds() {
        List<Ad> ads = new ArrayList<>();

        return ads;
    }
}
