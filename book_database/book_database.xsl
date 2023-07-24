<?xml version="1.0" encoding="UTF-8"?>
<!-- XSL stylesheet version declaration and namespace -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <!-- Root template matching the root node of the XML input -->
  <xsl:template match="/">
    <html>
      <head>
        <link rel="stylesheet" type="text/css" href="../book_database/book_database.css"/>
        <!-- icons -->
        <script src="https://kit.fontawesome.com/659625d5a6.js" crossorigin="anonymous"></script>
      </head>
      <body>
        <header class="header">
          <!-- Navigation bar -->
          <nav class="navbar">
            <div class="logo"><a href="../home/home.html">U K I Y O</a></div>
            <ul>
              <li class="links">
                <a href="../home/home.html" class="navlink">Home</a>
                <a href="../book/book.html" class="navlink">Books</a>
                <a href="../faq.html"  class="navlink">FAQs</a>
              <a href="../announcement/announcement.html" class="navlink"><i class="fa-regular fa-bell fa-lg"></i></a>
              </li>
            </ul>
          </nav>
        </header>
        <!-- Page content -->
        <h2>Book List</h2>
        <p>Contact us to request a book if it is out of stock</p>
        <!-- Table for displaying book information -->
        <table class="styled-table">
          <tr class="table-header">
            <th>Title</th>
            <th>Author</th>
            <th>Year</th>
            <th>IBSN</th>
            <th>Price</th>
            <th>Stock</th>
            <th>Number Sold</th>
          </tr>
          <!-- Iterate through each book element in the XML input -->
          <xsl:for-each select="books/book">
            <tr class="table-row">
              <td><xsl:value-of select="title"/></td>
              <td><xsl:value-of select="author"/></td>
              <td><xsl:value-of select="year"/></td>
              <td><xsl:value-of select="ibsn"/></td>
              <td><xsl:value-of select="price"/></td>
              <td><xsl:value-of select="stock"/></td>
              <td><xsl:value-of select="sold"/></td>
            </tr>
          </xsl:for-each>
        </table>

        <!-- Footer section -->
        <footer id="footer">
          <h4 class="contact">
            <p>Contact: <i class="fa-solid fa-phone"></i><a href="#"> +321-12345678</a></p>
            <p>Address:<a href="#"> somewhere in Japan</a></p>
          </h4>
          <div class="socials">
            <a href="#" target="_blank"><i class="fa-brands fa-at"></i></a>
            <a href="#" target="_blank"><i class="fa-brands fa-instagram"></i></a>
            <a href="#" target="_blank"><i class="fa-brands fa-facebook"></i></a>
            <a href="#" target="_blank"><i class="fa-brands fa-whatsapp"></i></a>
          </div>

          <h5 style="text-align: center; font-weight: 100;"><i class="fa-regular fa-copyright"></i>2023 Copyright: Ukiyo&amp;co</h5>
        </footer>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
