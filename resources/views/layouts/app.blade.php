<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="csrf-token" content="{{ csrf_token() }}">

        {{-- <title>{{ config('app.name', 'Laravel') }}</title> --}}

        <!-- Fonts -->
        <link rel="preconnect" href="https://fonts.bunny.net">
        <link href="https://fonts.bunny.net/css?family=figtree:400,500,600&display=swap" rel="stylesheet" />

        <!-- Scripts -->
        @vite(['resources/css/app.css', 'resources/js/app.js'])
        <title>Kadea Test - Movies</title>
        <livewire:styles />
    </head>
    <body  class="font-sans bg-gray-900 text-white">
        <div class="bg-gray-100 dark:bg-gray-900">
            @include('layouts.navigation')

            <!-- Page Heading -->
            {{-- @if (isset($header)) --}}
                <header class="bg-white dark:bg-gray-800 shadow flex flex-col md:flex-row items-center">
                    <div class="max-w-7xl mx-auto py-6 px-4 sm:px-6 lg:px-8">
                        {{-- {{ $header }} --}}
                        <livewire:search-dropdown></livewire:search-dropdown>
                    </div>
                </header>
                {{-- <div class="flex flex-col md:flex-row items-center">
                    <livewire:search-dropdown></livewire:search-dropdown>
                </div> --}}
            {{-- @endif --}}

            <!-- Page Content -->
            <main>
                {{ $slot }}
            </main>
        </div>
        @yield('content')
        <footer class="border border-t border-gray-800 mt-4">
            <div class="container mx-auto text-sm px-4 py-6">
                Powered by <a href="#" class="underline hover:text-gray-300">KASH M.</a>
            </div>
        </footer>
        <livewire:scripts>
        @yield('scripts')
    </body>
</html>
