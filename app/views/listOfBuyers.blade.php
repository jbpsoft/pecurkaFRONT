<head>
  <title></title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet"> 
<style type="text/css">

  .container{
    margin-top: 30px;
    margin-bottom: 30px;
    max-width: 80%;
  }
  .table{
  max-width: 100%;
  }
  tr {
    display: block;
  }
  tr td {
      float: right;
      width: 33%;
  }
  .modal-header{
    background-color: orange;
  }
</style>
</head>


        <div data-toggle="modal" data-target="#azuriranje-kupac">
<div class="modal-dialog modal-lg">
  <div class="modal-content">
    <div class="modal-header">
<div class="container">
  <h2>{{ AdminOptions::lang(87, Session::get('jezik.AdminOptions::server()')) }}</h2>
  <table class="table table-striped"> 
    <tbody>
      @foreach(Buyers::kupci() as $kupac)
        <tr data-toggle="modal" data-id="{{ $kupac->id }}" data-target="#azuriranje-kupac">
          <td>&nbsp;&nbsp;{{ $kupac->naziv }}</td>
        </tr>
      @endforeach  
    </tbody>
</table> 
</div>
</div>
</div>
</div>
<div id="azuriranje-kupac" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" data-backdrop="static" data-keyboard="false" style="display: none;" aria-hidden="true">
  @include('modals/azuriranjeKupac')
</div>

</div>
<script type="text/javascript">
  $('#azuriranje-kupac').modal({
        keyboard: true,
        backdrop: "static",
        show:false,

  }).on('show.bs.modal', function(){
        var getIdFromRow = $(this).data('orderid');
      //make your ajax call populate items or what even you need
      $(this).find('#orderDetails').
  });

  $(".table-striped").find('tr[data-target]').on('click', function(){
      //or do your operations here instead of on show of modal to populate values to modal.
       $('#azuriranje-kupac').data('orderid',$(this).data('id'));
  });
</script>