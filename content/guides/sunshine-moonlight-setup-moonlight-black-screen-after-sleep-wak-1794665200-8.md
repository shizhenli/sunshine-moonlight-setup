---
title: "Moonlight Black Screen After Sleep: Wake, Display, Encoder – Practical Fix"
description: "Troubleshoot Moonlight black screen after sleep by checking wake, display, and encoder settings on the Sunshine host. Step-by-step fix with verification and rollback."
seo_title: "Moonlight Black Screen After Sleep: Wake, Display, Encoder – Practical Fix"
seo_description: "Troubleshoot Moonlight black screen after sleep by checking wake, display, and encoder settings on the Sunshine host. Step-by-step fix with verification and rollback."
keywords:
  - "Moonlight Black Screen After Sleep: Wake, Display, Encoder"
date: 2026-11-21T15:56:04+08:00
publishDate: 2026-11-21T15:56:04+08:00
draft: false
categories:
  - "Game Streaming"
category_slug: "game-streaming"
---

You connect to your Sunshine host after it wakes from sleep, but Moonlight shows only a black frame. This guide helps you isolate whether the issue is wake, display, or encoder related, so you can restore the expected outcome: a working stream after sleep.

## Check Wake State
First, confirm the host actually woke. On the Sunshine host, open a terminal and run `systemctl status sleep.target` or check the power LED. If the host is still asleep, Moonlight may connect to a stale session. Wake it manually and wait 10 seconds. If the screen remains black, proceed.

## Verify Display Output
Next, check if the host has an active display. Run `xrandr --query` (Linux) or check Display Settings (Windows). If no monitor is detected, Sunshine cannot capture a frame. Connect a dummy plug or enable a virtual display. Then restart Sunshine. If the display is active but Moonlight still shows black, move to encoder checks.

## Inspect Encoder Configuration
Open Sunshine's web UI and go to the Configuration tab. Under Encoder, note the selected encoder (e.g., NVENC, VAAPI). After sleep, some encoders fail to reinitialize. Switch to a different encoder (e.g., from NVENC to software) and save. Restart the Sunshine service. This is a common cause of the **Moonlight Black Screen After Sleep: Wake, Display, Encoder** issue.

## Verification Test
Reconnect from Moonlight. If you see the desktop, the fix worked. If still black, revert the encoder change and try restarting the host instead of just waking it.

## Rollback and Recovery
If changes worsen the problem, revert to the original encoder and restart Sunshine. For persistent issues,

![A Windows gaming PC with Sunshine and a Moonlight client showing stream settings](/images/service-detail-960.webp "Sunshine host and Moonlight client test")

[Ask for help](/#consult) with your logs.
