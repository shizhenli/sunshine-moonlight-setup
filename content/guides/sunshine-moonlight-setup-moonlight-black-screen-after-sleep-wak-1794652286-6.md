---
title: "Moonlight Black Screen After Sleep: Wake, Display, Encoder – Fix the Black Frame"
description: "Troubleshoot Moonlight black screen after sleep by checking wake, display, and encoder states on the Sunshine host. Step-by-step diagnosis and recovery."
seo_title: "Moonlight Black Screen After Sleep: Wake, Display, Encoder Fix"
seo_description: "Troubleshoot Moonlight black screen after sleep by checking wake, display, and encoder states on the Sunshine host. Step-by-step diagnosis and recovery."
keywords:
  - "Moonlight Black Screen After Sleep: Wake, Display, Encoder"
date: 2026-11-15T19:00:17+08:00
publishDate: 2026-11-15T19:00:17+08:00
draft: false
categories:
  - "Game Streaming"
category_slug: "game-streaming"
---

You connect to your Sunshine host after it wakes from sleep, but Moonlight shows only a black frame. This guide helps you isolate whether the wake, display, or encoder is causing the black screen.

## Check the Host Wake State

First, confirm the host is fully awake. Press a key or move the mouse on the host. Then, on Moonlight, disconnect and reconnect. If the stream still shows black, the issue is not a delayed wake.

## Verify Display Output

On the host, check if the monitor is active. If the display is off or in power-saving mode, Sunshine may capture a black frame. Wake the monitor and set it to never sleep during streaming. In Sunshine, ensure the display capture is set to the correct monitor. Reconnect Moonlight and observe: if the black screen persists, move to the encoder check.

## Inspect Encoder Status

Open Sunshine's web UI and check the encoder logs. Look for errors like "encoder not initialized" or "failed to capture." Restart the Sunshine service. If the encoder fails after sleep, it may not reinitialize properly. Try switching the encoder (e.g., from NVENC to software) temporarily to see if the black frame disappears. This is a common **Moonlight Black Screen After Sleep: Wake, Display, Encoder** interaction.

## Verification Test

After each change, reconnect Moonlight and check for a live desktop. If you see the desktop, the fix worked. If not, proceed to the next check.

## Rollback and Recovery

If switching the encoder resolves the issue, you can revert to the original encoder after a host reboot. If problems persist, restart the host to reset all states. For further assistance,

![A Windows gaming PC with Sunshine and a Moonlight client showing stream settings](/images/service-detail-960.webp "Sunshine host and Moonlight client test")

[Ask for help](/#consult).
