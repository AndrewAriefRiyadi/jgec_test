<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\School>
 */
class SchoolFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'nama_sekolah' => $this->faker->company() . ' School',
            'tahun_masuksekolah' => $this->faker->year(),
            'bulan_masuksekolah' => $this->faker->monthName(),
            'status_sekolah' => $this->faker->randomElement(['Masuk', 'Lulus']),
        ];
    }
}
