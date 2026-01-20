# Exposed

`Exposed` is a `.NET 10` **Razor Pages** web app that presents a curated **WWII timeline (1939–1945)** built around photographic/archival items.  
The UI renders a year-by-year gallery and a viewer with item metadata (title, date, type, rights/status, source, and external link).

## Features
- Razor Pages setup (`AddRazorPages()` / `MapRazorPages()`)
- Static assets served from `wwwroot`
- Timeline page at `GET /timeline`
- Local image set under `wwwroot/Immages` (used as timeline thumbnails/media)

## Tech Stack
- `.NET 10`
- ASP.NET Core **Razor Pages**

## Getting Started

### Prerequisites
- .NET SDK 10

### Run locally

### Default URLs (Development)
Configured in `Properties/launchSettings.json`:
- HTTP: `http://localhost:5023`
- HTTPS: `https://localhost:7057`

## Pages
- `Pages/Timeline.cshtml` → `/timeline`

## Project Structure (high level)
- `Pages/` — Razor Pages UI
- `wwwroot/` — static files (CSS/JS/images)
- `wwwroot/Immages/` — bundled image assets

## License
Add a license file (e.g. `LICENSE`) and update this section accordingly.
