<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Student>
 */
class StudentFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'nis' => $this->faker->unique()->numerify('######'),
            'nama' => $this->faker->name(),
            'gender' => $this->faker->randomElement(['Laki-laki', 'Perempuan']),
            'nikah' => $this->faker->randomElement(['Menikah', 'Belum Menikah']),
            'tanggal_lahir' => $this->faker->date(),
            'umur' => $this->faker->numberBetween(17, 30),
            'kewarganegaraan' => $this->faker->country(),
            'bahasa' => $this->faker->randomElement(['Indonesia', 'Inggris', 'Jepang']),
            'domisili' => $this->faker->city(),
            'nomor' => $this->faker->numerify('08########'),
            'email' => $this->faker->safeEmail(),
            'tinggi_badan' => $this->faker->numberBetween(150, 190),
            'berat_badan' => $this->faker->numberBetween(45, 90),
            'ukuran_sepatu' => $this->faker->numberBetween(36, 45),
            'agama' => $this->faker->randomElement(['Islam', 'Kristen', 'Hindu', 'Budha']),
            'kelebihan' => $this->faker->sentence(),
            'kekurangan' => $this->faker->sentence(),
            'promosi' => $this->faker->sentence(),
            'tinggal_jp' => $this->faker->randomElement(['Ya', 'Tidak']),
            'keterangan_tinggal_jp' => $this->faker->sentence(),
        ];
    }
}
