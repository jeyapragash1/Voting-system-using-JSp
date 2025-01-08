package org.apache.jsp.UsrRe;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class register_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <title>Register - Online Voting System</title>\n");
      out.write("    <style>\n");
      out.write("        body {\n");
      out.write("            margin: 0;\n");
      out.write("            padding: 0;\n");
      out.write("            font-family: Arial, sans-serif;\n");
      out.write("            background-color: #f4f4f4;\n");
      out.write("            display: flex;\n");
      out.write("            justify-content: center;\n");
      out.write("            align-items: center;\n");
      out.write("            height: 100vh;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .register-container {\n");
      out.write("            background-color: #ffffff;\n");
      out.write("            border-radius: 8px;\n");
      out.write("            padding: 2em;\n");
      out.write("            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);\n");
      out.write("            width: 400px;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        h2 {\n");
      out.write("            text-align: center;\n");
      out.write("            margin-bottom: 1.5em;\n");
      out.write("            color: #333;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .input-field {\n");
      out.write("            width: 100%;\n");
      out.write("            padding: 0.75em;\n");
      out.write("            margin-bottom: 1.5em;\n");
      out.write("            border: 1px solid #ddd;\n");
      out.write("            border-radius: 4px;\n");
      out.write("            font-size: 1em;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .register-btn {\n");
      out.write("            width: 100%;\n");
      out.write("            padding: 0.75em;\n");
      out.write("            background-color: #1a1a2e; /* Dark color for the button */\n");
      out.write("            color: white;\n");
      out.write("            font-size: 1.2em;\n");
      out.write("            border: none;\n");
      out.write("            border-radius: 4px;\n");
      out.write("            cursor: pointer;\n");
      out.write("            transition: background-color 0.3s;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .register-btn:hover {\n");
      out.write("            background-color: #e94560;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .link {\n");
      out.write("            text-align: center;\n");
      out.write("            display: block;\n");
      out.write("            margin-top: 1em;\n");
      out.write("            color: #1a1a2e;\n");
      out.write("            font-size: 0.9em;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .link:hover {\n");
      out.write("            color: #e94560;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .error-message {\n");
      out.write("            color: red;\n");
      out.write("            text-align: center;\n");
      out.write("            margin-bottom: 1em;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .info-message {\n");
      out.write("            color: #555;\n");
      out.write("            text-align: center;\n");
      out.write("            margin-top: 2em;\n");
      out.write("            font-size: 0.9em;\n");
      out.write("        }\n");
      out.write("    </style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    <div class=\"register-container\">\n");
      out.write("        <h2>Register for Voting</h2>\n");
      out.write("\n");
      out.write("        <!-- Error message for failed registration -->\n");
      out.write("        <div class=\"error-message\">\n");
      out.write("            ");
      out.write("\n");
      out.write("            <c:if test=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${not empty errorMessage}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\">\n");
      out.write("                ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${errorMessage}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\n");
      out.write("            </c:if>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <!-- Registration Form -->\n");
      out.write("        <form action=\"register.jsp\" method=\"post\">\n");
      out.write("            <input type=\"text\" class=\"input-field\" name=\"fullName\" placeholder=\"Enter Your Full Name\" required>\n");
      out.write("            <input type=\"text\" class=\"input-field\" name=\"nic\" placeholder=\"Enter Your NIC Number\" required>\n");
      out.write("            <input type=\"email\" class=\"input-field\" name=\"email\" placeholder=\"Enter Your Email\" required>\n");
      out.write("            <input type=\"text\" class=\"input-field\" name=\"phone\" placeholder=\"Enter Your Phone Number\" required>\n");
      out.write("            <input type=\"password\" class=\"input-field\" name=\"password\" placeholder=\"Create a Password\" required>\n");
      out.write("            <input type=\"password\" class=\"input-field\" name=\"confirmPassword\" placeholder=\"Confirm Your Password\" required>\n");
      out.write("            <textarea class=\"input-field\" name=\"address\" placeholder=\"Enter Your Address\" required></textarea>\n");
      out.write("            <button type=\"submit\" class=\"register-btn\">Register</button>\n");
      out.write("        </form>\n");
      out.write("\n");
      out.write("        <!-- Already have an account link -->\n");
      out.write("        <a href=\"login.jsp\" class=\"link\">Already have an account? Login Here</a>\n");
      out.write("\n");
      out.write("        <div class=\"info-message\">\n");
      out.write("            <p>Once registered, you will be eligible to vote in the next Sri Lankan election.</p>\n");
      out.write("            <p>Make sure to keep your information updated.</p>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</body>\n");
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
