export async function onRequest(context) {
  const ua = context.request.headers.get("User-Agent") || "";

  if (
    ua.includes("Mozilla") ||
    ua.includes("Chrome") ||
    ua.includes("Safari") ||
    ua.includes("Firefox") ||
    ua.includes("Edge")
  ) {
    return Response.redirect("https://mercuryproject.site", 302);
  }

  return fetch("https://raw.githubusercontent.com/Naellx/MercuryProject/main/loader-source.lua");
}
