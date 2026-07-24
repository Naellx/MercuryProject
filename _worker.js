// Static list for now — swap this for a D1/KV lookup later.
const GAMES = [
  { game_name: "1 Dash for Brainrots", status: "Working", thumbnail_url: "assets/mercury-mark.png" },
  { game_name: "Become A Brainrot", status: "Working", thumbnail_url: "assets/mercury-mark.png" },
  { game_name: "Driving Empire", status: "Working", thumbnail_url: "assets/mercury-mark.png" },
  { game_name: "Gotta Go Toilet", status: "Working", thumbnail_url: "assets/mercury-mark.png" },
  { game_name: "Jetpack for Brainrot", status: "Working", thumbnail_url: "assets/mercury-mark.png" },
  { game_name: "Cross Rivers for Brainrots", status: "Working", thumbnail_url: "assets/mercury-mark.png" },
  { game_name: "Plane for Brainrot", status: "Working", thumbnail_url: "assets/mercury-mark.png" },
  { game_name: "+1 Hack Per Click", status: "Working", thumbnail_url: "assets/mercury-mark.png" },
  { game_name: "+1 Speed Slime Keyboard Escape", status: "Working", thumbnail_url: "assets/mercury-mark.png" },
  { game_name: "Murder Mystery 2", status: "Working", thumbnail_url: "assets/mercury-mark.png" },
  { game_name: "Demonology", status: "Working", thumbnail_url: "assets/mercury-mark.png" },
  { game_name: "Evomon", status: "Working", thumbnail_url: "assets/mercury-mark.png" },
  { game_name: "Slime Seas RPG", status: "Working", thumbnail_url: "assets/mercury-mark.png" },
  { game_name: "+1 Strength To Escape", status: "Working", thumbnail_url: "assets/mercury-mark.png" },
  { game_name: "Be a Slime for Lucky Block", status: "Working", thumbnail_url: "assets/mercury-mark.png" },
  { game_name: "+1 Car Evolution", status: "Working", thumbnail_url: "assets/mercury-mark.png" },
  { game_name: "1 Mine Per Click", status: "Working", thumbnail_url: "assets/mercury-mark.png" },
  { game_name: "Speedsters Infinite", status: "Working", thumbnail_url: "assets/mercury-mark.png" },
  { game_name: "+1 Speed Moonwalk Escape", status: "Working", thumbnail_url: "assets/mercury-mark.png" },
  { game_name: "Paint My Keyboard", status: "Working", thumbnail_url: "assets/mercury-mark.png" },
  { game_name: "Drain The Lake", status: "Working", thumbnail_url: "assets/mercury-mark.png" },
  { game_name: "Climb and Drop a Lucky Block", status: "Working", thumbnail_url: "assets/mercury-mark.png" },
  { game_name: "Hack A Business", status: "Working", thumbnail_url: "assets/mercury-mark.png" },
  { game_name: "Anime Card Farm", status: "Working", thumbnail_url: "assets/mercury-mark.png" },
  { game_name: "Be A Fish Bait", status: "Working", thumbnail_url: "assets/mercury-mark.png" },
  { game_name: "Pull A Lucky Fish", status: "Working", thumbnail_url: "assets/mercury-mark.png" },
  { game_name: "RNG Heroes", status: "Working", thumbnail_url: "assets/mercury-mark.png" },
  { game_name: "Dino Hunters", status: "Working", thumbnail_url: "assets/mercury-mark.png" },
  { game_name: "Get Fat to Break Tape", status: "Working", thumbnail_url: "assets/mercury-mark.png" },
  { game_name: "Loot Up", status: "Working", thumbnail_url: "assets/mercury-mark.png" }
];

const LOADSTRING = 'loadstring(game:HttpGet("https://mercuryproject.site/loader.lua"))()';

export default {
  async fetch(request, env) {
    const url = new URL(request.url);

    if (url.pathname === "/api/scripts") {
      return new Response(JSON.stringify(GAMES), {
        headers: { "Content-Type": "application/json" }
      });
    }

    if (url.pathname === "/api/loader/loadstring") {
      return new Response(JSON.stringify({ loadstring: LOADSTRING }), {
        headers: { "Content-Type": "application/json" }
      });
    }

    // Everything else: serve the static site as normal.
    return env.ASSETS.fetch(request);
  }
};
