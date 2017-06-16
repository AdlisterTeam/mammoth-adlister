package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by frenchfryes on 6/14/17.
 */
@WebServlet(name = "AdDetailServlet", urlPatterns = "/ads/details")
public class AdDetailServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Ad ad = DaoFactory.getAdsDao().getAdById(Integer.parseInt(request.getParameter("id")));

        request.getSession().setAttribute("ad", ad);
        request.getSession().setAttribute("categories", DaoFactory.getCategoriesDao().getAdCategories(ad));
        request.getRequestDispatcher("/WEB-INF/ads/details.jsp").forward(request, response);

    }
}