<?php

namespace App\Http\Controllers\Backend\Feature;

use App\Http\Controllers\Controller;
use App\Models\Feature\Order;
use App\Repositories\CrudRepositories;
use Illuminate\Http\Request;
use Carbon\Carbon;
// use Barryvdh\DomPDF\Facade as PDF;


class OrderController extends Controller
{   
    protected $order;
    public function __construct(Order $order)
    {
        $this->order = new CrudRepositories($order);
    }

    public function index($status = null)
    {
        if($status == null){
            $data['order'] = $this->order->get();
        }else{
            $data['order'] = $this->order->Query()->where('status',$status)->get();
        }
        return view('backend.feature.order.index',compact('data'));
    }

    public function show($id)
    {
        $data['order'] = Order::find($id);
        return view('backend.feature.order.show',compact('data'));
    }

    public function inputResi(Request $request)
    {
        $request->merge(['status' => 2]);
        $this->order->Query()->where('invoice_number',$request->invoice_number)->first()->update($request->only('status','receipt_number'));
        return back()->with('success',__('message.order_receipt'));
    }

    public function exportpdf($tglawal, $tglakhir){


        // $data = Order::all();
        $data = Order::all()->whereBetween('created_at', [$tglawal, $tglakhir])
            ->where('status', 1,2);

        
        // // ->get();

        view()->share('data',$data);

        $pdf = \Barryvdh\DomPDF\Facade\Pdf::loadView('backend.feature.order.laporan-pdf');
        return $pdf->stream('Laporan-pendapatan_'. carbon::now() . '_.pdf');

        // dd("Tanggal Awal :" . $tglawal, "Tanggal Akhir :" . $tglakhir);
        // return view('backend.feature.order.exportpdf');
        
    }
}
