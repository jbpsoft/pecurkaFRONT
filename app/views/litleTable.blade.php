<!doctype html>
<html lang="en">
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<link rel="icon" type="image/png" href="{{ AdminOptions::base_url()}}/table/assets/img/favicon.ico">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>JBPSoft</title>

	<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
    <link href="{{ AdminOptions::base_url()}}/table/assets/css/bootstrap.css" rel="stylesheet" />
    <link href="{{ AdminOptions::base_url()}}/table/assets/css/table.css" rel="stylesheet" />
    <link href="{{ AdminOptions::base_url()}}/table/assets/css/demo.css" rel="stylesheet" />

    <!--     Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>

    <script type="text/javascript" src="{{ AdminOptions::base_url()}}/table/assets/js/jquery-1.11.2.min.js"></script>
    <script type="text/javascript" src="{{ AdminOptions::base_url()}}/table/assets/js/bootstrap.js"></script>
    <script type="text/javascript" src="{{ AdminOptions::base_url()}}/table/assets/js/bootstrap-table.js"></script>

    <!--  Just for demo purpose, do not include in your project     -->
    <script type="text/javascript" src="{{ AdminOptions::base_url()}}/table/assets/js/demo/gsdk-switch.js"></script>
   
    <script type="text/javascript" src="{{ AdminOptions::base_url()}}/table/assets/js/demo/jquery.sharrre.js"></script>
    <script type="text/javascript" src="{{ AdminOptions::base_url()}}/table/assets/js/demo/demo.js"></script>
    <script type="text/javascript" src="{{ AdminOptions::base_url()}}/js/alertify.js"></script>
 <script type="text/javascript" src="{{ AdminOptions::base_url()}}/js/admin.js"></script>
    <!-- <script src="sweetalert2.all.min.js"></script>
    Optional: include a polyfill for ES6 Promises for IE11 and Android browser
    <script src="https://cdn.jsdelivr.net/npm/promise-polyfill"></script> -->

</head>
<body>
    <?php 
        if (!empty($data) && ($pom == 0)) {?>           
            <script type="text/javascript">
                $(window).load(function()
                {
                    $('#azuriranjeStavki').modal('show');
                });
            </script>
            <div id="azuriranjeStavki" class="modal fade" tabindex="-1" role="dialog" data-backdrop="static" data-keyboard="false" aria-labelledby="myModalLabel" aria-hidden="true">
                @include('modals/azuriranjeStavki')
            </div>   
    <?php         
        }
        elseif (!empty($data) && ($pom == 1)) {?>
            <script type="text/javascript">
                $(window).load(function()
                {
                    $('#azuriranjeRadnika').modal('show');
                });
            </script>
            <div id="azuriranjeRadnika" class="modal fade" tabindex="-1" role="dialog" data-backdrop="static" data-keyboard="false" aria-labelledby="myModalLabel" aria-hidden="true">
                @include('modals/azuriranje')
    <?php } else



        {
            $data=DB::table('ulazna_stavka')->where('ulazna_stavka_id', 1)->first();
        }
    ?>

