
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

- **[PHP 8](https://www.php.net/docs.php)**
- **[Laravel 9](https://laravel.com/docs/9.x/installation)**

### Front-End

- **HTML**
- **CSS**

### Database

- **[MySql](https://www.mysql.com/)**

### DevOps

- **[Docker](https://www.docker.com/)**


## Prerequisites

 # Option 1 (Containerization):
- **[Docker](https://docs.docker.com/engine/install/)**

 # Option 2 (Machine Environment):
- **[PHP >= 8.0](https://www.php.net/downloads.php)**
- **[Composer](https://getcomposer.org/)**


## Option 2 Installation


> Download Project 

``` bash
https: git clone https://github.com/Husseinhewehii/Independesk_task.git
ssh: git clone git@github.com:Husseinhewehii/Independesk_task.git
```

> Move To Project Directory

``` bash
cd git@github.com:Husseinhewehii/Independesk_task.git
```

> Install Composer Packages

``` bash
composer install
```

> Create independesk_task database


You have 2 options for data:
> Import independesk_task.sql to Database
Or
> Use Laravel Seeder
``` bash
php artisan db:seed
```

> Run On Local Machine

``` bash
php artisan serve
```
