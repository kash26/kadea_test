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
