export default {
  async fetch(request) {
    const url = new URL(request.url);

    if (url.pathname === "/loader.lua") {
      const userAgent = request.headers.get("User-Agent") || "";

      // kalau dibuka browser biasa
      if (
        userAgent.includes("Mozilla") ||
        userAgent.includes("Chrome") ||
        userAgent.includes("Safari")
      ) {
        return Response.redirect("https://mercuryproject.site", 302);
      }

      // kalau executor / HttpGet
      return fetch("https://raw.githubusercontent.com/USERNAME/REPO/main/loader.lua");
    }

    return fetch(request);
  }
}
