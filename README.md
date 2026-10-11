# 🍅 Pomo Gogo

A dependency-free Pomodoro timer in a single `index.html`.

**Live:** https://anirudha-nanda.github.io/pomo-gogo/

**Plan by task:** add tasks with an estimate of how many pomodoros each needs. Click a task to make it
the current one. Each finished focus session counts toward it (e.g. `2/3 🍅`), and the plan shows the
pomodoros left and an estimated finish time, including breaks.

**Projects:** group tasks into projects (seeded with *Interview prep*, *NeetCode*, *TrustAnchor*).
Create one from a task's **+ Project → New project…** menu; rename or delete projects under
**Settings → Projects**. Only projects that are on at least one task appear as filters. Each project has a color, its own done/planned/left counts, and an
all-time total of pomodoros logged to it. A task can belong to **several projects** (e.g. *Island count* in both
NeetCode and Interview prep): add projects from the **+ Project** menu when creating it, or use 🏷 on a task to
change them later (only the selected projects are shown; tap one to remove it). A shared task is listed under each of its projects and every pomodoro on it is
credited to all of them, but it's counted once in the overall plan. Use the chips to filter the plan by project; the finish
estimate follows the filter.

**Forgot the timer?** Tap 🍅 on a task to log pomodoros you did without it: how many, and when
they finished. They count toward the task, its projects and the stats (marked *manual*). Any
session can be removed from the stats page if logged by mistake.

**Stats** (`stats.html`, linked from the timer): every completed focus session is logged with its
time, length, task and projects. The page shows pomodoros, focus time, daily average, best day and
current streak, plus pomodoros per day, a by-project breakdown, time of day and a session list,
for the last 7 / 30 / 90 days or all time.

Features: focus / short / long break modes, configurable durations, auto-start,
completed-session counter, sound + desktop notification on finish, Space to start/pause,
light/dark theme. Settings persist in `localStorage`.

## Deploy

Served straight from the repo root by GitHub Pages — no build step.
One-time setup: **Settings → Pages → Build and deployment → Source: Deploy from a branch**,
then pick the branch and `/ (root)`.

Run locally: just open `index.html` in a browser.

Keyboard: <kbd>Space</kbd> starts/pauses the timer.
