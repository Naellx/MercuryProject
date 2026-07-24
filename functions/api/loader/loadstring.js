export async function onRequestGet() {
  const body = {
    loadstring: 'loadstring(game:HttpGet("https://mercuryproject.site/loader.lua"))()'
  };

  return new Response(JSON.stringify(body), {
    headers: { "Content-Type": "application/json" }
  });
}
