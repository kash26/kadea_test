<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;

class MoviesController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request, $page = null)
    {
        if (isset($page)) {
            $popularMovies = Http::timeout(20000)
            ->withToken(config('services.tmdb.token'))
            ->withQueryParameters(['page' => $page,])
            // ->get('https://api.themoviedb.org/3/trending/all/day?language=en-US')
            ->get('https://api.themoviedb.org/3/movie/popular')
            ->json();
        } else {
            $popularMovies = Http::timeout(20000)
            ->withToken(config('services.tmdb.token'))
            ->withQueryParameters(['page' => 1,])
            // ->get('https://api.themoviedb.org/3/trending/all/day?language=en-US')
            ->get('https://api.themoviedb.org/3/movie/popular')
            ->json();
        }

        $genresArray = Http::timeout(20000)
            ->withToken(config('services.tmdb.token'))
            ->get('https://api.themoviedb.org/3/genre/movie/list')
            ->json()['genres'];

        $genres = collect($genresArray)->mapWithKeys(function ($genre) {
            return [$genre['id'] => $genre['name']];
        });

        // dd($popularMovies);

        $num_pages = $popularMovies['total_pages'];

        return view('movies.index', [
            'popularMovies' => $popularMovies,
            'genres' => $genres,
            'num_pages' => $num_pages,
            'page' => $page,
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $movie = Http::timeout(20000)
            ->withToken(config('services.tmdb.token'))
            // ->paginate(10)
            // ->get('https://api.themoviedb.org/3/trending/all/day?language=en-US')
            ->get('https://api.themoviedb.org/3/movie/'.$id)
            ->json();

        // dump($movie);

        return view('movies.show', [
            'movie' => $movie
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
