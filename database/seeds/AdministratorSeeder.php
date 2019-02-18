<?php

use Illuminate\Database\Seeder;

class AdministratorSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $administrator = new \App\User;
        $administrator->username = "administrator";
        $administrator->name = "Site Administrator";
        $administrator->email = "administrator@larashop.com";
        $administrator->roles = json_encode(["admin"]);
        $administrator->password = \Hash::make("larashop");
        $administrator->avatar = "saat-ini-tidak-ada-file.png";
        $administrator->address = "Sarmili, Bintaro, Tanggerang selatan";
        $administrator->phone = "081255035199";

        $administrator->save();

        $this->command->info("User Admin Berhasil Di insert");

    }
}
