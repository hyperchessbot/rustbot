extern crate env_logger;

use lichessbot::lichessbot::*;

#[tokio::main]
async fn main() -> Result<(), Box<dyn std::error::Error>>{
	env_logger::init();

	let mut bot = LichessBot::new();

	bot.stream().await
}
