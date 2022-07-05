
## About Me

Hussein El-Hewehii, PHP Full-Stack Developer with 3 years experience:

- [LinkedIn](https://www.linkedin.com/in/hussein-el-hewehii-768b5a113/).

## Project Description

A Web Page Application That Represents Organizations' Structure Including (Divisions, Departments, Team & Employees)
- Employees : 
    -   Employee can belong to multiple divisions, departments and teams as a leader or a normal member 
    -   One person can be leader of one or more organization (division/ department/ team) and a normal employee of another organization at the same time (Ex: One employee can be leader of Switzerland division, leader of Vienna department, member of Marketing ZU team at the same time)
    -   But one person can not be a leader and a normal employee of the same organization (Ex: One employee can not be leader of Sales ZU team and an employee of the Sales ZU team at the same time)

- Division:
    - Every division has one division leader
    - A division can have multiple department and/or multiple employees under it

- Department:
    - Every department has a department leader
    - A department can have multiple team and/or multiple employees under it
    - A department belongs to only one division

- Team:
    - Every team has a team leader
    - A team can have multiple employees under it
    - A team belongs to only one department


## Technologies

### Back-End

- **[PHP 7.4](https://www.php.net/docs.php)**
- **[Laravel 8](https://laravel.com/docs/8.x/installation)**

### Front-End

- **HTML**
- **CSS**
- **[Bootstrap 5](https://getbootstrap.com/)**
- **[JavaScript](https://www.javascript.com/)**
- **[VueJs 3](https://vuejs.org/)**
- **[Vuex](https://vuex.vuejs.org/)**

### Database

- **[SQLite](https://www.sqlite.org/docs.html)**


## Prerequisites

- **[PHP >= 7.3](https://www.php.net/downloads.php)**
- **[Composer](https://getcomposer.org/)**
- **[Node](https://nodejs.org/en/download/)**


## Installation


> Download Project 

``` bash
git clone https://github.com/Husseinhewehii/PhoneNumber.git
```

> Move To Project Directory

``` bash
cd PhoneNumber
```

> Install Composer Packages

``` bash
composer install
```

> Install Node Packages

``` bash
npm install
```

> Compile Node Packages

``` bash
npm run dev
```

> Create .env file

``` bash
cp .env.example .env
```

> Generate Key

``` bash
php artisan key:generate
```

> Create .env.testing file

``` bash
cp .env .env.testing
```

> Configure .env file

``` bash
APP_URL=http://localhost:8000
MIX_APP_URL="${APP_URL}"

DB_CONNECTION=sqlite
#DB_HOST=127.0.0.1
#DB_PORT=3306
#DB_DATABASE=laravel
#DB_USERNAME=root
#DB_PASSWORD=
```

> Configure .env.testing file

``` bash
DB_CONNECTION=sqlite
#DB_HOST=127.0.0.1
#DB_PORT=3306
DB_DATABASE=testing_database
#DB_USERNAME=root
#DB_PASSWORD=
```


> You Don't Need to Create Or Migrate Database Cause I allowed the Database files to be uploaded to Github
but you can seed. 

``` bash
php artisan db:seed
```

> Run On Local Machine

``` bash
php artisan serve
```