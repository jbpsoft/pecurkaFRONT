<?php
	class Buyers extends Eloquent {

    protected $guarded = [];
	
	protected $table = 'kupci';

    protected $primaryKey = 'id';

    public static function kupac($id){

    	$data = DB::table('kupci')->where('id', $id)->first();
    	return $data;
    }

    public static function kupci(){

    	$data = DB::table('kupci')->get();
    	return $data;
    }
}	