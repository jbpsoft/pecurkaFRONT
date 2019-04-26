<?php	
	class Radnici extends Eloquent {

    protected $guarded = [];
	
	protected $table = 'radnici';

    protected $primaryKey = 'id';

    public function radnici(){

        return $this->belongsTo('Ovlascenja');
    }
}