<div class="wrapper">

   <!--   Creative Tim Branding   -->
    <a href="#">
         <div class="logo-container full-screen-table-demo">
            <div class="logo">
                <img src="/table/assets/img/new_logo.png">
            </div>
            <div class="brand">
                <i class="fa fa-heart"><b>JBPSoft</b></i>
            </div>
        </div>
    </a>  
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-md-offset-1">               

                <div class="fresh-table full-color-orange">
                    <div class="toolbar">
                        <button id="alertBtn" class="btn btn-default">{{ AdminOptions::lang(33, Session::get('jezik.AdminOptions::server()')) }}</button>
                    </div>
                    <table id="fresh-table" class="table" style="table-layout: fixed; width: 100%;">
                        <thead>
                            <th style="padding: 0px;">#</th>
                            <th>{{ AdminOptions::lang(16, Session::get('jezik.AdminOptions::server()')) }}</th>
                            <th>{{ AdminOptions::lang(18, Session::get('jezik.AdminOptions::server()')) }}</th>
                            <th>{{ AdminOptions::lang(19, Session::get('jezik.AdminOptions::server()')) }}</th>
                            <th>{{ AdminOptions::lang(20, Session::get('jezik.AdminOptions::server()')) }}</th>
                            <th>{{ AdminOptions::lang(23, Session::get('jezik.AdminOptions::server()')) }}</th>
                            <th>{{ AdminOptions::lang(22, Session::get('jezik.AdminOptions::server()')) }}</th>      
                    	    <th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{{ AdminOptions::lang(25, Session::get('jezik.AdminOptions::server()')) }}</th>
                            <th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{{ AdminOptions::lang(21, Session::get('jezik.AdminOptions::server()')) }}</th>
                            <th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{{ AdminOptions::lang(40, Session::get('jezik.AdminOptions::server()')) }}</th>
                        </thead>
                        <tbody>                        
                            @foreach((DB::table('ulazna_stavka')->get()) as $key => $ulazna_stavka)
                            <tr> 
                              <td style="padding: 0px;">{{ $key + 1 }}</td>
                              <td>{{ $ulazna_stavka->ulazna_stavka }}</td>
                              <td>{{ $ulazna_stavka->ulazna_stavka_nabavna_cena }}</td>
                              <td>{{ $ulazna_stavka->ulazna_stavka_porez }}%</td>
                              <td>{{ $ulazna_stavka->ulazna_stavka_zaracunata_marza }}%</td>
                              <td>{{ $ulazna_stavka->ulazna_stavka_nabavna_cena * (($ulazna_stavka->ulazna_stavka_porez + $ulazna_stavka->ulazna_stavka_zaracunata_marza)/100 + 1) }}</td>
                              <td>{{ $ulazna_stavka->ulazna_stavka_dobavljac }}</td>
                        <!--- EDIT  --->
                                <td><center>
                                    <a href="{{ AdminOptions::base_url() }}admin-find-item/{{ $ulazna_stavka->ulazna_stavka_id }}" title="{{ AdminOptions::lang(66, Session::get('jezik.AdminOptions::server()')) }}">             
                                        <i class="fa fa-edit fa-clickable" 
                                            style="color:#00ff00;"                
                                            aria-hidden="true">
                                        </i>                                            
                                    </a></center>
                                </td>

                        <!--- DELETE  --->
                              <td><center>
                                <a href="{{ AdminOptions::base_url()}}admin-delete-item/{{ $ulazna_stavka->ulazna_stavka_id }}" 
                                title="{{ AdminOptions::lang(67, Session::get('jezik.AdminOptions::server()')) }}"  
                                onclick="return confirm('{{ AdminOptions::lang(44, Session::get('jezik.AdminOptions::server()')) }}');">
                                    <i class="fa fa-times" 
                                    style="color:red;"                                
                                    aria-hidden="true">
                                    </i>
                                </a></center>
                              </td>
                             
                        <!--- MARK  --->       
                              <td><center>
                                <a href="#" title="{{ AdminOptions::lang(68, Session::get('jezik.AdminOptions::server()')) }}">
                                    <i class="fa fa-heart-o" 
                                    style="color:yellow;" 
                                    id="marked" 
                                    data-id="{{ $ulazna_stavka->ulazna_stavka_id }}"
                                    aria-hidden="true">       
                                    </i>
                                </a></center>
                              </td>                             
                            
                            </tr>
                            @endforeach  
                                 
                        </tbody>
                    </table>
                </div>                
            </div>
        </div>
    </div>
</div>

<div class="fixed-plugin" style="top: 300px">
    <div class="dropdown">
        <a href="#" data-toggle="dropdown">
        <i class="fa fa-cog fa-2x"> </i>
        </a>
        <ul class="dropdown-menu">
            <li class="header-title">{{ AdminOptions::lang(34, Session::get('jezik.AdminOptions::server()')) }}</li>
            <li class="adjustments-line">
                <a href="javascript:void(0)" class="switch-trigger">
                    <p>{{ AdminOptions::lang(39, Session::get('jezik.AdminOptions::server()')) }}</p>
                    <div class="switch"
                        data-on-label="ON"
                        data-off-label="OFF">
                        <input type="checkbox" checked data-target="section-header" data-type="parallax"/>
                    </div>
                    <div class="clearfix"></div>
                </a>
            </li>
            <li class="adjustments-line">
                <a href="javascript:void(0)" class="switch-trigger">
                    <p>{{ AdminOptions::lang(36, Session::get('jezik.AdminOptions::server()')) }}</p>
                    <div class="pull-right">
                        <span class="badge filter badge-blue" data-color="blue"></span>
                        <span class="badge filter badge-azure" data-color="azure"></span>
                        <span class="badge filter badge-green" data-color="green"></span>
                        <span class="badge filter badge-orange active" data-color="orange"></span>
                        <span class="badge filter badge-red" data-color="red"></span>
                    </div>
                    <div class="clearfix"></div>
                </a>
            </li>
            <li class="header-title">{{ AdminOptions::lang(37, Session::get('jezik.AdminOptions::server()')) }}</li>
            <li class="active">
                <a class="img-holder" href="/admin-mala">
                    <img src="/table/assets/img/compact.jpg">
                    <h5>{{ AdminOptions::lang(38, Session::get('jezik.AdminOptions::server()')) }}</h5>
                </a>
            </li>
            <li>
                <a class="img-holder" href="/admin-velika">
                    <img src="/table/assets/img/full.jpg">
                    <h5>{{ AdminOptions::lang(35, Session::get('jezik.AdminOptions::server()')) }}</h5>
                </a>
            </li>
            
        </ul>
    </div>
