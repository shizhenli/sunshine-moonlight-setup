---
title: "Moonlight Black Screen After Sleep: The Host Frame Check"
description: "A practical fix for when Sunshine and Moonlight connect but the host sends a black frame after sleep. Check the host display and encoder, then verify with a controlled test."
seo_title: "Moonlight Black Screen After Sleep — Fix the Host Frame"
seo_description: "A practical fix for when Sunshine and Moonlight connect but the host sends a black frame after sleep. Check the host display and encoder, then verify with a controlled test."
keywords:
  - "moonlight black screen after sleep"
date: 2026-11-15T19:00:17+08:00
publishDate: 2026-11-15T19:00:17+08:00
draft: false
categories:
  - "Game Streaming"
category_slug: "game-streaming"
---

Your Sunshine host and Moonlight client connect after sleep, but the stream shows only a black frame, and you want to fix this before trying anything else.

## Confirm the host is actually producing a frame

On the host, wake the machine and log in locally. Press Win+Ctrl+Shift+B to reset the graphics driver, then move the mouse across the desktop. If the local screen stays black, the problem is the host display waking, not Moonlight. If the local screen is fine but Moonlight is black, continue below.

## Check the display and encoder state

Open Sunshine's web UI and look at the Applications and Display tabs. Confirm the selected display matches the monitor that woke. A common cause of a **moonlight black screen after sleep** is Sunshine capturing a display that Windows left powered off. Set the display to the active monitor, or set Windows to never turn off the display while streaming. Then check the encoder: if the log shows the encoder failed to initialize after wake, switch to another encoder (for example, from hardware to software) and save. Restart the Sunshine service so it re-reads the display and encoder.

## Verification test

Put the host to sleep, wake it, wait ten seconds, then connect from Moonlight. You should see the desktop within a few seconds. If it is still black, disconnect, wait five seconds, and reconnect once. A single clean frame confirms the fix.

## Rollback note

If the new encoder or display setting makes things worse, revert to the previous encoder and display selection in Sunshine, restart the service, and reconnect. Keep a note of the original values before changing them.

If the frame is still black after these checks,

![A Windows gaming PC with Sunshine and a Moonlight client showing stream settings](/images/service-detail-960.webp "Sunshine host and Moonlight client test")

[Ask for help](/#consult) with your Sunshine log and display settings.
