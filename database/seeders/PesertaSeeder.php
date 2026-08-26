<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Peserta;

class PesertaSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // insert
        // Peserta::create([
        //     'name'  => 'Reza Ibrahim',
        //     'email' => 'ribrahim50@mail.com',
        //     'age'   => 27,
        //     'address' => 'Bekasi',
        // ]);
        Peserta::factory(50)->create();
    }
}
