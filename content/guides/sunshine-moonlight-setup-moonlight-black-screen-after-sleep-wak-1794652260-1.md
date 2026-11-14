---
title: "Wake, Display, Encoder: Fixing Moonlight's Black Frame After Sleep"
description: "Troubleshoot Moonlight's black screen after sleep by checking wake state, display output, and encoder settings on the Sunshine host. Step-by-step diagnosis and recovery."
seo_title: "Moonlight Black Screen After Sleep: Wake, Display, Encoder Fix"
seo_description: "Troubleshoot Moonlight's black screen after sleep by checking wake state, display output, and encoder settings on the Sunshine host. Step-by-step diagnosis and recovery."
keywords:
  - "Moonlight Black Screen After Sleep: Wake, Display, Encoder"
date: 2026-11-14T19:41:26+08:00
publishDate: 2026-11-14T19:41:26+08:00
draft: false
categories:
  - "Game Streaming"
category_slug: "game-streaming"
---

You connect after sleep and see a black frame instead of your desktop; this guide isolates whether the wake, display, or encoder stage is failing.

## Check the wake stage
On the Sunshine host, confirm the machine is fully awake. Press a key or move the mouse, then look at the power LED. If it stays dim or the fans are silent, the host is still asleep. Result: a sleeping host cannot send frames, so wake it manually and reconnect. If the host wakes but the stream stays black, move to the display check.

## Check the display output
With the host awake, verify a monitor is connected or a virtual display is active. Right-click the desktop, open Display settings, and confirm a display is detected. If the screen shows "No display detected," the GPU has no active output and Sunshine sends black frames. Result: connect a monitor or enable the virtual display, then reconnect. If the display is active but still black, check the encoder.

## Check the encoder
Open Sunshine's web UI and review the encoder log for errors after sleep. If you see "encoder not initialized" or a codec reset, the GPU encoder did not recover from sleep. Result: restart the Sunshine service or reboot the host to reinitialize the encoder. This is the most common cause of the **Moonlight Black Screen After Sleep: Wake, Display, Encoder** failure.

## Verification test
After each fix, disconnect and reconnect Moonlight. A successful test shows the desktop within five seconds. If the frame stays black, repeat the checks in order.

## Rollback and recovery
If changes make things worse, revert to your previous Sunshine configuration and reboot both host and client. For guided diagnosis,

![A Windows gaming PC with Sunshine and a Moonlight client showing stream settings](/images/service-detail-960.webp "Sunshine host and Moonlight client test")

[Ask for help](/#consult).
