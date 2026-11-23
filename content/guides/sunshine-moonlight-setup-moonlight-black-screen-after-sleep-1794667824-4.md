---
title: "Moonlight Black Screen After Sleep: Confirm the Host Is Sending Frames"
description: "Fix the Moonlight black screen after sleep by checking whether Sunshine is actually sending frames, then verifying with a local capture test."
seo_title: "Moonlight Black Screen After Sleep: Confirm Host Frames"
seo_description: "Fix the Moonlight black screen after sleep by checking whether Sunshine is actually sending frames, then verifying with a local capture test."
keywords:
  - "moonlight black screen after sleep"
date: 2026-11-23T09:06:48+08:00
publishDate: 2026-11-23T09:06:48+08:00
draft: false
categories:
  - "Game Streaming"
category_slug: "game-streaming"
---

You wake the host, reconnect from Moonlight, and get a black frame even though the stream says it is connected.

## Check the host display state first

On the Sunshine host, open the display settings and confirm the monitor is active, not duplicated to a disconnected output, and not stuck on a lock screen. A sleeping host often leaves the virtual display selected after wake. If the active display is wrong, switch it back to the physical monitor and keep the resolution unchanged.

## Confirm Sunshine is capturing frames

Open the Sunshine web UI and check the stream status while Moonlight is connected. If the session shows connected but the frame counter or capture rate stays at zero, the encoder is not receiving a frame. Restart the Sunshine service once, then reconnect. If the counter rises but Moonlight stays black, the problem is on the client decode side, not the host capture.

## Run a local verification test

On the host, start a short local screen recording or open a window with a moving clock. Reconnect Moonlight and watch for that motion. A visible moving clock means frames are flowing and the original **moonlight black screen after sleep** is resolved. A still-black view with a rising frame counter points to client decoding; close and reopen Moonlight, then reconnect.

## Rollback and recovery

If restarting Sunshine makes things worse, stop the service, restore your previous display and encoder settings, and reboot the host before trying again. Keep a note of the working resolution so you can return to it.

If the frame counter still stays at zero after these checks,

![A Windows gaming PC with Sunshine and a Moonlight client showing stream settings](/images/service-detail-960.webp "Sunshine host and Moonlight client test")

[Ask for help](/#consult) with your Sunshine log and display settings.
