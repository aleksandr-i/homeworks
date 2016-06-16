<?php

class UploadedFile
{
    const MAX_SIZE = 500000; // 500 MB

    private $name;
    private $type;
    private $tmp_name;
    private $error;
    private $size;

    /**
     * UploadedFile constructor.
     * @param $name
     * @param $type
     * @param $tmpName
     * @param $error
     * @param $size
     */
    public function __construct(array $fileArray)
    {
        foreach ($fileArray as $key => $value){
            $this->$key = $value;
        }
    }

    public function isJpeg()
    {

    }

    public function isPng()
    {

    }

    public function isImage()
    {
        return strpos($this->type, 'image');
    }

    public function isSizeLessThan($size)
    {

    }

    public function getErrorText()
    {
        switch ($this->error) {
            case UPLOAD_ERR_INI_SIZE:
                $message = "The uploaded file exceeds the upload_max_filesize directive in php.ini";
                break;
            case UPLOAD_ERR_FORM_SIZE:
                $message = "The uploaded file exceeds the MAX_FILE_SIZE directive that was specified in the HTML form";
                break;
            case UPLOAD_ERR_PARTIAL:
                $message = "The uploaded file was only partially uploaded";
                break;
            case UPLOAD_ERR_NO_FILE:
                $message = "No file was uploaded";
                break;
            case UPLOAD_ERR_NO_TMP_DIR:
                $message = "Missing a temporary folder";
                break;
            case UPLOAD_ERR_CANT_WRITE:
                $message = "Failed to write file to disk";
                break;
            case UPLOAD_ERR_EXTENSION:
                $message = "File upload stopped by extension";
                break;

            default:
                $message = "Unknown upload error";
                break;
        }
        return $message;
    }
}