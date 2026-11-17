---
title: "Moonlight Black Screen After Sleep: Wake, Display, Encoder – Fix the Host Frame"
description: "Troubleshoot Moonlight black screen after sleep by checking wake, display, and encoder on the Sunshine host. Step-by-step fix with verification and rollback."
seo_title: "Moonlight Black Screen After Sleep: Wake, Display, Encoder Fix"
seo_description: "Troubleshoot Moonlight black screen after sleep by checking wake, display, and encoder on the Sunshine host. Step-by-step fix with verification and rollback."
keywords:
  - "Moonlight Black Screen After Sleep: Wake, Display, Encoder"
date: 2026-11-17T08:13:11+08:00
publishDate: 2026-11-17T08:13:11+08:00
draft: false
categories:
  - "Game Streaming"
category_slug: "game-streaming"
---

You connect to your Sunshine host after it wakes from sleep, but Moonlight shows only a black frame. This guide isolates whether the wake, display, or encoder is causing the black screen after sleep.

## Check the Wake State

First, confirm the host actually woke. On the Sunshine host, open a terminal and run `systemctl status sleep.target` or check the power LED. If the host is still asleep, Moonlight may connect to a stale session. Wake the host manually and reconnect. If the screen stays black, move to the display check.

## Verify the Display Output

After sleep, the display may not reinitialize. On the host, run `xrandr --query` (Linux) or check Display Settings (Windows). Look for the active output and resolution. If no output is listed or the resolution is 0x0, the display did not wake. Try switching to a virtual display or restarting the display manager. A common fix is to disable display sleep in the OS power settings.

## Test the Encoder

If the display is active, the encoder may have failed to restart. In Sunshine, open the web UI and check the encoder status. Look for errors like "encoder not initialized." Restart the Sunshine service: `sudo systemctl restart sunshine`. Then reconnect from Moonlight. This addresses the **Moonlight Black Screen After Sleep: Wake, Display, Encoder** chain by ruling out each layer.

## Verification Test

After each change, reconnect from Moonlight. A successful test shows the desktop within 5 seconds. If still black, note which check failed (wake, display, or encoder) and repeat that step.

## Rollback and Recovery

If changes worsen the issue, revert power settings to default and restart the host. For persistent problems,

![A Windows gaming PC with Sunshine and a Moonlight client showing stream settings](/images/service-detail-960.webp "Sunshine host and Moonlight client test")

[Ask for help](/#consult) with your logs. Always keep a backup of Sunshine configuration before editing.
