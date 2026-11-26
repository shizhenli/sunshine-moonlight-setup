---
title: "Wake, Display, Encoder: Resolving Moonlight Black Screen After Sleep"
description: "Troubleshoot Moonlight black screen after sleep by checking wake, display, and encoder steps. Follow exact checks to restore streaming."
seo_title: "Moonlight Black Screen After Sleep: Wake, Display, Encoder"
seo_description: "Troubleshoot Moonlight black screen after sleep by checking wake, display, and encoder steps. Follow exact checks to restore streaming."
keywords:
  - "Moonlight Black Screen After Sleep: Wake, Display, Encoder"
date: 2026-11-26T08:14:15+08:00
publishDate: 2026-11-26T08:14:15+08:00
draft: false
categories:
  - "Game Streaming"
category_slug: "game-streaming"
---

You connect to your Sunshine host after it wakes from sleep, but Moonlight shows only a black frame. This is a common issue where the host sends a black image because the display or encoder hasn't fully recovered.

## Check Wake State

First, confirm the host is fully awake. Press a key or move the mouse on the host. Then, on the host, open a terminal and run `powercfg /lastwake` (Windows) or `journalctl -b -1 | grep suspend` (Linux) to see if the wake was clean. If the wake source is unexpected, disable wake-on-LAN or USB wake in BIOS. A clean wake should show a recent timestamp.

## Verify Display Output

After wake, the display may be off or in a low-power state. Check that the monitor connected to the host is on and shows the desktop. If using a headless setup, ensure a dummy plug is attached. Run `xrandr` (Linux) or check display settings in Windows to confirm an active output. If no display is detected, the encoder will send black frames.

## Test Encoder Health

On the host, open Sunshine's web interface (usually https://localhost:47990) and check the encoder status. Look for errors like "encoder not initialized" or "no display". Restart the Sunshine service: `sudo systemctl restart sunshine` (Linux) or restart the Sunshine app (Windows). Then reconnect from Moonlight. If the stream works, the encoder recovered.

## Verification Test

After these steps, connect from Moonlight and move the mouse. You should see the cursor and desktop. If still black, try a different encoder (e.g., switch from NVENC to software) in Sunshine settings. This isolates hardware encoder issues.

## Rollback and Recovery

If changes cause new problems, revert to previous Sunshine settings. Keep a backup of the configuration file. For persistent issues, consult the Sunshine logs at `~/.config/sunshine/sunshine.log` (Linux) or `%ProgramData%\Sunshine\sunshine.log` (Windows). This **Moonlight Black Screen After Sleep: Wake, Display, Encoder** guide helps you methodically restore streaming. If you need further assistance,

![A Windows gaming PC with Sunshine and a Moonlight client showing stream settings](/images/service-detail-960.webp "Sunshine host and Moonlight client test")

[Ask for help](/#consult).
