<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class OrderController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $products = Product::orderBy('id')->get();
        return view('order.index', compact('products'));
    }


    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {

        $categories = Category::get(); //[{data:1}],[{data:2}]
        $products   = Product::with('category')->orderBy('id')->get();
        return view('order.create', compact('categories', 'products'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        // Buat Validasi
        $request->validate([
            'items' => 'required|array',
            'items.*.id' => 'required|exists:products,id',
            'items.*.qty' => 'required|integer|min:1',
            'payment_method' => 'nullable|string',
            // 'customer_name'
        ]);
        try {
            return DB::transaction(function () use ($request) {
                $subtotal = 0;
                $itemsData = [];

                //hitung ulang total & cek ketersediaan product
                foreach ($request->items as $item) {
                    $product = Product::find($item['id']);

                    $itemSubtotal = $product->price * $item['qty'];
                    $subtotal += $itemSubtotal;

                    $itemsData[] = [
                        'product' => $product,
                        'qty' => $item['qty'],
                        'price' => $product->price,
                        'subtotal' => $itemSubtotal
                    ];
                }

                $tax           = $subtotal * 0.1;
                $total         = $subtotal + $tax;
                $orderCode     = 'ORD-' . date('Ymd') . '-' . rand(1000, 9999);
                $paymentMethod = $request->payment_method ?? 'cash';

                $order = \App\Models\Order::create([
                    'order_code' => $orderCode,
                    'order_amount' => $total,
                    'order_change' => 0,
                    'status' => $paymentMethod === 'cash' ? 'success' : 'pending'
                ]);
            });
        } catch (\Throwable $th) {
            //throw $th;
        }
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
