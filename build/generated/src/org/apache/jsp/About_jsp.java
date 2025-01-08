package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class About_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <title>About Us - Online Voting System</title>\n");
      out.write("    <style>\n");
      out.write("        body {\n");
      out.write("            font-family: Arial, sans-serif;\n");
      out.write("            background-color: #f4f4f4;\n");
      out.write("            margin: 0;\n");
      out.write("            padding: 0;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        header {\n");
      out.write("            background-color: #1a1a2e;\n");
      out.write("            color: white;\n");
      out.write("            padding: 1.5em;\n");
      out.write("            text-align: center;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        header h1 {\n");
      out.write("            font-size: 2.5em;\n");
      out.write("            margin: 0;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .container {\n");
      out.write("            max-width: 1200px;\n");
      out.write("            margin: 3em auto;\n");
      out.write("            padding: 0 1em;\n");
      out.write("            background-color: white;\n");
      out.write("            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);\n");
      out.write("            border-radius: 8px;\n");
      out.write("            padding-bottom: 2em;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .about-section {\n");
      out.write("            display: flex;\n");
      out.write("            flex-wrap: wrap;\n");
      out.write("            gap: 2em;\n");
      out.write("            justify-content: space-between;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .about-text {\n");
      out.write("            flex: 1;\n");
      out.write("            padding: 1em;\n");
      out.write("            font-size: 1.1em;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .about-text h2 {\n");
      out.write("            color: #1a1a2e;\n");
      out.write("            font-size: 2em;\n");
      out.write("            margin-bottom: 0.5em;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .about-text p {\n");
      out.write("            line-height: 1.6;\n");
      out.write("            color: #555;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .image-section {\n");
      out.write("            flex: 1;\n");
      out.write("            max-width: 500px;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .image-section img {\n");
      out.write("            width: 100%;\n");
      out.write("            border-radius: 8px;\n");
      out.write("            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        footer {\n");
      out.write("            background-color: #1a1a2e;\n");
      out.write("            color: white;\n");
      out.write("            text-align: center;\n");
      out.write("            padding: 1em;\n");
      out.write("            position: fixed;\n");
      out.write("            width: 100%;\n");
      out.write("            bottom: 0;\n");
      out.write("        }\n");
      out.write("    </style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    <header>\n");
      out.write("        <h1>About Us - Online Voting System</h1>\n");
      out.write("    </header>\n");
      out.write("\n");
      out.write("    <div class=\"container\">\n");
      out.write("        <div class=\"about-section\">\n");
      out.write("            <div class=\"about-text\">\n");
      out.write("                <h2>Introduction</h2>\n");
      out.write("                <p>The Online Voting System is a secure, efficient, and transparent voting platform developed for Sri Lanka. It aims to provide a modern, digital alternative to traditional paper-based elections. The system ensures that every vote counts and facilitates easy participation for voters, eliminating barriers such as location, time constraints, and bureaucratic hurdles.</p>\n");
      out.write("                <h2>Our Mission</h2>\n");
      out.write("                <p>Our mission is to revolutionize the voting process in Sri Lanka by making it more accessible, reliable, and transparent. We aim to empower citizens by offering a safe and efficient way to vote from the comfort of their homes or any location with internet access. Through this system, we strive to increase voter turnout, promote democracy, and build trust in the electoral process.</p>\n");
      out.write("                <h2>Key Features</h2>\n");
      out.write("                <ul>\n");
      out.write("                    <li><strong>Security:</strong> End-to-end encryption ensures that votes are secure and cannot be tampered with.</li>\n");
      out.write("                    <li><strong>Accessibility:</strong> Accessible via computers, tablets, and smartphones, allowing citizens across Sri Lanka to vote easily.</li>\n");
      out.write("                    <li><strong>Transparency:</strong> Voter anonymity is maintained, while ensuring transparency in vote counting and results.</li>\n");
      out.write("                    <li><strong>Efficiency:</strong> Faster and more accurate result processing, eliminating delays and human errors in counting ballots.</li>\n");
      out.write("                    <li><strong>Convenience:</strong> Voting from anywhere with internet access at any time during election hours.</li>\n");
      out.write("                </ul>\n");
      out.write("                <h2>Why Online Voting for Sri Lanka?</h2>\n");
      out.write("                <p>Sri Lanka has a large and diverse population spread across urban and rural areas. Many citizens face challenges in accessing physical polling stations due to geographic location, transportation issues, or work commitments. By implementing an online voting system, Sri Lanka can improve voter participation, reduce logistical costs, and provide a secure and efficient electoral process.</p>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"image-section\">\n");
      out.write("                <img src=\"https://via.placeholder.com/500x300\" alt=\"Online Voting System\">\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <footer>\n");
      out.write("        <p>&copy; 2025 Online Voting System | All Rights Reserved</p>\n");
      out.write("    </footer>\n");
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
