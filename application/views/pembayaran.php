<div class="container-flut">
    <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-8">
            <div class="btn btn-sm btn-success">
                <?php
                $grend_total = 0;
                if($keranjang = $this->cart->contents())
                {
                    foreach($keranjang as $item)
                    {
                        $grend_total = $grend_total + $item['subtotal'];
                    }

                  echo "<h4>Total Belanja Anda: Rp. ".number_format($grend_total,0,',','.');
              
                ?>
            </div><br><br>
            
            <div><h3>Input Alamat Pengiriman dan Pembayaran</h3>

            <form method="post"  action="<?php echo base_url('dashboard/proses_pesanan')?>" >

            <div class="form-group">
                <label>Alamat Lengkap</label>
                <input type="text" name="alamat" placeholder="Alamat Lengkap Anda"class="form-control">
            </div>

            <div class="form-group">
                <label>Nama Lengkap</label>
                <input type="text" name="nama" placeholder="Nama Lengkap Anda"class="form-control">
            </div>

            <div class="form-group">
                <label>No. Telepon</label>
                <input type="text" name="no_telepon" placeholder="Nomor Telepon Anda"class="form-control">
            </div>

            <div class="form-group">
                <label>Jasa Pengiriman</label>
                <select class="form-control">
                    <option value="">JNE</option>
                    <option value="">TIKI</option>
                    <option value="">POS Indonesia</option>
                    <option value="">GOJEG</option>
                    <option value="">GRAB</option>
                </select>               
            </div>

            <div class="form-group">
                <label>Pilih BANK</label>
                <select class="form-control">
                    <option value="">BCA-xxxxxxxx</option>
                    <option value="">BNI-XXXXXXXX</option>
                    <option value="">BRI-XXXXXXXX</option>
                    <option value="">MANDIRI-xxxxxxxx</option>
                </select>               
            </div>

            
            <button type="submit" class="btn btn-sm btn-primary mb-3">Pesan</button>

            </form>

            <?php
               }else
               {
                   echo " <h4>Keranjang Belanja Anda Masih Kosong";
               }
            ?>
        
        </div>
        <div class="col-md-2"></div>
    </div>
</div>