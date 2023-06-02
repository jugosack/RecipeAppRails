# 📗 Table of Contents

- [📖 About the Project](#[project])
- [Deployment](#deployment)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
- [💻 Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Setup](#setup)
  - [Available Scripts](#available-scripts)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgments)
- [📝 License](#license)


# Recipe App Rails


**Recipe App Rails** is web app that allow users to add food and create recipes, the app is built with Ruby on Rails and has a user authentication and an authorization system.

# Deployment

[Recipe App Rails](https://recipe-app-5.onrender.com) is deployed at this [link](https://recipe-app-5.onrender.com)

## Built With

### Tech Stack 

<ul>
  <li><a href="https://www.ruby-lang.org/en/news/2022/11/24/ruby-3-1-3-released/">Ruby 3.1</a></li>
  <li><a href="https://rubyonrails.org/">Ruby on Rails 7</a></li>
  <li><a href="https://www.postgresql.org/">PostgreSQL 15</a></li>
</ul>

### Key Features

- User registration system (using Devise gem)
- User authorization system to manage permissions and access control (using CanCanCan gem)

## Getting Started 

> To get a local copy up and running follow these simple steps.

### Prerequisites

  - <a href="https://www.ruby-lang.org/en/news/2022/11/24/ruby-3-1-3-released/">Ruby</a>
  - <a href="https://rubyonrails.org/">Ruby on Rails</a>
  - <a href="https://www.postgresql.org/">PostgreSQL</a>
  - any code editor

### Setup

To setup the project follow the steps:

1. Clone this project using Git Bash: 
    ``` 
    git clone git@github.com:jugosack/RecipeAppRails.git
    ```
  
2. Inside the project directory, install the project's dependencies
    ```
    bundle install
    ``` 

3. Setup the app's database
    ```
    rails db:setup
    ``` 


### Available Scripts

In the project directory, you can run:

- ```
  rails server
  ```
  Runs the app server

- ```
  rubocop
  ```
  Launches the test runner.

## Authors

👤 **Jugoslav Achkoski**

- GitHub: [@github](https://github.com/jugosack)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/jugoslavachkoski/)
- Twitter: [twitter](https://twitter.com/Jugoslav_A)

👤 **Lukman Abdulkarim**

- GitHub: [@Lukman](https://github.com/lukman155)
- Twitter: [@Luk, A man](https://twitter.com/lukmanabdulka18)
- LinkedIn: [Lukman Abdulkarim](https://www.linkedin.com/in/lukmanbaba/)

## Future Feature

- Implement user engagement features (likes, comments and ratings)

## Contributing 

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

## Show your support <a name="support"></a>

If you like this project, please give it a star!

## Acknowledgments 

- Microverse 

## License 

This project is [MIT](./MIT.md) licensed.