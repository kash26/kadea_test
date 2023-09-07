<x-app-layout>
    {{-- @extends('layouts.main') --}}

    @section('content')
    <div class="container mx-auto px-4 pt-16">
        <div class="popular-movies">
            <div class="uppercase tracking-wider text-orange-500 text-lg font-semibold">Latest</div>
            <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-5 gap-8">
                @foreach ($popularMovies['results'] as $movie)
                    {{-- <x-movie-card :movie="$movie" :genres="$genres" /> --}}
                    <div class="mt-2 mb-6">
                        <a href="{{ route('movies.show', $movie['id']) }}">
                            <img src="{{ 'https://image.tmdb.org/t/p/w500/' . $movie['poster_path'] }}" alt=""
                                class="hover:opacity-75 transition ease-in-out duration-150">
                        </a>
                        <div class="mt-2">
                            <a href="{{ route('movies.show', $movie['id']) }}" class="mt-2">
                                {{-- <a href="#" class="text-lg mt-2 hover:text-gray:300">{{ $movie["original_name"] }}</a> --}}
                                <a href="#" class="text-lg mt-2 hover:text-gray:300">{{ $movie['title'] }}</a>
                                {{-- <a href="#" class="text-lg mt-2 hover:text-gray:300">{{ $movie[0]['name'] }}</a> --}}
                                <div class="flex items-center text-gray-400 text-sm mt-1">
                                    <div class="ml-1">{{ $movie['vote_average'] }}</div>
                                    <div class="ml-1">|</div>
                                    <div class="ml-1">{{ \Carbon\Carbon::parse($movie['release_date'])->format('M d, Y') }}
                                    </div>
                                </div>
                                <div class="text-gray-4">
                                    @foreach ($movie['genre_ids'] as $genre)
                                        {{ $genres->get($genre) }} @if (!$loop->last)
                                            ,
                                        @endif
                                    @endforeach
                                </div>
                            </a>
                        </div>
                    </div>
                    
                @endforeach
                {{-- {{ $popularMovies->links() }} --}}
                {{-- <div class="border p-4">
                    <div class="pagination">
                        <a href="#" class="pagination-previous disabled">&lt;</a>
                        <a href="#" class="pagination-link is-current border p-2 rounded-lg">1</a>
                        <a href="#" class="pagination-link border p-2 rounded-lg">2</a>
                        <a href="#" class="pagination-link border p-2 rounded-lg">3</a>
                        <span class="pagination-ellipsis">…</span>
                        <a href="#" class="pagination-link border p-2 rounded-lg">8</a>
                        <a href="#" class="pagination-link border p-2 rounded-lg">9</a>
                        <a href="#" class="pagination-link border p-2 rounded-lg">10</a>
                        <a href="#" class="pagination-next">&gt;</a>
                    </div>
                </div> --}}

            </div>
            <div class="p-4 mt-4 mb-4">
                <div class="pagination">
                    @for ($i = 1; $i <= min($num_pages, 10); $i++)
                        <a href="{{ route('movies.index', ['page' => $i]) }}"
                            class="pagination-link border p-2 m-2 rounded-lg {{ $i == $page ? 'bg-white text-black' : '' }}">
                            {{ $i }}
                        </a>
                    @endfor
                </div>
            </div>
        </div>

    </div>
@endsection
</x-app-layout>
