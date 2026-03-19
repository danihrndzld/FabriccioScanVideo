# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Running the App

Double-click `src/Perforation_Stabilizer.command` on macOS, or run directly:

```bash
python3 src/perforation_stabilizer_app.py
```

Dependencies are auto-installed on first run (`opencv-python`, `numpy`, `tkinterdnd2`).

If the launcher is blocked by macOS:
```bash
chmod +x src/Perforation_Stabilizer.command
```

## Architecture

Single-file Tkinter GUI app (`src/perforation_stabilizer_app.py`) with two processing passes:

1. **Detection pass** — `detect_perforation()` crops a left-side ROI (default 22% of frame width), thresholds to white, finds contours, and scores candidates by area + fill ratio to locate the film perforation hole.
2. **Stabilization pass** — `stabilize_folder()` applies `moving_average()` to smooth perforation positions across all frames, then translates each frame so the perforation lands at a fixed anchor point, cropping to the smallest common canvas.

Key parameters exposed in the UI:
- **ROI left** (`roi_ratio`): fraction of frame width to search — default `0.22`
- **Threshold**: brightness cutoff for binarization — default `210` (lower if missing detections, raise if false positives)
- **Smoothing radius**: moving average window half-size — default `9`

Output is written to a sibling folder suffixed `_ESTABILIZADO`, plus a `stabilization_report.txt`.

## Media

Sample frames live in `media/` and are excluded from git (see `.gitignore`).
