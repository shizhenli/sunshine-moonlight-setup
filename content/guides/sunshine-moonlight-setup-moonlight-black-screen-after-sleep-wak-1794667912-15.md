---
title: "Moonlight Black Screen After Sleep: Wake, Display, Encoder — Restore the Host Frame"
description: "Troubleshoot Moonlight black screen after sleep by checking host wake, display state, and encoder. Step-by-step diagnosis and verification."
seo_title: "Moonlight Black Screen After Sleep: Wake, Display, Encoder Fix"
seo_description: "Troubleshoot Moonlight black screen after sleep by checking host wake, display state, and encoder. Step-by-step diagnosis and verification."
keywords:
  - "Moonlight Black Screen After Sleep: Wake, Display, Encoder"
date: 2026-11-25T08:06:55+08:00
publishDate: 2026-11-25T08:06:55+08:00
draft: false
categories:
  - "Game Streaming"
category_slug: "game-streaming"
---

You connect to your Sunshine host after it wakes from sleep, but Moonlight shows only a black frame. This guide walks you through a controlled diagnosis of the wake, display, and encoder chain so you can restore the expected outcome: a working stream instead of a black screen after sleep.

## Check Host Wake State

First, confirm the host actually woke. On the Sunshine host, open a terminal and run `systemctl status sleep.target` (Linux) or check Event Viewer (Windows). If the host is still in sleep or a low-power state, the encoder cannot capture frames. Result interpretation: if the status shows inactive or the host is unresponsive, wake it fully and retry the connection. If it is awake, proceed.

## Verify Display Output

Next, ensure the host's display is active. On Windows, check that the monitor is not powered off and that the desktop is visible. On Linux, run `xrandr` and confirm a connected output with a resolution. If the display is off or the resolution is missing, the encoder has nothing to capture. Result interpretation: a black frame with no display output means you must wake the display or adjust power settings to keep it on.

## Inspect Encoder Status

In Sunshine's web UI, go to the Encoder tab and check for errors. If the encoder shows a failure or is stuck after sleep, restart the Sunshine service. This is the core of **Moonlight Black Screen After Sleep: Wake, Display, Encoder** troubleshooting. Result interpretation: a healthy encoder shows an active session; a failed one requires a service restart.

## Verification Test

After these checks, reconnect from Moonlight. You should see the host desktop within a few seconds. If the black frame persists, note which check failed and address that specific layer.

## Rollback and Recovery

If changes to power settings cause issues, revert them. If the problem continues,

![A Windows gaming PC with Sunshine and a Moonlight client showing stream settings](/images/service-detail-960.webp "Sunshine host and Moonlight client test")

[Ask for help](/#consult) for a guided diagnosis.
