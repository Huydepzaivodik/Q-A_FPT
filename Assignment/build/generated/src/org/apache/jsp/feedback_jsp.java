package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import model.Teacher;
import model.Subject;
import java.util.ArrayList;

public final class feedback_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_var_items;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_choose;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_when_test;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_forEach_var_items = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_choose = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_when_test = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_forEach_var_items.release();
    _jspx_tagPool_c_choose.release();
    _jspx_tagPool_c_when_test.release();
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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("\n");
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
      out.write("            .backToHome{\n");
      out.write("                padding-top: 4px;\n");
      out.write("                padding-left: 8px;\n");
      out.write("                font-family: sans-serif;\n");
      out.write("                font-size: 11px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .listFb{\n");
      out.write("                margin-left: 100px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            h2{\n");
      out.write("                font-family: sans-serif;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            table.tableName {\n");
      out.write("                background-color: transparent;\n");
      out.write("                border-spacing: 0;\n");
      out.write("                border-collapse: collapse;\n");
      out.write("                width: 90%;\n");
      out.write("            }\n");
      out.write("            th {\n");
      out.write("                text-align: left;\n");
      out.write("                padding: 2px;\n");
      out.write("                font-family: sans-serif;\n");
      out.write("                font-size: 15px;\n");
      out.write("            }\n");
      out.write("            th {\n");
      out.write("                border-right: 1px solid #fff;\n");
      out.write("                text-transform: uppercase;\n");
      out.write("                height: 23px;\n");
      out.write("                background-color: #6b90da;\n");
      out.write("                font-weight: normal;\n");
      out.write("\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            tr {\n");
      out.write("                background-color: #fff;\n");
      out.write("                border-bottom: 1px solid #f0f0f0;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("\n");
      out.write("            .support1{\n");
      out.write("                margin-top: 100px;\n");
      out.write("                margin-left: 200px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("\n");
      out.write("        </style>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("       \n");
      out.write("\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-md-8\">\n");
      out.write("                    <h1>\n");
      out.write("                        <span>FPT University Academic Portal</span>\n");
      out.write("                    </h1>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-md-4\">\n");
      out.write("                    <table>\n");
      out.write("                        <tbody>\n");
      out.write("                            <tr>\n");
      out.write("                                <td colspan=\"2\" class=\"auto-style1\">\n");
      out.write("                                    <strong>FAP mobile app(myFAP) is ready at</strong>\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>\n");
      out.write("                                    <a href=\"https://apps.apple.com/app/id1527723314\">\n");
      out.write("                                        <img class=\"oip\" src=\"apple.jpg\" style=\"width: 120px;\n");
      out.write("                                             height: 40px\" alt=\"apple store\">\n");
      out.write("                                    </a>\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    <a href=\"https://play.google.com/store/apps/details?id=com.fuct\">\n");
      out.write("                                        <img class=\"gg\" src=\"gg.jpg\" style=\"width: 120px;\n");
      out.write("                                             height: 40px\" alt=\"google store\">\n");
      out.write("                                    </a>\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                        </tbody>\n");
      out.write("                    </table>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("            <div  class=\"sticky\">\n");
      out.write("\n");
      out.write("\n");
      out.write("                <div  id=\"ctl00_divUser\" style=\"float: right;\n");
      out.write("                      margin-right: 5px;\">\n");
      out.write("                    <a href=\"#\"> \n");
      out.write("                        <span id=\"ctl00_lblLogIn\" class=\"label label-success\"> ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${account_name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write(" </span> \n");
      out.write("                    </a>\n");
      out.write("                    <span id=\"ctl00_lblCampusName\" class=\"label label-success\"> Campus: ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${department}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write(" </span>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div style=\"float: left\" class=\"backToHome\"><a href=\"login?acc=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${account_name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("&dep=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${department}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("&mod=1\" >\n");
      out.write("                        Home</a>|<b>Student feedback</b>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"listFb\">\n");
      out.write("                <h2> List of feedbacks for ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${account.getStudent_name()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write(' ');
      out.write('(');
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${account.getAccount_name()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write(")</h2>  \n");
      out.write("                <table class=\"tableName\" >                   \n");
      out.write("                    <tbody>\n");
      out.write("                        <tr>\n");
      out.write("                            <th>GroupName</th>\n");
      out.write("                            <th>OpenDay</th>\n");
      out.write("                            <th>Lecturer</th>\n");
      out.write("                            <th>Subjects</th>\n");
      out.write("                            <th>ClosingDate</th>\n");
      out.write("                            <th>Do Feedback</th>\n");
      out.write("                        </tr>\n");
      out.write("                    </tbody>\n");
      out.write("\n");
      out.write("                    <tbody>\n");
      out.write("                        ");
      if (_jspx_meth_c_forEach_0(_jspx_page_context))
        return;
      out.write(" \n");
      out.write("                    </tbody>  \n");
      out.write("                </table>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"support1\">\n");
      out.write("                <b>Mọi góp ý, thắc mắc xin liên hệ:</b>\n");
      out.write("                Phòng dịch vụ sinh viên: Email: \n");
      out.write("                <a href=\"#\">dichvusinhvien@fe.edu.vn</a>\n");
      out.write("                Điện thoại: <b>(024)7308.13.13</b>\n");
      out.write("            </div>\n");
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

  private boolean _jspx_meth_c_forEach_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_0.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_0.setParent(null);
    _jspx_th_c_forEach_0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${teacherList}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_0.setVar("t");
    int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
      if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                            ");
          if (_jspx_meth_c_forEach_1((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
            return true;
          out.write("\n");
          out.write("                        ");
          int evalDoAfterBody = _jspx_th_c_forEach_0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_0.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_0);
    }
    return false;
  }

  private boolean _jspx_meth_c_forEach_1(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_1 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_1.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_1.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_0);
    _jspx_th_c_forEach_1.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${subjectList}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_1.setVar("s");
    int[] _jspx_push_body_count_c_forEach_1 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_1 = _jspx_th_c_forEach_1.doStartTag();
      if (_jspx_eval_c_forEach_1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                                ");
          if (_jspx_meth_c_choose_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_1, _jspx_page_context, _jspx_push_body_count_c_forEach_1))
            return true;
          out.write(" \n");
          out.write("                            ");
          int evalDoAfterBody = _jspx_th_c_forEach_1.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_1[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_1.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_1.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_1);
    }
    return false;
  }

  private boolean _jspx_meth_c_choose_0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_1, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_1)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:choose
    org.apache.taglibs.standard.tag.common.core.ChooseTag _jspx_th_c_choose_0 = (org.apache.taglibs.standard.tag.common.core.ChooseTag) _jspx_tagPool_c_choose.get(org.apache.taglibs.standard.tag.common.core.ChooseTag.class);
    _jspx_th_c_choose_0.setPageContext(_jspx_page_context);
    _jspx_th_c_choose_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_1);
    int _jspx_eval_c_choose_0 = _jspx_th_c_choose_0.doStartTag();
    if (_jspx_eval_c_choose_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                                    ");
        if (_jspx_meth_c_when_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_choose_0, _jspx_page_context, _jspx_push_body_count_c_forEach_1))
          return true;
        out.write("\n");
        out.write("                                ");
        int evalDoAfterBody = _jspx_th_c_choose_0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_choose_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_choose.reuse(_jspx_th_c_choose_0);
      return true;
    }
    _jspx_tagPool_c_choose.reuse(_jspx_th_c_choose_0);
    return false;
  }

  private boolean _jspx_meth_c_when_0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_choose_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_1)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:when
    org.apache.taglibs.standard.tag.rt.core.WhenTag _jspx_th_c_when_0 = (org.apache.taglibs.standard.tag.rt.core.WhenTag) _jspx_tagPool_c_when_test.get(org.apache.taglibs.standard.tag.rt.core.WhenTag.class);
    _jspx_th_c_when_0.setPageContext(_jspx_page_context);
    _jspx_th_c_when_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_choose_0);
    _jspx_th_c_when_0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${t.getSubject_id() eq s.getSubject_id()}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_when_0 = _jspx_th_c_when_0.doStartTag();
    if (_jspx_eval_c_when_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                                        <tr>\n");
        out.write("                                            <td>IS1703</td>\n");
        out.write("                                            <td>Today</td>\n");
        out.write("                                            <td>  ");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${t.getLecturer()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("</td>\n");
        out.write("                                            <td> ");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${s.getSubject_name()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write(" </td>\n");
        out.write("                                            <td> </td>\n");
        out.write("                                            <td><a href=\"updateFed?teacher_id=");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${t.getTeacher_id()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("&account_name=");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${account.getAccount_name()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("&department=");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${department}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("\">Edit Comment</a> |\n");
        out.write("                                                <a href=\"feedback?subject_id=");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${s.getSubject_id()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("&teacher_id=");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${t.getTeacher_id()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("&account_name=");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${account.getAccount_name()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("&department=");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${department}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("\">\n");
        out.write("                                                    Take\n");
        out.write("                                                </a>\n");
        out.write("                                            </td>\n");
        out.write("                                        </tr>\n");
        out.write("                                    ");
        int evalDoAfterBody = _jspx_th_c_when_0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_when_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_when_test.reuse(_jspx_th_c_when_0);
      return true;
    }
    _jspx_tagPool_c_when_test.reuse(_jspx_th_c_when_0);
    return false;
  }
}
