<?php	
	class Ovlascenja extends Eloquent {

    protected $guarded = [];
	
	protected $table = 'ovlascenja';

    protected $primaryKey = 'id';

    public function ovlascenja(){

        return $this->hasMany('Radnici');
    }
}