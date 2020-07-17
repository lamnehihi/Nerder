<%@page import="Controller.BookDB"%>
<%@page import="Model.Book"%>
<%@page import="Model.Order"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1, shrink-to-fit=no"
            />
        <title>Nerd</title>
        <!-- Bootstrap CSS -->
        <link
            rel="stylesheet"
            href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
            integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
            crossorigin="anonymous"
            />

        <link rel="stylesheet" href="User/css/index.css" />
        <link rel="stylesheet" href="User/css/slider.css" />
        <link rel="stylesheet" href="User/css/latest.css" />

        <link href="https://fonts.googleapis.com/css2?family=Open+Sans&display=swap" rel="stylesheet">
    </head>
    <body>

        <%! ArrayList<Order> orderList = new ArrayList<Order>();%>
        <%
            pageContext.setAttribute("orderList", orderList);
            Book b = BookDB.getById(request.getParameter("bid"));
            Order o = new Order(request.getParameter("bid"), 1);
        %>
        <!-- Nav bar -->
        <jsp:include page="./components/navBar.jsp"/>

        <div class="latest">
        </div>

        <div class="container cart">
            <h1>Cart</h1>
            <div class="content">
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col"></th>
                            <th scope="col">Product</th>
                            <th scope="col">Price</th>
                            <th scope="col">Quantity</th>
                            <th scope="col">Subtotal</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><img src="<%=b.getbCover()%>" width="64px"></td>
                            <td><%=b.getbName()%></td>
                            <td>$<%=b.getbPrice()%></td>
                            <td>1</td>
                            <td>$<%=b.getbPrice()%></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>


        <!-- footer -->
        <jsp:include page="./components/footer.jsp"/>

        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script
            src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
            integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
            crossorigin="anonymous"
        ></script>
        <script
            src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
            integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
            crossorigin="anonymous"
        ></script>
        <script
            src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
            integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
            crossorigin="anonymous"
        ></script>

        <script src="User/js/index.js"></script>
        <script src="User/js/navBar.js"></script>
    </body>
</html>
