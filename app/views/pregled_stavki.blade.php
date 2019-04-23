 
<!-- Modal: modalCart -->
<div class="modal fade" id="modalCart" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
  aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <!--Header-->
      <div class="modal-header">
        <h4 class="modal-title" id="myModalLabel">{{ AdminOptions::lang(17, Session::get('jezik.AdminOptions::server()')) }}</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
        </button>
      </div>
      <!--Body-->
      <div class="modal-body">
        <table class="table table-hover">
          <thead>
            <tr>
              <th>#</th>
              <th>{{ AdminOptions::lang(16, Session::get('jezik.AdminOptions::server()')) }}</th>
              <th>{{ AdminOptions::lang(18, Session::get('jezik.AdminOptions::server()')) }}</th>
              <th>{{ AdminOptions::lang(19, Session::get('jezik.AdminOptions::server()')) }}</th>
              <th>{{ AdminOptions::lang(20, Session::get('jezik.AdminOptions::server()')) }}</th>
              <th>{{ AdminOptions::lang(23, Session::get('jezik.AdminOptions::server()')) }}</th>
              <th>{{ AdminOptions::lang(22, Session::get('jezik.AdminOptions::server()')) }}</th>
              <th>{{ AdminOptions::lang(25, Session::get('jezik.AdminOptions::server()')) }}</th>
              <th>{{ AdminOptions::lang(21, Session::get('jezik.AdminOptions::server()')) }}</th>
            </tr>
          </thead>
          <tbody>
            @foreach((DB::table('ulazna_stavka')->get()) as $key => $ulazna_stavka)
            <tr>
              <th scope="row">{{ $key + 1 }}</th>
              <td><div id="naziv">{{ $ulazna_stavka->ulazna_stavka }}</div></td>
              <td><div id="nabavna_cena">{{ $ulazna_stavka->ulazna_stavka_nabavna_cena }}</div></td>
              <td><div id="porez">{{ $ulazna_stavka->ulazna_stavka_porez }}%</div></td>
              <td><div id="marza">{{ $ulazna_stavka->ulazna_stavka_zaracunata_marza }}%</div></td>
              <td><div id="proizvodna_cena">{{ $ulazna_stavka->ulazna_stavka_nabavna_cena * (($ulazna_stavka->ulazna_stavka_porez + $ulazna_stavka->ulazna_stavka_zaracunata_marza)/100 + 1) }}</div></td>
              <td><div id="dobavljac">{{ $ulazna_stavka->ulazna_stavka_dobavljac }}</div></td>
              <td><button class="fa fa-edit" id="Edit">{{ AdminOptions::lang(25, Session::get('jezik.AdminOptions::server()')) }}</button></td>
              <td><button class="fa fa-edit btn-delete" data-id="{{ $ulazna_stavka->ulazna_stavka_id }}" >{{ AdminOptions::lang(21, Session::get('jezik.AdminOptions::server()')) }}</button></td>
            </tr>
            @endforeach           
            <tr class="total">
              <th scope="row">5</th>
              <td>Total</td>
              <td>400$</td>
              <td></td>
            </tr>
          </tbody>
        </table>
      </div>
      <!--Footer-->
      <div class="modal-footer">
        <button type="button" class="btn btn-outline-primary" data-dismiss="modal">{{ AdminOptions::lang(24, Session::get('jezik.AdminOptions::server()')) }}</button>
      </div>
    </div>
  </div>
</div>