</div>



   
    </div>
  </div>
</div>








    <script type="text/javascript">
        var $table = $('#fresh-table'),
            $alertBtn = $('#alertBtn'),
            full_screen = false;

        $().ready(function(){
            $table.bootstrapTable({
                toolbar: ".toolbar",

                showRefresh: true,
                search: true,
                showToggle: true,
                showColumns: true,
                pagination: true,
                striped: true,
                pageSize: 8,
                pageList: [8,10,25,50,100],

                formatShowingRows: function(pageFrom, pageTo, totalRows){
                    //do nothing here, we don't want to show the text "showing x of y from..."
                },
                formatRecordsPerPage: function(pageNumber){
                    return pageNumber + " rows visible";
                },
                icons: {
                    refresh: 'fa fa-refresh',
                    toggle: 'fa fa-th-list',
                    columns: 'fa fa-columns',
                    detailOpen: 'fa fa-plus-circle',
                    detailClose: 'fa fa-minus-circle'
                }
            });



            $(window).resize(function () {
                $table.bootstrapTable('resetView');
            });


            window.operateEvents = {
                'click .like': function (e, value, row, index) {
                    alert('You click like icon, row: ' + JSON.stringify(row));
                    console.log(value, row, index);
                },
                'click .edit': function (e, value, row, index) {
                    alert('You click edit icon, row: ' + JSON.stringify(row));
                    console.log(value, row, index);
                },
                'click .remove': function (e, value, row, index) {
                    $table.bootstrapTable('remove', {
                        field: 'id',
                        values: [row.id]
                    });

                }
            };

            $alertBtn.click(function () {
                window.location.href = '/admin-welcome';
            });

            $(".pom").click(function(){
            $("#azuriranjeRadnika").modal();
            var x = $(this).data('id');
            });



        }); 
           

        function operateFormatter(value, row, index) {
            return [
                '<a rel="tooltip" title="{{ AdminOptions::lang(40, Session::get('jezik.AdminOptions::server()')) }}" class="table-action like" href="javascript:void(0)" title="like">',
                    '<i class="fa fa-heart"></i>',
                '</a>',
                '<a rel="tooltip" title="{{ AdminOptions::lang(25, Session::get('jezik.AdminOptions::server()')) }}" class="table-action edit" href="javascript:void(0)" title="edit">',
                    '<i class="fa fa-edit"></i>',
                '</a>',
                '<a rel="tooltip" title="{{ AdminOptions::lang(21, Session::get('jezik.AdminOptions::server()')) }}" class="table-action remove" href="javascript:void(0)" title="remove">',
                    '<i class="fa fa-remove"></i>',
                '</a>'
            ].join('');
        }



        $('#sharrreTitle').sharrre({
                share: {
                twitter: true,
                facebook: true,
                googlePlus: true
                },
                template: "",
                enableHover: false,
                enableTracking: true,
                render: function(api, options){

                $("#sharrreTitle").html('Thank you for ' + options.total + ' shares!');
                },
                enableTracking: true,
                url: 'http://demos.creative-tim.com/table'
            });

            $('#twitter').sharrre({
              share: {
                twitter: true
              },
              enableHover: false,
              enableTracking: true,
              buttons: { twitter: {via: 'CreativeTim'}},
              click: function(api, options){
                api.simulateClick();
                api.openPopup('twitter');
              },
              template: '<i class="fa fa-twitter"></i> {total}',
              url: 'http://demos.creative-tim.com/table'
            });

            $('#facebook').sharrre({
              share: {
                facebook: true
              },
              enableHover: false,
              enableTracking: true,
              click: function(api, options){
                api.simulateClick();
                api.openPopup('facebook');
              },
              template: '<i class="fa fa-facebook-square"></i> {total}',
              url: 'http://demos.creative-tim.com/table'
            });
    </script>
</body>
</html>
