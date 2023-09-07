<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Http;

class MoviesController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request, $page = null)
    {
        if (isset($page)) {
            try {
                $data1 = Http::timeout(20000)
                ->withToken(config('services.tmdb.token'))
                ->withQueryParameters(['page' => $page,])
                // ->get('https://api.themoviedb.org/3/trending/all/day?language=en-US')
                ->get('https://api.themoviedb.org/3/movie/popular')
                ->json();
            } catch (Exception $e) {
                $data1 = null;
            }
        } else {
            try {
                $data1 = Http::timeout(20000)
                ->withToken(config('services.tmdb.token'))
                ->withQueryParameters(['page' => 1,])
                // ->get('https://api.themoviedb.org/3/trending/all/day?language=en-US')
                ->get('https://api.themoviedb.org/3/movie/popular')
                ->json();
            } catch (Exception $e) {
                $data1 = null;
            }
        }

        // dd($popularMovies);

        $iterationLimit = 10; 
        $iterationCount = 0; 

        // foreach ($popularMovies as $item) {
        //     $iterationCount++; 
        //     dump($item);

        //     if ($iterationCount === $iterationLimit) {
        //         break;
        //     }
        // }

        $data2 = DB::table('movies')->paginate(10);

        $data3 = [];

        foreach ($data2 as $item) {
            $data2[] = (array) $item;
        }

        
        if (!empty($data1)) {
            $genresArray = Http::timeout(20000)
                ->withToken(config('services.tmdb.token'))
                ->get('https://api.themoviedb.org/3/genre/movie/list')
                ->json()['genres'];
    
            $genres = collect($genresArray)->mapWithKeys(function ($genre) {
                return [$genre['id'] => $genre['name']];
            });
    
            // dd($popularMovies);
    
            $num_pages = $data1['total_pages'];

            return view('movies.index', [
                'popularMovies' => $data1,
                'genres' => $genres,
                'num_pages' => $num_pages,
                'page' => $page,
            ]);
        } else {
            return view('movies.indexv2', [
                'popularMovies' => $data3,
            ]);
        }
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
