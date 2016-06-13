<?php

return array(
    // site routes
    'default' => new Route('/', 'Index', 'index'),
    'books_list' => new Route('/books', 'Book', 'index'),
    'book_page' => new Route('/book-{id}\.html', 'Book', 'show', array('id' => '[0-9]+') ),
    'contact_us' => new Route('/contact-us', 'Index', 'contact'),
    'login' => new Route('/login', 'Security', 'login'),
    'logout' => new Route('/logout', 'Security', 'logout'),
    'register' => new Route('/register', 'Security', 'register'),
    

    // admin routes
    'admin_default' => new Route('/admin', 'AdminIndex', 'index'),
    'admin_books_list' => new Route('/admin/books', 'AdminBook', 'index'),
    'admin_books_remove' => new Route('/admin/book/remove/{id}', 'AdminBook', 'remove', array('id' => '[0-9]+')),
    'admin_feedback' => new Route('/admin/feedback', 'AdminFeedback', 'index'),

);