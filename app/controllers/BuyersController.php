<?php

class BuyersController extends \BaseController {

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{
		//
	}


	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */
	public function create()
	{
		//
	}


	/**
	 * Store a newly created resource in storage.
	 *
	 * @return Response
	 */
	public function newBuyer(){
		$data = new Buyers;
		$data->naziv = $_POST['NoviKupac'];
		$data->grad = $_POST['Grad'];
		$data->ulica = $_POST['Ulica'];
		$data->broj = $_POST['Broj'];
		$data->PIB = $_POST['Pib'];
		$data->racun = $_POST['Racun'];		
		$data->save();
		$data->kupac_id = $data->id;
		$data->update();
	      	
			Session::flash('success', 'Uspešno ste izvršili unos novog kupca!');
	      	return Redirect::to('/admin-welcome');
	}


	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($id=1){
		
		return View::make('listOfBuyers');
	}


	/**
	 * Show the form for editing the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function edit($id)
	{
		//
	}


	/**
	 * Update the specified resource in storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function updateBuyer($id)
	{
		//
	}


	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy($id)
	{
		//
	}


}
