<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <link rel="stylesheet" type="text/css" href="../book_database/book_database.css"/>
      </head>
      <body>
        <h2>Book List</h2>
        <p>Contact us to request a book if it is out of stock</p>
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
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
