package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class updateFb_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("\n");
      out.write("        <style>\n");
      out.write("            h1{\n");
      out.write("                font-family: sans-serif;\n");
      out.write("                font-weight: 500;\n");
      out.write("                line-height: 1.1;\n");
      out.write("                color: inherit;\n");
      out.write("            }\n");
      out.write("            div.row{\n");
      out.write("                display: flex;\n");
      out.write("                margin-left: 100px;\n");
      out.write("                width: 1000px;\n");
      out.write("            }\n");
      out.write("            .col-md-8{\n");
      out.write("                margin-right: 300px;\n");
      out.write("            }\n");
      out.write("            .auto-style1{\n");
      out.write("                font-size: 13px;\n");
      out.write("            }\n");
      out.write("            img.gg{\n");
      out.write("\n");
      out.write("            }\n");
      out.write("            hr.line {\n");
      out.write("                border: 8px solid gainsboro;\n");
      out.write("                border-radius: 5px;\n");
      out.write("                margin-left: 100px;\n");
      out.write("                width: 1000px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("            div {\n");
      out.write("                display: block;\n");
      out.write("            }\n");
      out.write("            a {\n");
      out.write("                color: #337ab7;\n");
      out.write("                text-decoration: none;\n");
      out.write("            }\n");
      out.write("            a {\n");
      out.write("                background-color: transparent;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .label-success {\n");
      out.write("                background-color: #5cb85c;\n");
      out.write("            }\n");
      out.write("            .label {\n");
      out.write("                margin-left: 8px;\n");
      out.write("                display: inline;\n");
      out.write("                padding: 0.2em 0.6em 0.3em;\n");
      out.write("                font-size: 60%;\n");
      out.write("                font-weight: 700;\n");
      out.write("                line-height: 1;\n");
      out.write("                color: #fff;\n");
      out.write("                text-align: center;\n");
      out.write("                white-space: nowrap;\n");
      out.write("                vertical-align: baseline;\n");
      out.write("                border-radius: 0.25em;\n");
      out.write("            }\n");
      out.write("            div.sticky {\n");
      out.write("                position: -webkit-sticky;\n");
      out.write("                position: sticky;\n");
      out.write("                top: 0;\n");
      out.write("                padding-bottom: 22px;\n");
      out.write("                background-color: gainsboro;\n");
      out.write("                margin-left: 100px;\n");
      out.write("                margin-right: 100px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("        </style>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div class=\"col-md-8\">\n");
      out.write("                <h1>\n");
      out.write("                    <span>FPT University Academic Portal</span>\n");
      out.write("                </h1>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"col-md-4\">\n");
      out.write("                <table>\n");
      out.write("                    <tbody>\n");
      out.write("                        <tr>\n");
      out.write("                            <td colspan=\"2\" class=\"auto-style1\">\n");
      out.write("                                <strong>FAP mobile app(myFAP) is ready at</strong>\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td>\n");
      out.write("                                <a href=\"https://apps.apple.com/app/id1527723314\">\n");
      out.write("                                    <img class=\"oip\" src=\"apple.jpg\" style=\"width: 120px;\n");
      out.write("                                         height: 40px\" alt=\"apple store\">\n");
      out.write("                                </a>\n");
      out.write("                            </td>\n");
      out.write("                            <td>\n");
      out.write("                                <a href=\"https://play.google.com/store/apps/details?id=com.fuct\">\n");
      out.write("                                    <img class=\"gg\" src=\"gg.jpg\" style=\"width: 120px;\n");
      out.write("                                         height: 40px\" alt=\"google store\">\n");
      out.write("                                </a>\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("                    </tbody>\n");
      out.write("                </table>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div  class=\"sticky\">\n");
      out.write("\n");
      out.write("\n");
      out.write("            <div  id=\"ctl00_divUser\" style=\"float: right;\n");
      out.write("                  margin-right: 5px;\">\n");
      out.write("                <a href=\"#\"> \n");
      out.write("                    <span id=\"ctl00_lblLogIn\" class=\"label label-success\"> test </span> \n");
      out.write("                </a>\n");
      out.write("                <span id=\"ctl00_lblCampusName\" class=\"label label-success\"> Campus: test </span>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
