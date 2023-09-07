git clone https://github.com/[votre-nom]/projet-films-themoviedb.git

# Test d’évaluation BACK-END

Ce projet est un exemple d'utilisation de l'API des films TheMovieDB avec Laravel, TailwindCSS, Breeze et Livewire.

## Technologies utilisées

* Laravel
* TailwindCSS
* Breeze
* Livewire

## Prérequis

* Composer
* PHP 8.0+
* Une base de données MySQL


## Installation

1. Clonez le dépôt Git :


1. Accédez au répertoire du projet :

cd kadea_final


3. Installez les dépendances :

composer install

Copier et importer la base de données kadea_test.sql dans le dossiers external_resources



1. Initialisez la base de données :

php artisan migrate


7. Seedez la base de données avec des données de démonstration :

php artisan db:seed


## Utilisation

### Congiguration du fichier .env  

DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=kadea_test
DB_USERNAME=root
DB_PASSWORD=

TMDB_TOKEN="eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIyMjJkNjNjZGRjMDY2ZDk5ZWQzZTgwNmQzMjY3MThjYSIsInN1YiI6IjYyNGVhNTRhYjc2Y2JiMDA2ODIzODc4YSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.zuuBq1c63XpADl8SQ_c62hezeus7VibE1w5Da5UdYyo"

### Pour démarrer le serveur de développement, exécutez la commande suivante :

php artisan serve

php artisan db:seed --class=MoviesTableSeeder


Le serveur sera accessible sur http://localhost:8000

Identifiants deconnexion:

isaackashiya@gmai.com
12345678



Test d’évaluation BACK-END


Design Application films
https://dribbble.com/shots/5684409-Cinema-Mobile


Revisions des comcepts Livewire
https://laravel-livewire.com/docs



https://laracasts.com/discuss/channels/laravel/how-to-make-breeze-redirect-to-home-or-custom-page-after-registration-and-login


https://stackoverflow.com/questions/64406855/laravel-8-class-database-seeders-db-not-found


https://stackoverflow.com/questions/27064953/how-can-i-paginate-an-array-of-objects-in-laravel


https://laravel.com/docs/10.x/http-client

https://stackoverflow.com/questions/29908836/routing-to-controller-with-optional-parameters



Docker Desktop - Windows Hypervisor is not present### Documentation sur la recherche


Design Application films
https://dribbble.com/shots/5684409-Cinema-Mobile


Revisions des comcepts Livewire
https://laravel-livewire.com/docs



https://laracasts.com/discuss/channels/laravel/how-to-make-breeze-redirect-to-home-or-custom-page-after-registration-and-login


https://stackoverflow.com/questions/64406855/laravel-8-class-database-seeders-db-not-found


https://stackoverflow.com/questions/27064953/how-can-i-paginate-an-array-of-objects-in-laravel


https://laravel.com/docs/10.x/http-client

https://stackoverflow.com/questions/29908836/routing-to-controller-with-optional-parameters



Docker Desktop - Windows Hypervisor is not present