# **Ukiyo Website Documentation**

1. ### Home Page:
   - About Us: 
        - Provides essential information about the bookshop such as address and contact details.
   - Social Media Links:
        - Provides links to the bookshop's social media profiles.
   - Opening Time: 
        - Displays the operating hours of the bookshop for easy reference.
   - Customers Reviews: 
        - Showcases valuable reviews and testimonials from satisfied customers, helping you make informed decisions about the bookshop.

2. ### Books Page:
   - Book Cover Display: 
        - Engagingly presents the covers of all available books.
   - Hover Description: 
        - Allows users to view a book's description by hovering over its cover, making it convenient to explore book details.
   - Add to Cart: 
        - Enables users to add books to their cart with just a click, simplifying the purchasing process.
   - View Cart: 
        - Provides quick access to the user's cart, making it easy to review selected items.
   - Footer: 
        - Includes contact details and social media links, ensuring easy communication and connection with the bookshop.

3. ### Announcement Page:
     - Promotion and Offers:
          - Displays the current promos and special offers, allowing users to take advantage of discounts and deals.
     - Upcoming Events:
          - Provides information about exciting book launches and author meetups, giving users a chance to participate in literary events.
     - Book of the Month:
          - Highlights the featured book of the month, introducing users to recommended reads.

4. ### Book Database Page:
   - Table Display: 
     - Presents a comprehensive table containing essential book details, such as ISBN, author, title, Year, price, availability, and number sold, facilitating efficient book browsing.

5. ### FAQ Page:
   - Frequently Asked Questions:
     - Contains some of our most asked questions and their answers

## **General Usage Instructions**
1. ### Navigation:
     - To access different pages, use the navigation menu located at the top right of the website.
     - Click on "Books" to visit the Books page.
     - Click on "FAQs" to access frequently asked questions.
     - Click on the notification tab to check for any updates or notifications.
     - If you are a registered user, click on the "Login" button to sign in to your account.

2. ### Home Page:
   - Read the "About Us" section to familiarize yourself with the bookshop and its mission.
   - Refer to the "Opening Time" to plan your visits according to the bookshop's hours of operation.
   - Gain insights from "Customers Reviews" to understand the bookshop's reputation and quality of service.
   - Use the "Contact Details" and "Address" to get in touch with the bookshop.
   - Follow the bookshop on social media using the provided "Social Media Links."

3. ### Books Page:
   - Explore the book covers displayed on the page.
   - When you hover over a book, its description will appear on top.
   - Click on a book to view more details and the option to "Add to Cart."
   - To quick review and checkout your cart, click on "View Cart" located at the top right corner.

4. ### Announcement Page:
     - Check out the "Promotion and Offers" section to explore ongoing deals and discounts.
     - Stay informed about "Upcoming Events" related to book launches and author meetups to participate in exciting literary gatherings.
     - Discover the "Book of the Month" to explore recommended reads curated by the bookshop.

5. ### Book Database Page:
   - This page contains a table with the details of each book available in the bookshop.
   - The table includes information such as ISBN, author, title, Year, price, availability, and number sold.

6. ### FAQ Page:
   - Review the "Frequently Asked Questions" section for quick answers to common queries.
   - Click on a question to reveal its answer and find solutions to your specific questions. 

### Note:
>- Ensure a stable internet connection while using the website.
>- Contact the bookshop through the provided contact details for any queries or concerns.
>- Stay informed about website updates and improvements through the notification tab.

### Enjoy your book browsing and shopping experience on our website! Happy reading!

## Section 1 - HTML

- ### Home page
![Home page](/screenshots/home1.png)
![Home page](/screenshots/home2.png)

- ### HTML code of home page
![Home html](/screenshots/homehtml1.png)
![Home html](/screenshots/homehtml2.png)
![Home html](/screenshots/homehtml3.png)
![Home html](/screenshots/homehtml4.png)

- ### CSS code of home page
![Home css](/screenshots/homecss1.png)
![Home css](/screenshots/homecss2.png)
![Home css](/screenshots/homecss3.png)
![Home css](/screenshots/homecss4.png)
![Home css](/screenshots/homecss5.png)
![Home css](/screenshots/homecss6.png)
![Home css](/screenshots/homecss7.png)
![Home css](/screenshots/homecss8.png)
![Home css](/screenshots/homecss9.png)
![Home css](/screenshots/homecss10.png)

