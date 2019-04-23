
$(document).ready(function() {

    
  $(".noviRadnik6").click(function() {
    $("#novi-radnik-modal").modal('show');
  });
  /*
  $('#con-close-modal').on('show.bs.modal', function (e) {
    // console.log(e);
    // console.log(e.relatedTarget);
    
    var _button = $(e.relatedTarget); // Button that triggered the modal
    
    // console.log(_button, _button.parents("tr"));
    var _row = _button.parents("tr");
    var _invoiceAmt = _row.find(".invoice-amt").text();
    var _chequeAmt = _row.find(".cheque-amt").text();
    // console.log(_invoiceAmt, _chequeAmt);
    
    $(this).find(".invoice-amt").val(_invoiceAmt);
    $(this).find(".cheque-amt").val(_chequeAmt);
  });*/


});
