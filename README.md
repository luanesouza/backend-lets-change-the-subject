## Let's Change the Subject -- API

Let's change the subject is an app that facilitates conversations big and small between friends, coworkers, partners and strangers by suggesting conversation prompts.

***
## Table of contents
- [Getting Started](#getting-started)
    - [Node Installation on OS X](#node-installation-on-os-x)
    - [Node Installation on Linux](#node-installation-on-linux)
    - [Node Installation on Windows](#node-installation-on-windows)
- [Installation](#installation)
- [Start and Watch](#start-and-watch)
- [Languages and tools](#languages-and-tools)
- [Contributing](#contributing)
    - [Known Issues](#known-issues)
- [License](#license)

## Getting Started
For development, you will only need Ruby on Rails and Postgres, which depends on Homebrew and Ruby. 

#### Node installation on OS X

You will need to use a Terminal. On OS X, you can find the default terminal in
`/Applications/Utilities/Terminal.app`.

1. Install [Homebrew](http://brew.sh/):

    ```
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    ```

2. Install [Ruby](https://www.ruby-lang.org/en/):
```
    brew install rbenv ruby-build
    # Add rbenv to bash so that it loads every time you open a terminal
    echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.bash_profile
    source ~/.bash_profile

    # Install Ruby
    rbenv install 2.7.1
    rbenv global 2.7.1
    ruby -v
```
3. Install [Rails](https://rubyonrails.org/)
```
gem install rails -v 6.0.2.2
```

4. Install [PostgreSQL](https://www.postgresql.org/)
```
brew install postgresql
```

#### Node installation on Linux

Go on [official Rails website](https://gorails.com/setup/ubuntu/19.10) & follow the steps.

#### Node installation on Windows

Go on [official Rails website](https://gorails.com/setup/windows/10) & follow the steps.

## Installation

1. Clone the repo and cd into the folder:
```
    $ git clone https://github.com/luanesouza/backend-lets-change-the-subject.git
    $ cd backend-lets-change-the-subject
```
2. Install dependencies (gems)
```
    $ bundle
```
3. Create migrations, migrate and seed:
```
    $ rails db:create
    $ rails db:migrate
    $ rails db:seed
```

## Start and Watch

```
    $ rails s
```
## Languages and Tools

- [Ruby on Rails](https://rubyonrails.org/) 
- [PostgreSQL](https://www.postgresql.org/) - database
- [JWT](https://jwt.io/) - auth web tokens
- [Active Record](https://guides.rubyonrails.org/active_record_basics.html) - Object Relational Mapping system
- [Active Model Serializers](https://github.com/rails-api/active_model_serializers) - serialization

## Contributing
Pull requests are welcome. Please make sure that your PR is [well-scoped](https://www.netlify.com/blog/2020/03/31/how-to-scope-down-prs/).
For major changes, please open an issue first to discuss what you would like to change. 

### Known issues
Visit [issues](https://github.com/luanesouza/backend-lets-change-the-subject/issues) section.

### Contributors
<table>
  <tr>
    <td align="center"><a href="https://github.com/sylwiavargas"><img src="https://avatars2.githubusercontent.com/u/45401242?s=460&u=2efe4366e8a6c7e8732daaaf8373250e7c8cfdd9&v=4" width="200px;" alt=""/><br /><sub><b>Sylwia Vargas</b></sub></a><br /><a href="https://github.com/luanesouza/backend-lets-change-the-subject/commits?author=sylwiavargas" title="Code">💻</a> <a href="https://github.com/sruti/covid19-riskfactors-app/commits/master/README.md" title="Documentation">📖</a> <a href="https://github.com/luanesouza/backend-lets-change-the-subject/issues/created_by/sylwiavargas" title="Bug reports">🐛</a><a href="#ideas-sylwia" title="Ideas, Planning, & Feedback">💡</a></td>
    <td></td>
    <td align="center"><a href="http://sruti.me/"><img src="https://avatars1.githubusercontent.com/u/43556847?s=460&u=f486596a5bfedd9ebd4190c7af9a3d28f0183812&v=4" width="200px;" alt=""/><br /><sub><b>Annie Souza</b></sub></a><br /><a href="#infra-annie" title="Infrastructure (Hosting, Build-Tools, etc)">🚇</a> <a href="https://github.com/luanesouza/backend-lets-change-the-subject/issues?q=is%3Aopen+is%3Aissue+luanesouza" title="Bug reports">🐛</a><a href="#ideas-sruti" title="Ideas, Planning, & Feedback">💡</a></td>
    </tr>
</table>


## License
[MIT](https://choosealicense.com/licenses/mit/)