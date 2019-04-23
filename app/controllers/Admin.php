<?php 
class Admin extends Controller{

    function admin_login_store() {

        $username=Input::get('username');
        $password=Input::get('password');
        $username=addslashes($username);
        $password=addslashes($password);
    //    $password=md5($password);

        $validator = Validator::make(array('username'=>$username,'password'=>$password),
        array(
            'username' => 'required|between:3,20',
            'password' => 'required|between:3,20|alpha_num|exists:lozinke,password,login,'.$username
        ),
        array(
            'required' => 'Niste popunili polje!',
            'between' => 'Broj karaktera mora biti između 3 i 20!',
            'alpha_num' => 'Polje sme sadržati samo slova i cifre!',
            'exists' => 'Uneli ste pogrešno korisničko ime ili lozinku!'
        ));

        if($validator->fails()){
            return Redirect::to(AdminOptions::base_url().'admin-login')->withInput()->withErrors($validator->messages());
        }
        else {

            $lozinke_id=DB::table('lozinke')->where(array('login'=>addslashes($username),'password'=>addslashes($password)))->pluck('lozinke_id');
            Session::put('log_sesija'.AdminOptions::server(),intval($lozinke_id));


            $filename = "files/logs/users/administrators.txt";
            $myfile = fopen($filename, "r");
            $size = filesize($filename);
            $rows = explode("\n",fread($myfile,$size));
            fclose($myfile);

            $count = count($rows);
            if($size > 500000000){
                unlink($filename);
                for($i=$count/2;$i<=$count;$i++){
                    $myfile = fopen($filename, "a");
                    $line = $rows[$i];
                    fwrite($myfile, $line);
                    fclose($myfile);  
                }
            }

           /* if(in_array(AdminOptions::web_options(130),array(0,1))){
                return Redirect::to(AdminOptions::base_url().'admin');
            }else{
                return Redirect::to(AdminOptions::base_url().'admin/b2b');
            }*/
            return Redirect::to(AdminOptions::base_url().'admin-welcome');
        }
    }

    function logout($confirm=null){
        Session::forget('log_sesija.AdminOptions::server()');
        return Redirect::to(AdminOptions::base_url().'admin-login');
    }
}