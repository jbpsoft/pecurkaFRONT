<?php

class CrudController extends \BaseController {

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
	public function store()
	{
		$data = new Ulazna_stavka;
		$data->ulazna_stavka = Input::get('NovaStavka');
		$data->ulazna_stavka_nabavna_cena = Input::get('NabavnaCena');
		$data->ulazna_stavka_porez = Input::get('Porez');
		$data->ulazna_stavka_zaracunata_marza = Input::get('Marza');
		$data->ulazna_stavka_dobavljac = Input::get('Dobavljac');
		$data->save();

		return Redirect::to("/admin-mala");

	}



	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($id)
	{
		//
	}


	/**
	 * Show the form for editing the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function edit($id)
	{
		
	}


	/**
	 * Update the specified resource in storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function update($id)
	{
		$data = Ulazna_stavka::find($id);
		if ($_POST['stavka']) {
			$data->ulazna_stavka = $_POST['stavka'];
		}
		if ($_POST['nabavna_cena']) {
			$data->ulazna_stavka_nabavna_cena = $_POST['nabavna_cena'];
		}
		if ($_POST['porez']) {
			$data->ulazna_stavka_porez = $_POST['porez'];
		}
		if ($_POST['marza']) {
			$data->ulazna_stavka_zaracunata_marza = $_POST['marza'];
		}
		if ($_POST['dobavljac']) {
			$data->ulazna_stavka_dobavljac = $_POST['dobavljac'];
		}
		$data->update();

		return View::make('litleTable');
	}


	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy($id)
	{	
		$item = DB::table('ulazna_stavka')->where('ulazna_stavka_id', $id)->delete();
		return View::make('litleTable');
	}

	public function finding($id)
	{
		$data = Ulazna_stavka::find($id);		
		return View::make("litleTable", array('data'=> $data, 'pom' => 0));
	}



}
