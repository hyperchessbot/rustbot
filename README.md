# rustbot

Lichess bot implementing the https://lichess.org/api#tag/Bot API written in Rust.

# Run

## From source

`cargo run --release`

## Using pre built Linux binary

`./rustbot`

# Configuration

Set environment as follows:

## Token

`RUST_BOT_TOKEN={lichess API token with bot scopes}`

## Bot name

`RUST_BOT_NAME={bot lichess username}`

example

`RUST_BOT_NAME=chesshyperbot`

## Engine name ( optional )

`RUST_BOT_ENGINE_NAME={engine executable name}`

examples

Linux `RUST_BOT_ENGINE_NAME=./stockfish12`

Windows `RUST_BOT_ENGINE_NAME=stockfish12.exe`

If no engine name is provided, random moves will be played.
