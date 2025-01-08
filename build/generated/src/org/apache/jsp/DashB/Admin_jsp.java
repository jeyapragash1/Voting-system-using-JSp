package org.apache.jsp.DashB;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Admin_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <title>Admin Dashboard - Online Voting System</title>\n");
      out.write("    <style>\n");
      out.write("        /* Reset styles */\n");
      out.write("        * {\n");
      out.write("            margin: 0;\n");
      out.write("            padding: 0;\n");
      out.write("            box-sizing: border-box;\n");
      out.write("            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        body {\n");
      out.write("            background-color: #f4f7fa; /* Light gray background */\n");
      out.write("            color: #333;\n");
      out.write("            display: flex;\n");
      out.write("            flex-direction: column;\n");
      out.write("            height: 100vh;\n");
      out.write("            font-size: 16px;\n");
      out.write("            padding-top: 80px; /* Space for the fixed header */\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        header {\n");
      out.write("            background-color: #1a237e; /* Dark Blue */\n");
      out.write("            color: white;\n");
      out.write("            padding: 1.5em 2em;\n");
      out.write("            display: flex;\n");
      out.write("            justify-content: space-between;\n");
      out.write("            align-items: center;\n");
      out.write("            position: fixed;\n");
      out.write("            top: 0;\n");
      out.write("            left: 0;\n");
      out.write("            right: 0;\n");
      out.write("            z-index: 1000; /* Keep header on top of other content */\n");
      out.write("            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        header h1 {\n");
      out.write("            font-size: 1.8em;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        header nav a {\n");
      out.write("            color: white;\n");
      out.write("            text-decoration: none;\n");
      out.write("            margin-left: 1.5em;\n");
      out.write("            font-size: 1.1em;\n");
      out.write("            transition: color 0.3s ease;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        header nav a:hover {\n");
      out.write("            color: #90caf9; /* Light blue */\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        main {\n");
      out.write("            padding: 2em;\n");
      out.write("            display: grid;\n");
      out.write("            grid-template-columns: repeat(auto-fit, minmax(320px, 1fr));\n");
      out.write("            gap: 2em;\n");
      out.write("            margin-top: 2em;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .card {\n");
      out.write("            background-color: white;\n");
      out.write("            border-radius: 10px;\n");
      out.write("            padding: 2em;\n");
      out.write("            box-shadow: 0 6px 16px rgba(0, 0, 0, 0.1);\n");
      out.write("            transition: box-shadow 0.3s ease;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .card:hover {\n");
      out.write("            box-shadow: 0 8px 18px rgba(0, 0, 0, 0.2);\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .card h2 {\n");
      out.write("            font-size: 1.4em;\n");
      out.write("            margin-bottom: 1.2em;\n");
      out.write("            color: #333;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .card p {\n");
      out.write("            font-size: 1em;\n");
      out.write("            color: #555;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .card button {\n");
      out.write("            background-color: #1a237e; /* Dark Blue */\n");
      out.write("            color: white;\n");
      out.write("            border: none;\n");
      out.write("            padding: 0.9em;\n");
      out.write("            font-size: 1.1em;\n");
      out.write("            width: 100%;\n");
      out.write("            border-radius: 6px;\n");
      out.write("            cursor: pointer;\n");
      out.write("            transition: background-color 0.3s ease;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .card button:hover {\n");
      out.write("            background-color: #0d47a1; /* Darker Blue */\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        footer {\n");
      out.write("            background-color: #1a237e;\n");
      out.write("            color: white;\n");
      out.write("            padding: 1.2em;\n");
      out.write("            text-align: center;\n");
      out.write("            margin-top: auto;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        footer a {\n");
      out.write("            color: #90caf9; /* Light blue */\n");
      out.write("            text-decoration: none;\n");
      out.write("            font-weight: bold;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        footer a:hover {\n");
      out.write("            color: #e1f5fe; /* Very light blue */\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        /* Responsive Design */\n");
      out.write("        @media (max-width: 768px) {\n");
      out.write("            header {\n");
      out.write("                flex-direction: column;\n");
      out.write("                text-align: center;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            header nav {\n");
      out.write("                margin-top: 1em;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            header nav a {\n");
      out.write("                margin: 0.5em 0;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            main {\n");
      out.write("                padding: 1.5em;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .card {\n");
      out.write("                padding: 1.5em;\n");
      out.write("            }\n");
      out.write("        }\n");
      out.write("    </style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("    <!-- Header -->\n");
      out.write("    <header>\n");
      out.write("        <h1>Admin Dashboard</h1>\n");
      out.write("        <nav>\n");
      out.write("            <a href=\"#overview\">Overview</a>\n");
      out.write("            <a href=\"#users\">Manage Users</a>\n");
      out.write("            <a href=\"#elections\">Manage Elections</a>\n");
      out.write("            <a href=\"#notifications\">Notifications</a>\n");
      out.write("            <a href=\"#logout\">Logout</a>\n");
      out.write("        </nav>\n");
      out.write("    </header>\n");
      out.write("\n");
      out.write("    <!-- Main Content -->\n");
      out.write("    <main>\n");
      out.write("        <!-- Admin Overview Card -->\n");
      out.write("        <div class=\"card\" id=\"overview\">\n");
      out.write("            <h2>System Overview</h2>\n");
      out.write("            <p><strong>Total Registered Users:</strong> 1,240</p>\n");
      out.write("            <p><strong>Ongoing Elections:</strong> 3</p>\n");
      out.write("            <p><strong>Total Votes Cast:</strong> 12,340</p>\n");
      out.write("            <button onclick=\"alert('Viewing detailed system stats!')\">View Detailed Stats</button>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <!-- Manage Users Card -->\n");
      out.write("        <div class=\"card\" id=\"users\">\n");
      out.write("            <h2>Manage Users</h2>\n");
      out.write("            <p>View and manage registered users.</p>\n");
      out.write("            <button onclick=\"alert('Redirecting to users management page...')\">View Users</button>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <!-- Manage Elections Card -->\n");
      out.write("        <div class=\"card\" id=\"elections\">\n");
      out.write("            <h2>Manage Elections</h2>\n");
      out.write("            <p>View and manage current and upcoming elections.</p>\n");
      out.write("            <button onclick=\"alert('Redirecting to elections management page...')\">View Elections</button>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <!-- Notifications Card -->\n");
      out.write("        <div class=\"card\" id=\"notifications\">\n");
      out.write("            <h2>Send Notifications</h2>\n");
      out.write("            <p>Send alerts and reminders to users.</p>\n");
      out.write("            <button onclick=\"alert('Redirecting to notifications page...')\">Send Notification</button>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <!-- Recent Activity Card -->\n");
      out.write("        <div class=\"card\" id=\"activity\">\n");
      out.write("            <h2>Recent Activity</h2>\n");
      out.write("            <ul>\n");
      out.write("                <li>Created a new election for 2025 Presidential Election.</li>\n");
      out.write("                <li>Approved new user registration (ID: 1024).</li>\n");
      out.write("                <li>Sent election reminder to all users.</li>\n");
      out.write("            </ul>\n");
      out.write("            <button onclick=\"alert('Viewing all admin activity!')\">View All Activity</button>\n");
      out.write("        </div>\n");
      out.write("    </main>\n");
      out.write("\n");
      out.write("    <!-- Footer -->\n");
      out.write("    <footer>\n");
      out.write("        <p>&copy; 2025 Online Voting System. All rights reserved. <a href=\"#\">Privacy Policy</a></p>\n");
      out.write("    </footer>\n");
      out.write("\n");
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
