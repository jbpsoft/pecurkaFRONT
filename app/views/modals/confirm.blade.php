
<!--Modal: modalConfirmDelete-->
<div class="modal fade" id="modalConfirmDelete" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
  aria-hidden="true">
  <div class="modal-dialog modal-sm modal-notify modal-danger" role="document">
    <!--Content-->
    <div class="modal-content text-center">
      <!--Header-->
      <div class="modal-header d-flex justify-content-center">
        <p class="heading">{{ AdminOptions::lang(44, Session::get('jezik.AdminOptions::server()')) }}</p>
      </div>

      <!--Body-->
      <div class="modal-body">

        <i class="fa fa-times fa-4x animated rotateIn" style="color:red;"></i>

      </div>

      <!--Footer-->
      <div class="modal-footer flex-center">
        <a href="{{ AdminOptions::base_url()}}admin-delete-worker/{{ $radnik->radnici_id }}" class="btn  btn-success">{{ AdminOptions::lang(71, Session::get('jezik.AdminOptions::server()')) }}</a>
        <a type="button" class="btn  btn-danger waves-effect" data-dismiss="modal">{{ AdminOptions::lang(72, Session::get('jezik.AdminOptions::server()')) }}</a>
      </div>
    </div>
    <!--/.Content-->
  </div>
</div>
<!--Modal: modalConfirmDelete-->