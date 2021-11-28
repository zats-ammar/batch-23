<%-- 
    Document   : index
    Created on : Nov 28, 2021, 10:09:10 AM
    Author     : Ammar
--%>

<%@page import="java.util.List"%>
<%@page import="com.mycompany.my.webapp.Util"%>
<%@page import="com.mycompany.my.webapp.Person"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="main.css">
        
        <script src="https://code.jquery.com/jquery-1.12.4.min.js" integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ=" crossorigin="anonymous"></script>
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.3/css/jquery.dataTables.css">
        <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.js"></script>

    </head>
    <body>
        <% 
            Person p = new Person();
            String greeting = "Hello";
            p.setFirstName("John");
            p.setLastName("Daniel");
            
            // out.print(firstName + " " + lastName);
        %>
        <div class="panel">
            <h1><%out.print(p.getFullName());%></h1>
        </div>
        <% 
            List<Person> persons = Util.getPersons();
            
            int i = 0;
            out.print("// While loop<br/>");
            while(i < persons.size()) {
                out.print("<p1>" + persons.get(i).getFullName() + "</p1><br/>");
                i++;
            }
            out.print("<br/>");
            
            out.print("// for loop<br/>");
            for(int k = 0; k < persons.size(); k++) {
                out.print("<p1>" + persons.get(k).getFullName() + "</p1><br/>");
            }
            out.print("<br/>");
            
            out.print("// foreach loop<br/>");
            for(Person per : persons) {
                out.print("<p1>" + per.getFullName() + "</p1><br/>");
            }
            
        %>
        <% 
            out.print("<br/>");
            out.print("// table<br/>");
        %>
        <table border="1">
            <tr>
                <th>First Name</th>
                <th>Last Name</th>
                <th>NIC</th>
            </tr>
            <% for(Person p1 : persons) { %>
            <tr>
                <td><%out.print(p1.getFirstName()); %></td>
                <td><%out.print(p1.getLastName()); %></td>
                <td><%out.print(p1.getNic()); %></td>
            </tr>
            <%} %>
        </table>
        
        <% 
            out.print("<br/>");
            out.print("// table with datatable plugin<br/>");
        %>
        <table id="person-table" class="display">
            <thead>
                <tr>
                <th>First Name</th>
                <th>Last Name</th>
                <th>NIC</th>
            </tr>
        </thead>
            <tbody>
                <% for(Person p1 : persons) { %>
                    <tr>
                        <td><%out.print(p1.getFirstName()); %></td>
                        <td><%out.print(p1.getLastName()); %></td>
                        <td><%out.print(p1.getNic()); %></td>
                    </tr>
                    <%} %>
            </tbody>
        </table>
            <script>
                $(document).ready( function () {
                    $('#person-table').DataTable();
                } );
            </script>    
        
    </body>
</html>
