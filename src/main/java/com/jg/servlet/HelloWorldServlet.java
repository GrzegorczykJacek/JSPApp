package com.jg.servlet;

import javax.servlet.ServletConfig;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(
        name = "HelloWorldServlet"
        , urlPatterns = {"/"}
        , initParams = {
                @WebInitParam(name = "userID", value = "1234567")
                , @WebInitParam(name = "localization", value = "Poland")
        })
public class HelloWorldServlet extends HttpServlet {

    private String varUserID, varLocalization;

    @Override
    public void init(ServletConfig config){
        varUserID = config.getInitParameter("userID");
        varLocalization = config.getInitParameter("localization");
    }

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        PrintWriter writer = response.getWriter();
        writer.println("User ID: " + varUserID + "<br/>");
        writer.println(("Localization: " + varLocalization));
    }

}
