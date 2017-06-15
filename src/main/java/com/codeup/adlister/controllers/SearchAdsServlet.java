package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "SearchAdsServlet", urlPatterns = "/search")
public class SearchAdsServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String search = request.getParameter("q");
        request.setAttribute("ads", DaoFactory.getAdsDao().getAdsByTerm(search));
        request.setAttribute("AdsDao", DaoFactory.getAdsDao());
        request.setAttribute("search", search);
        request.getRequestDispatcher("/WEB-INF/ads/index.jsp").forward(request, response);
    }
}