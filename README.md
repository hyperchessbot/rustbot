# rustbot

Lichess bot implementing the https://lichess.org/api#tag/Bot API, written in Rust.

# Run

## From source

`cargo run --release`

## Using pre built Linux binary

`./rustbot`

# Configuration

Set environment as follows:

## Token ( required )

`RUST_BOT_TOKEN={lichess API token with bot scopes}`

## Bot name ( required )

`RUST_BOT_NAME={bot lichess username}`

### Example

`RUST_BOT_NAME=RustBot`

## Engine name ( optional )

`RUST_BOT_ENGINE_NAME={engine executable name}`

If no engine name is provided, random moves will be played.

### Examples

#### Linux

`RUST_BOT_ENGINE_NAME=./stockfish12`

#### Windows

`RUST_BOT_ENGINE_NAME=stockfish12.exe`

## Uci options ( optional, for Stockfish 12 only )

### RUST_BOT_ENGINE_CONTEMPT

Adds this many centipawns to engine evaluation. Default = -25 .

### RUST_BOT_ENGINE_HASH

Engine hash table size in megabytes. Default = 128 .

### RUST_BOT_ENGINE_MOVE_OVERHEAD

Time necessary to transmit a move in milliseconds. Default = 500 .

### RUST_BOT_ENGINE_THREADS

Number of threads to use. Default = 4 .

## Meta configuration

### RUST_LOG ( optional )

Logging level. Possible values are `info` and `debug`. By default there is no logging and the bot does not print anything to its standard output.

### RESTART ( optional )

When starting bot with `startbot.sh` restart bot in every `RESTART` number of seconds. Default = 1800 .

# Deployment to Heroku

The bot is configured out of the box to run as a Heroku worker process.

Fork the repo, create a Heroku app, link it to your fork in the Deploy tab, set web dyno to 0, worker dyno to 1 in Resources tab. For configuration use Heroku config vars.
