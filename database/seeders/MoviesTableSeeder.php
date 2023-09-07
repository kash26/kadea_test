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

        $movies = Http::timeout(100000)
            ->withToken(config('services.tmdb.token'))
            ->get('https://api.themoviedb.org/3/movie/popular')
            ->json()['results'];

        

        for ($i = 1; $i <= 50; $i++) {
            foreach ($movies as $movie) {
                DB::table('movies')->insertOrIgnore([
                    'title' => $movie['title'],
                    'overview' => $movie['overview'],
                    'poster_path' => $movie['poster_path'],
                    'release_date' => $movie['release_date'],
                    'vote_average' => $movie['vote_average'],
                    'created_at' => now(),
                    'updated_at' => now(),
                    'adult' => $movie['adult'],
                    'backdrop_path' => $movie['backdrop_path'],
                    'genre_ids' => json_encode($movie['genre_ids']),
                    'id' => $movie['id'],
                    'original_language' => $movie['original_language'],
                    'original_title' => $movie['original_title'],
                    'popularity' => $movie['popularity'],
                    'video' => $movie['video'],
                    'vote_count' => $movie['vote_count'],
                ]);
            }
    
            if ($i === 50) {
                break; // Sortie de la boucle après la dixième itération
            }
        }
    }
}
