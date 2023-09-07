
<x-app-layout>

    @section('content')
    <div class="container mx-auto px-4 pt-16">
        <div class="popular-movies">
            <div class="uppercase tracking-wider text-orange-500 text-lg font-semibold">Latest</div>
            <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-5 gap-8">
                {{-- @foreach ($popularMovies['results'] as $movie) --}}
                @foreach ($popularMovies as $movie)
                    {{-- <x-movie-card :movie="$movie" :genres="$genres" /> --}}
                    <div class="mt-2 mb-6">
                        <a href="{{ route('movies.show', $movie['id']) }}">
                            @if (isset($movie['poster_path']))
                                <img src="{{ 'https://image.tmdb.org/t/p/w500/' . $movie['poster_path'] }}" alt=""
                                    class="hover:opacity-75 transition ease-in-out duration-150">
                            @else
                                <span class="text-red-500">L'élément n'existe pas</span>
                            @endif
                        </a>
                        <div class="mt-2">
                            <a href="{{ route('movies.show', $movie['id']) }}" class="mt-2">
                                @if (isset($movie['title']))
                                    <a href="#" class="text-lg mt-2 hover:text-gray:300">{{ $movie['title'] }}</a>
                                @else
                                    <span class="text-red-500">L'élément n'existe pas</span>
                                @endif
                                <div class="flex items-center text-gray-400 text-sm mt-1">
                                    @if (isset($movie['vote_average']))
                                        <div class="ml-1">{{ $movie['vote_average'] }}</div>
                                    @else
                                        <span class="text-red-500">L'élément n'existe pas</span>
                                    @endif
                                    <div class="ml-1">|</div>
                                    @if (isset($movie['release_date']))
                                        <div class="ml-1">{{ \Carbon\Carbon::parse($movie['release_date'])->format('M d, Y') }}
                                        </div>
                                    @else
                                        <span class="text-red-500">L'élément n'existe pas</span>
                                    @endif
                                </div>
                                {{-- <div class="text-gray-4">
                                    @if (isset($movie['genre_ids']))
                                        @foreach ($movie['genre_ids'] as $genre)
                                            {{ $genres->get($genre) }} @if (!$loop->last)
                                                ,
                                            @endif
                                        @endforeach
                                    @else
                                        <span class="text-red-500">L'élément n'existe pas</span>
                                    @endif
                                </div> --}}
                            </a>
                        </div>
                    </div>
                    
                @endforeach

            </div>
            <div class="p-4 mt-4 mb-4">
                {{-- <div class="pagination">
                    @for ($i = 1; $i <= min($num_pages, 10); $i++)
                        <a href="{{ route('movies.index', ['page' => $i]) }}"
                            class="pagination-link border p-2 m-2 rounded-lg {{ $i == $page ? 'bg-white text-black' : '' }}">
                            {{ $i }}
                        </a>
                    @endfor
                </div> --}}
            </div>
        </div>

    </div>
    @endsection
</x-app-layout>
