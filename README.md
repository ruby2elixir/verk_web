[![Build Status](https://travis-ci.org/edgurgel/verk_web.svg?branch=master)](https://travis-ci.org/edgurgel/verk_web)
[![Hex pm](http://img.shields.io/hexpm/v/verk_web.svg?style=flat)](https://hex.pm/packages/verk_web)
[![Coverage Status](https://coveralls.io/repos/edgurgel/verk_web/badge.svg?branch=master&service=github)](https://coveralls.io/github/edgurgel/verk_web?branch=master)

# VerkWeb

Web interface for [Verk](https://github.com/edgurgel/verk)


## Installation

First, add Verk Web to your `mix.exs` dependencies:

```elixir
def deps do
  [{:verk_web, "~> 0.9"},
   {:verk,     "~> 0.9"}]
end
```

and run

```
$ mix deps.get
```

Now, list `:verk_web` and `:verk` applications as your application dependencies. They must run together on the same node.

```elixir
def application do
  [applications: [:verk_web, :verk]]
end
```

Now mount VerkWeb on your app Endpoint:

```elixir
defmodule MyApp.Endpoint do
  use VerkWeb.Mount, path: "/verk"
  ...
end
```

That should be it! :)


## What it looks like

![](http://i.imgur.com/AclG57m.png)
![](http://i.imgur.com/oC9Ven3.png)
![](http://i.imgur.com/pktr4Zv.png)
![](https://cloud.githubusercontent.com/assets/30873/14195722/1a1d7b54-f819-11e5-90fd-c1ff8b7f4613.png)


## Development

To start Verk Web app:

  1. Install dependencies with `mix deps.get`
  1. Install front-end dependencies `npm install && bower install`
  1. Start Phoenix endpoint with `mix phoenix.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

