export default {
  async fetch(request) {
    const url = new URL(request.url);

    // Homepage
    if (url.pathname === "/") {
      return new Response(
`<!DOCTYPE html>
<html>
<head>
<title>Mercury Runtime</title>
</head>
<body>
<h1>Mercury Runtime</h1>
<p>Access Denied</p>
</body>
</html>`,
      {
        headers: {
          "Content-Type": "text/html;charset=UTF-8"
        }
      });
    }

    // Loader
    if (url.pathname === "/script.lua") {
      const loader = `
local Main = game:HttpGet("https://mercuryproject.site/Main.lua")
loadstring(Main)()
`;

      return new Response(loader, {
        headers: {
          "Content-Type": "text/plain"
        }
      });
    }

    // Main.lua
    if (url.pathname === "/Main.lua") {
      const main = `
print("Mercury Loaded!")
`;

      return new Response(main, {
        headers: {
          "Content-Type": "text/plain"
        }
      });
    }

    return new Response("404 Not Found", {
      status: 404
    });
  }
}
