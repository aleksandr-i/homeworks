<?php

class CartController extends Controller
{
    public function indexAction(Request $request)
    {
        $cart = new Cart();
        if ($cart->isEmpty()){
            echo "Cart is empty";
        } else {
            $id_sql = $cart->getProducts(true);
            $cartModel = New CartModel();
            $books = $cartModel->viewCartList($id_sql);
            
            $args = array(
                'books' => $books,
            );

            return $this->render('index', $args);
        }
    }

    public function addAction(Request $request)
    {
        $id = $request->get('id'); // $_GET['id]
        $cart = New Cart();
        $cart->addProduct($id);
        Router::redirect('/books');
    }

    public function removeAction(Request $request)
    {
        $id = $request->get('id'); // $_GET['id]
        $cart = New Cart();
        $cart->deleteProduct($id);
        Router::redirect('/cart');
    }

    public function clearAction()
    {
        $cart = New Cart();
        $cart->clear();
        Router::redirect('/cart');
    }

}
