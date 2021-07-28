# Spotify

Download album covers from Spotify.

## About

The main goal is to download all album covers from artists and bands in high from Spotify.

## Built with

- [Ruby](https://www.ruby-lang.org/en/)

## Installation

Use the APT package manager to install Ruby.

```sh
apt install ruby ruby-dev
```

Use the Ruby GEM package manager to install the bundler manager.

```sh
sudo gem install bundler
```

Use the bundler manager to install the dependencies.

```sh
bundle install
```

## Usage

Create an application in [Spotify Developer](https://developer.spotify.com/dashboard), get the client ID and client secret and replace `client_id` and `client_secret` at the beginning of _spotify.rb_.

Run the CLI.

```sh
ruby spotify.rb
```

The covers are available in *covers*.

## Contributing

Pull requests are welcome. Please, consider the following.

1. Make sure you code have quality, a.k.a standards
2. Make sure your code is secure
3. Make sure your code has no performance issues
4. Make sure your code is documented, if necessary
5. Describe the changes that were done

> No issue or PR template required, but be informative

## License

[MIT](./LICENSE.md)
