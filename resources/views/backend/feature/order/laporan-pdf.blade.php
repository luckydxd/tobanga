<!DOCTYPE html>
<html>
<head>
  
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
	<style type="text/css">
		table tr td,
		table tr th{
			font-size: 9pt;
		}
	</style>
{{-- <h4 class="text-center">Laporan Pendapatan</h4> --}}

<table class="table table-bordered">
    <thead>
      <tr>
        <th scope="col">No</th>
        <th scope="col">Invoice</th>
        <th scope="col">Nama Pemesan</th>
        <th scope="col">Waktu Pemesanan</th>
        <th scope="col">Total Pembayaran</th>
      </tr>
    </thead>
    <tbody>
      @php
      $no=1;
      $total=0;
      @endphp
      @foreach ($data as $row)
      @php
      $total += $row->total_pay;
      @endphp
      <tr>
        <td>{{ $no++ }}</td>
        <td>{{ $row ->invoice_number }}</td>
        <td>{{ $row ->recipient_name }}</td>
        <td>{{ $row ->created_at }}</td>
        <td align="right">@currency ( $row ->total_pay )</td>
      </tr>
      @endforeach
    </tbody>
    <tfoot>
      <tr>
        <th colspan="4">Jumlah Pendapatan</th>
        <th style="text-align:right">@currency($total)</th>
      </tr>
    </tfoot>
  </table>
</body>
</html>