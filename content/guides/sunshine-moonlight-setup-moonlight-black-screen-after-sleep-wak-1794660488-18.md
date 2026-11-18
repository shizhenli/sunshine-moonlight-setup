---
title: "Moonlight Black Screen After Sleep: Wake, Display, Encoder — Step-by-Step Fix"
description: "Troubleshoot Moonlight black screen after sleep by checking wake, display, and encoder settings on the Sunshine host. Step-by-step guide with verification and rollback."
seo_title: "Moonlight Black Screen After Sleep: Wake, Display, Encoder Fix"
seo_description: "Troubleshoot Moonlight black screen after sleep by checking wake, display, and encoder settings on the Sunshine host. Step-by-step guide with verification and rollback."
keywords:
  - "Moonlight Black Screen After Sleep: Wake, Display, Encoder"
date: 2026-11-18T12:09:16+08:00
publishDate: 2026-11-18T12:09:16+08:00
draft: false
categories:
  - "Game Streaming"
category_slug: "game-streaming"
---

You connect to your Sunshine host after it wakes from sleep, but Moonlight shows only a black frame—here's how to isolate whether the wake, display, or encoder is at fault.

## 1. Confirm the host actually woke
On the Sunshine host, open a terminal and run `ping <host-ip>` from another device. If it replies, the host is awake. If not, wake it manually and retry the stream. A black frame with a live connection usually means the host woke but the display or encoder didn't recover.

## 2. Check the display state
After sleep, the host may keep the display off. On Windows, run `powercfg /requests` to see what's blocking wake. Then press a key or move the mouse to wake the display. On Linux, check `xset q` for DPMS status. If the display stays off, set the power plan to never turn off the display when plugged in. This is the most common cause of a black frame after sleep.

## 3. Verify the encoder
In Sunshine's web UI, go to the Configuration tab and check the encoder log. Look for errors like "encoder not ready" or "failed to initialize." If present, switch the encoder (e.g., from NVENC to software) and restart Sunshine. Then reconnect from Moonlight. If the black frame persists, the encoder didn't recover from sleep—this is your **Moonlight Black Screen After Sleep: Wake, Display, Encoder** checkpoint.

## Verification test
After each change, disconnect and reconnect Moonlight. A successful test shows the desktop within 5 seconds. If still black, repeat steps 1–3.

## Rollback note
If switching the encoder breaks streaming, revert to the original encoder in Sunshine settings and restart the service. For persistent issues,

![A Windows gaming PC with Sunshine and a Moonlight client showing stream settings](/images/service-detail-960.webp "Sunshine host and Moonlight client test")

[Ask for help](/#consult).
