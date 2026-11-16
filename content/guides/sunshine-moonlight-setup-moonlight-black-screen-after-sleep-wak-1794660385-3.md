---
title: "Moonlight Black Screen After Sleep: Wake, Display, Encoder — Restore the Stream"
description: "Troubleshoot Moonlight black screen after sleep by checking wake, display, and encoder on the Sunshine host. Step-by-step diagnosis and recovery."
seo_title: "Moonlight Black Screen After Sleep: Wake, Display, Encoder Fix"
seo_description: "Troubleshoot Moonlight black screen after sleep by checking wake, display, and encoder on the Sunshine host. Step-by-step diagnosis and recovery."
keywords:
  - "Moonlight Black Screen After Sleep: Wake, Display, Encoder"
date: 2026-11-16T08:06:38+08:00
publishDate: 2026-11-16T08:06:38+08:00
draft: false
categories:
  - "Game Streaming"
category_slug: "game-streaming"
---

You connect to your Sunshine host after it wakes from sleep, but Moonlight shows only a black frame. This guide walks you through a controlled diagnosis to restore the expected outcome: black screen after sleep.

## Check Wake State
First, confirm the host actually woke. On the Sunshine host, open a terminal and run `systemctl status sleep.target` or check the power LED. If the host is still asleep, Moonlight may connect but receive no frames. Result: if the status shows inactive, the host is awake; if it shows active, wake it manually and retry.

## Verify Display Output
Next, ensure the host's display is active. Run `xrandr --query` (Linux) or check Display Settings (Windows). Look for a connected output with a resolution. If the output is disconnected or resolution is 0x0, the GPU isn't sending frames. Result: a valid output means the display is ready; otherwise, re-enable the display or reconnect the monitor cable.

## Check Encoder Status
In Sunshine's web UI, go to the Status tab and inspect the encoder. If it shows "stopped" or an error, the encoder didn't recover from sleep. Restart the Sunshine service: `sudo systemctl restart sunshine`. Result: encoder should show "running" and a codec. If it fails, note the error for further support.

## Verification Test
Reconnect Moonlight. If you still see a black frame, try a different client or lower the stream settings. A successful test shows the desktop or application. If not, the issue persists.

## Rollback/Recovery
If changes cause instability, revert to your previous Sunshine configuration backup or restart the host. This **Moonlight Black Screen After Sleep: Wake, Display, Encoder** check isolates the failure. For personalized help,

![A Windows gaming PC with Sunshine and a Moonlight client showing stream settings](/images/service-detail-960.webp "Sunshine host and Moonlight client test")

[Ask for help](/#consult).
