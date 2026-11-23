---
title: "Moonlight Black Screen After Sleep: Is the Host Sending a Black Frame?"
description: "Troubleshoot Moonlight black screen after sleep by checking wake state, display output, and encoder on the Sunshine host. Step-by-step diagnosis and recovery."
seo_title: "Moonlight Black Screen After Sleep: Wake, Display, Encoder"
seo_description: "Troubleshoot Moonlight black screen after sleep by checking wake state, display output, and encoder on the Sunshine host. Step-by-step diagnosis and recovery."
keywords:
  - "Moonlight Black Screen After Sleep: Wake, Display, Encoder"
date: 2026-11-23T10:06:55+08:00
publishDate: 2026-11-23T10:06:55+08:00
draft: false
categories:
  - "Game Streaming"
category_slug: "game-streaming"
---

You wake your Sunshine host from sleep, reconnect with Moonlight, and get a black frame instead of your desktop. This guide isolates whether the host is failing to wake, not outputting a display, or not encoding frames.

## Check the wake state first

After sleep, the host may not be fully awake. Press a key or move the mouse on the host itself. Wait 10 seconds. Then check if the host display turns on. If the monitor stays off, the host is still asleep or suspended. Wake it fully before reconnecting Moonlight. If the host wakes but Moonlight still shows black, move to the display check.

## Verify display output

On the host, confirm the monitor shows the desktop. If the host uses a headless setup or the monitor is off, Sunshine may have no display to capture. Turn on the monitor or connect a dummy plug. Then restart the Sunshine service. Reconnect Moonlight. If the stream now shows the desktop, the issue was display output after sleep.

## Check encoder activity

If the host display is active but Moonlight stays black, the encoder may not be producing frames. Open Sunshine's web UI and check the stream status. Look for encoder errors or a stalled session. Stop the current stream, then start a new one. If the black frame persists, change the encoder setting (e.g., from hardware to software) as a test, then revert if needed.

## Verification test

Put the host to sleep, wake it, and reconnect Moonlight. You should see the desktop within 10 seconds. If black, note which check above failed. This is your **Moonlight Black Screen After Sleep: Wake, Display, Encoder** diagnosis.

## Rollback and recovery

If changes make things worse, revert encoder settings and restart Sunshine. If unsure,

![A Windows gaming PC with Sunshine and a Moonlight client showing stream settings](/images/service-detail-960.webp "Sunshine host and Moonlight client test")

[Ask for help](/#consult).
