extern crate env_logger;

use lichessbot::lichessbot::*;

#[tokio::main]
async fn main() -> Result<(), Box<dyn std::error::Error>>{
	env_logger::init();

	let mut bot = LichessBot::new()
		.uci_opt("Threads", std::env::var("RUST_BOT_ENGINE_THREADS").unwrap_or("4".to_string()))
		.uci_opt("Hash", std::env::var("RUST_BOT_ENGINE_HASH").unwrap_or("128".to_string()))
		.uci_opt("Contempt", std::env::var("RUST_BOT_ENGINE_CONTEMPT").unwrap_or("-25".to_string()))
	;

	bot.stream().await
}
