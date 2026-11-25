---
title: "Moonlight Black Screen After Sleep: Fix the Host Frame"
description: "Troubleshoot Moonlight's black screen after sleep by checking the host's wake state, display output, and encoder. Step-by-step diagnosis to restore streaming."
seo_title: "Moonlight Black Screen After Sleep: Wake, Display, Encoder"
seo_description: "Troubleshoot Moonlight's black screen after sleep by checking the host's wake state, display output, and encoder. Step-by-step diagnosis to restore streaming."
keywords:
  - "Moonlight Black Screen After Sleep: Wake, Display, Encoder"
date: 2026-11-25T10:06:49+08:00
publishDate: 2026-11-25T10:06:49+08:00
draft: false
categories:
  - "Game Streaming"
category_slug: "game-streaming"
---

You wake your Sunshine host from sleep, reconnect Moonlight, and get a black frame instead of your desktop. Here’s how to isolate the cause without guessing.

## Check the host wake state
First, confirm the host actually woke. Press a key or move the mouse, then wait 10 seconds. On the Sunshine host, open a terminal and run `systemctl status sleep.target` (Linux) or check Event Viewer for wake events (Windows). If the host is still asleep or suspended, Moonlight may connect but receive no frames. Result: if the host shows suspended, wake it manually and retry. If it’s awake, move on.

## Verify display output
Next, check if the host’s display is active. On Windows, press Win+P and ensure “Extend” or “Duplicate” is selected. On Linux, run `xrandr` and look for a connected output with a resolution. If the display is off or mirrored incorrectly, Sunshine captures a black frame. Result: if no active display is listed, re-enable it via settings or replug the monitor cable. Then restart Sunshine.

## Test the encoder
Finally, confirm the encoder is producing frames. In Sunshine’s web UI, go to the Troubleshooting tab and start a test stream. Watch the encoder log for errors like “no frame” or “capture failed.” If the log shows repeated capture failures, switch the encoder (e.g., from NVENC to software) and retry. Result: a successful test stream means the encoder works; a black test frame points to the capture source.

## Verification test
Reconnect Moonlight and move the mouse. If the desktop appears within 5 seconds, the fix worked. If the screen stays black, repeat the three checks in order.

## Rollback note
If changes worsen the issue, revert encoder settings to defaults and restart the Sunshine service. For persistent problems,

![A Windows gaming PC with Sunshine and a Moonlight client showing stream settings](/images/service-detail-960.webp "Sunshine host and Moonlight client test")

[Ask for help](/#consult).

This **Moonlight Black Screen After Sleep: Wake, Display, Encoder** check isolates the failure before you reconnect blindly.
