<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 dark:text-gray-200 leading-tight">
            {{ __('Dashboard') }}
        </h2>
    </x-slot>

    {{-- @foreach ($popularMovies['results'] as $movie)
                    <x-movie-card :movie="$movie" :genres="$genres" />
                @endforeach --}}
</x-app-layout>
