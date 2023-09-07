<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Http;

class MoviesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // $movies = Http::get('https://api.themoviedb.org/3/movie/popular', [
        //     'api_key' => 'your-api-key',
        // ])->json();

        $movies = Http::timeout(20000)
            ->withToken(config('services.tmdb.token'))
            ->get('https://api.themoviedb.org/3/movie/popular')
            ->json()['results'];

        // foreach ($movies as $movie) {
        //     DB::table('movies')->insert([
        //         'title' => $movie['title'],
        //         'overview' => $movie['overview'],
        //         'poster_path' => $movie['poster_path'],
        //         'release_date' => $movie['release_date'],
        //         'vote_average' => $movie['vote_average'],
        //         'created_at' => now(),
        //         'updated_at' => now(),
        //     ]);
        // }

        $movies = collect($movies)->map(function ($movie) {
            return [
                'id' => $movie['id'],
                'title' => $movie['title'],
                'overview' => $movie['overview'],
                'poster_path' => $movie['poster_path'],
                'release_date' => $movie['release_date'],
                'created_at' => now(),
                'updated_at' => now(),
            ];
        })->values();

        DB::table('movies')->truncate();
        DB::table('movies')->insert($movies->toArray());
    }
}
