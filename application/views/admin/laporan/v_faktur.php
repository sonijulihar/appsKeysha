<html lang="en" moznomarginboxes mozdisallowselectionprint>
<head>
    <title>Faktur Penjualan Barang</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="<?php echo base_url('assets/css/laporan.css')?>"/>
</head>
<body onload="window.print()">
<div id="laporan">
<table align="center" style="width:700px; border-bottom:3px;border-top:none;border-right:none;border-left:none;margin-top:1px;margin-bottom:10px;" cellpadding="0" cellspacing="0">
<!--<tr>
    <td><img src="<?php// echo base_url().'assets/img/kop_surat.png'?>"/></td>
</tr>-->
</table>

<table border="0" align="center" style="width:700px; border:none;margin-top:5px;margin-bottom:0px;">
<tr>
    
</tr>
                       
</table>
<?php 
    $b=$data->row_array();
?>
<table border="0" align="center" cellpadding="0" cellspacing="0" style="width:700px;border:none;">
<tr>
            <th style="text-align:left;font-size: 20px;"><b>KEISHA JAYA</b></th>
    
</th></tr>
<table border="0" align="center" cellpadding="0" cellspacing="0" style="width:700px;border:none;margin-bottom:5px;">
       
        <tr>
            
            <th style="text-align:left;">Purwakarta</th>
            <th style="text-align:left;">No Faktur &nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp: <?php echo $b['jual_nofak'];?></th>
        </tr>
        <tr>
            <th style="text-align:left;">Contact Person : 081312479616</th>
            <th style="text-align:left;">Tanggal &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp: <?php echo $b['jual_tanggal'];?></th>
       </tr>
        <tr>
            <th style="text-align:left;">Whats Apps   &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp: 081909540014</th>
            <th style="text-align:left;">Nama Pelanggan&nbsp&nbsp&nbsp&nbsp&nbsp: <?php echo $b['pembeli'];?></th>
        </tr> <tr>
            <th style="text-align:left;"></th>
            <th style="text-align:left;">Alamat Pelanggan &nbsp&nbsp: <?php echo $b['alamat'];?></th>
        </tr>
</table>

<table border="0" align="center" style="width:700px;margin-bottom:5px;">
<thead>

    <tr>
        <th style="width:50px;">No</th>
        <th>Nama Barang</th>
        <th>Satuan</th>
        <th>Harga Jual</th>
        <th>Qty</th>
        <th>Diskon</th>
        <th>SubTotal</th>
    </tr>
</thead>
<tbody>
<?php 
$no=0;
    foreach ($data->result_array() as $i) {
        $no++;
        
        $nabar=$i['d_jual_barang_nama'];
        $satuan=$i['d_jual_barang_satuan'];
        
        $harjul=$i['d_jual_barang_harjul'];
        $qty=$i['d_jual_qty'];
        $diskon=$i['d_jual_diskon'];
        $total=$i['d_jual_total'];
?>
    <tr>
        <td style="text-align:center;"><?php echo $no;?></td>
        <td style="text-align:left;"><?php echo $nabar;?></td>
        <td style="text-align:center;"><?php echo $satuan;?></td>
        <td style="text-align:right;"><?php echo 'Rp '.number_format($harjul);?></td>
        <td style="text-align:center;"><?php echo $qty;?></td>
        <td style="text-align:right;"><?php echo 'Rp '.number_format($diskon);?></td>
        <td style="text-align:right;"><?php echo 'Rp '.number_format($total);?></td>
    </tr>
<?php }?>
</tbody>
<tfoot>

    <tr>
        <td colspan="6" style="text-align:center;"><b>Total</b></td>
        <td style="text-align:right;"><b><?php echo 'Rp '.number_format($b['jual_total']);?></b></td>
    </tr>
</tfoot>
</table>
<table style="border:none;" >
    <tr height="60">
        <td width="40"></td>
        <td width="120" valign="top" align="center">Tanda terima</td>
        <td width="120" valign="top" align="center">Pengirim (Driver)</td>
        <td width="40" valign="top" align="center"></td>
        <td width="135" valign="top" align="center"><table border="1">
            <tr height="30"><td align="center"><b>Perhatian !!!</b><br>Barang yang sudah di beli <br>tidak dapat di tukar/<br>dikembalikan</td></tr>
        </table></td>
        <td width="175" valign="top" align="center"></td>
        <td width="100" valign="top" align="center">Hormat Kami,</td>
    </tr>

</table>
<table style="border:none;">
    <tr height="10">
        <td width="40"></td>
        <td width="120" valign="top" align="center">(&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp)</td>
        <td width="120" valign="top" align="center">(&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp)</td>
        <td width="130" valign="top" align="center"></td>
        <td width="215" valign="top" align="center"></td>
        <td width="100" valign="top" align="center"> (&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp)</td>
    </tr>

</table>
</div>
</body>
</html>