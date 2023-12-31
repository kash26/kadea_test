<x-app-layout>
{{-- @extends('layouts.main') --}}

@section('content')

<div class="movie-info border-b border-gray-800">
    <div class="container mx-auto px-4 py-16 flex flex-col md:flex-row">
        <img src="{{ 'https://image.tmdb.org/t/p/w500/'.$movie['poster_path'] }}" alt="" class="w-96">
        <div class="ml-24">
            <h2 class="text-4xl mt-4 md:mt-0 font-semibold">{{ $movie['title'] }}</h2>
            <div class="flex flex-wrap items-center text-gray-400 text-sm">
                <svg class="fill-current text-orange-500 w-4" viewBox="0 0 24 24">
                    <g data-name="Layer 2">
                        <path
                            d="M17.56 21a1 1 0 01-.46-.11L12 18.22l-5.1 2.67a1 1 0 01-1.45-1.06l1-5.63-4.12-4a1 1 0 01-.25-1 1 1 0 01.81-.68l5.7-.83 2.51-5.13a1 1 0 011.8 0l2.54 5.12 5.7.83a1 1 0 01.81.68 1 1 0 01-.25 1l-4.12 4 1 5.63a1 1 0 01-.4 1 1 1 0 01-.62.18z"
                            data-name="star" />
                    </g>
                </svg>
                <span class="ml-1">{{ $movie['vote_average'] }}</span>
                <span class="mx-2">|</span>
                <span>{{ \Carbon\Carbon::parse($movie['release_date'])->format('M d, Y') }}</span>
                <span class="mx-2">|</span>
                <span>
                    @foreach ($movie['genres'] as $genre)
                    {{ $genre['name'] }} @if (!$loop->last), @endif
                    @endforeach
                </span>
            </div>
            <p class="text-gray-300 mt-8">
                {{ $movie['overview'] }}
            </p>

            <p class="text-2xl mt-2">
                <a href="{{ 'https://image.tmdb.org/t/p/w500/'.$movie['poster_path'] }}">{{
                    'https://image.tmdb.org/t/p/w500/'.$movie['poster_path'] }}</a>
            </p>

            <div class="mt-12">
                <button
                    class="flex items-center bg-orange-500 text-gray-900 rounded font-semibold px-5 py-4 hover:bg-orange-600 transition ease-in-out duration-150">
                    <span class="ml-2">Edit movie</span>
                </button>
            </div>
        </div>
    </div>
</div>


@endsection
</x-app-layout>