- ### FAQ Page and its HTML code
![FAQ HTML](/screenshots/FAQ.png)
![FAQ HTML](/screenshots/FAQHTML1.png)
![FAQ HTML](/screenshots/FAQHTML2.png)
![FAQ HTML](/screenshots/FAQHTML3.png)
![FAQ HTML](/screenshots/FAQHTML4.png)

- ### Books page
![Book](/screenshots/book1.png)
![Book](/screenshots/book2.png)

- ### Books HTML
![Book](/screenshots/bookHTML.png)

- ### Books CSS
![Book](/screenshots/bookCSS.png)

- ### Books JS
![Book](/screenshots/bookJS.png)

- ### Announcement Page
![Announcement](/screenshots/announcement1.png)
![Announcement](/screenshots/announcement2.png)

- ### Annoucement HTML
![Announcement](/screenshots/announcementHTML.png)

- ### Annoucement CSS
![Announcement](/screenshots/announcementCSS.png)

- ### Login JS
![Login](/screenshots/loginJS.png)

## Section 2 - XML

- ### XML Schema

![Book_database XML1](/screenshots/book_databaseXML2.png)
![Book_database XML2](/screenshots/book_databaseXML1.png)

- ### XML File
![Book_database XML2](/screenshots/bookdbXML1.png)
![Book_database XML2](/screenshots/bookdbXML2.png)
![Book_database XML2](/screenshots/bookdbXML3.png)
![Book_database XML2](/screenshots/bookdbXML4.png)

## Section 3 - Validation
- ### DTD File
![Book_database DTD](/screenshots/bookdbDTD.png)

This Document Type Definition (DTD) describes the structure of an XML document for a list of books.

1. `<!ELEMENT books (book+)>`: This line means that the root element of the document is `<books>`. Inside this element, there must be one or more `<book>` elements (as indicated by the `+` symbol).

2. `<!ELEMENT book (title, author, year, ibsn, price, stock, sold, notes?)>`: This line defines the structure of each `<book>` element. A `<book>` element must contain the child elements `<title>`, `<author>`, `<year>`, `<ibsn>`, `<price>`, `<stock>`, and `<sold>` in the exact order as specified. The `<notes>` child element is optional (as indicated by the `?` symbol).

3. `<!ELEMENT title (#PCDATA)>`, `<!ELEMENT author (#PCDATA)>`, `<!ELEMENT year (#PCDATA)>`, `<!ELEMENT ibsn (#PCDATA)>`, `<!ELEMENT price (#PCDATA)>`, `<!ELEMENT stock (#PCDATA)>`, `<!ELEMENT sold (#PCDATA)>`: These lines mean that the `<title>`, `<author>`, `<year>`, `<ibsn>`, `<price>`, `<stock>`, and `<sold>` elements must contain parsed character data (`#PCDATA`), i.e., text.

4. `<!ELEMENT notes EMPTY>`: This line indicates that the `<notes>` element should not contain any text or other elements—it must be empty.

5. `<!ATTLIST book id ID #REQUIRED>`: This line states that each `<book>` element must have an `id` attribute of type ID (which means that it must be a unique identifier within the document), and that this attribute is required.

6. `<!ATTLIST book lang NMTOKEN "en">`: This line defines an attribute `lang` for the `<book>` element. The value of `lang` should be a name token (NMTOKEN), which means it must be a valid XML name. If no `lang` is provided, the default value will be `"en"`.
   
By using this DTD, an XML document of books can be validated to ensure it adheres to the defined structure and content model.

## Section 4 - Transformation
- ### XSL File
![Book_database XSL](/screenshots/bookdbXSL1.png)
![Book_database XSL](/screenshots/bookdbXSL2.png)
- ### CSS File
![Book_database CSS](/screenshots/bookdbCSS1.png)
![Book_database CSS](/screenshots/bookdbCSS2.png)
![Book_database CSS](/screenshots/bookdbCSS3.png)
![Book_database CSS](/screenshots/bookdbCSS4.png)
