# 💜 Animu 💜
A rails web app that helps you create your own anime watch list! Animu provides anime recommendation with detailed description, with features like:

-Create your customized watch lists
-Add and Delete anime from lists
-Information about anime series and characters

Have fun and find your next anime series to binge!

![Screenshot](Animu.png)
<br>
App home: https://animu-japan.herokuapp.com/


## Getting Started
### Setup

Install gems
```
bundle install
```
Install JS packages
```
yarn install
```

### ENV Variables
Create `.env` file
```
touch .env
```
Inside `.env`, set these variables. For any APIs, see group Slack channel.
```
CLOUDINARY_URL=your_own_cloudinary_url_key
```

### DB Setup
```
rails db:create
rails db:migrate
rails db:seed
```

### Run a server
```
rails s
```

## Built With
- [Rails 6](https://guides.rubyonrails.org/) - Backend / Front-end
- [Stimulus JS](https://stimulus.hotwired.dev/) - Front-end JS
- [Heroku](https://heroku.com/) - Deployment
- [PostgreSQL](https://www.postgresql.org/) - Database
- [Bootstrap](https://getbootstrap.com/) — Styling
- [Sass] (https://github.com/rails/sass-rails) -Styling
- [Figma](https://www.figma.com) — Prototyping

## Acknowledgements
Inspired by [MyAnimeList](https://myanimelist.net/), using an unofficial MyAnimeList API, [Jikan](https://jikan.docs.apiary.io/#).

Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates), created by the [Le Wagon coding bootcamp](https://www.lewagon.com) team.

## Team Members
- [Vivian Bow](https://github.com/VivianBao)

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.
