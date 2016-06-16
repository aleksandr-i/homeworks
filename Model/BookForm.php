<?php

class BookForm
{
    public $title;
    public $price;
    public $description;
    public $style;

    /**
     * @var UploadedFile
     */
    public $attachment;

    /**
     * ContactForm constructor.
     * @param Request $request
     */
    public function __construct(Request $request)
    {
        $this->title = $request->post('title'); //$_POST
        $this->price = $request->post('price');
        $this->description = $request->post('description');
        $this->style = $request->post('style');
        $this->attachment = $request->files('document'); // $_FILE{'document'}
    }

    /**
     * is numeric
     * @return bool
     */
    function isValid()
    {
        $res = $this->title !== '' && $this->price !== '' && $this->description !== '';
        
//        $res = $res && $this->attachment->isImage();
        return $res;
    }

    public function setFromArray(array $book)
     {
         $this->title = $book['title']; // $_POST
         $this->price = $book['price'];
         $this->description = $book['description'];
         $this->style = $book['style_id'];
     }


}