<?xml version="1.0" encoding="UTF-8"?>
<!-- Define the version of XSLT used and the XSL namespace -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <!-- Root template that matches the root of the XML input -->
  <xsl:template match="/">
  
    <html>
      <head>
        <link rel="stylesheet" type="text/css" href="../book_database/book_database.css"/>
        
        <!-- icons -->
        <script src="https://kit.fontawesome.com/659625d5a6.js" crossorigin="anonymous"></script>
      </head>
      <body>
        <!-- navigation bar -->
        <header class="header">
          <nav class="navbar">
            <div class="logo"><a href="../home/home.html">U K I Y O</a></div>
            <!-- Navigation links -->
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
        
        <!-- Page title -->
        <h2>Book List</h2>
        <p>Contact us to request a book if it is out of stock</p>
        
        <!-- Table -->
        <table class="styled-table">
          <tr class="table-header">
            <th>Title</th>
            <th>Author</th>
            <th>Genre</th>
            <th>Year</th>
            <th>IBSN</th>
            <th>Price ($)</th>
            <th>Stock</th>
            <th>Number Sold</th>
          </tr>
          
          <!-- XSL loop to process each book in the XML input -->
          <xsl:for-each select="books/book">
            <!-- Generate a table row for each book -->
            <tr class="table-row">
              <!-- Output book title, author, genre, year, IBSN, price, stock, and number sold -->
              <td><xsl:value-of select="title"/></td>
              <td><xsl:value-of select="author"/></td>
              <td><xsl:value-of select="@genre"/></td>
              <td><xsl:value-of select="year"/></td>
              <td><xsl:value-of select="ibsn"/></td>
              <td><xsl:text>$</xsl:text><xsl:value-of select="price"/></td>
              <td><xsl:value-of select="stock"/></td>
              <td><xsl:value-of select="sold"/></td>
            </tr>
          </xsl:for-each>
        </table>

        <!-- Footer -->
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

          <!-- Copyright notice -->
          <h5 style="text-align: center; font-weight: 100;"><i class="fa-regular fa-copyright"></i>2023 Copyright: Ukiyo&amp;co</h5>
        </footer>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>