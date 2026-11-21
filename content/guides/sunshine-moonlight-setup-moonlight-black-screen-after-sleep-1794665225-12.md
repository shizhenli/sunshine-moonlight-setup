---
title: "Moonlight Black Screen After Sleep: Verify the Host Is Sending a Live Frame"
description: "Fix the Moonlight black screen after sleep by checking the host display wake state, Sunshine capture source, and encoder output before reconnecting."
seo_title: "Moonlight Black Screen After Sleep: Host Frame Check"
seo_description: "Fix the Moonlight black screen after sleep by checking the host display wake state, Sunshine capture source, and encoder output before reconnecting."
keywords:
  - "moonlight black screen after sleep"
date: 2026-11-21T15:56:04+08:00
publishDate: 2026-11-21T15:56:04+08:00
draft: false
categories:
  - "Game Streaming"
category_slug: "game-streaming"
---

You wake the host, reconnect from Moonlight, and get a black frame instead of your desktop. This is a host-side capture problem, not a client rendering problem, so the fix happens on the Sunshine machine before you touch Moonlight again.

## Check the host display is actually awake

On the Sunshine host, press a key or move the mouse, then look at the physical monitor or a local remote session. If the screen stays dark, the display never woke from sleep and Sunshine has nothing to capture. Set the monitor to stay on or disable display sleep during streaming, then retry.

## Confirm Sunshine's capture source

Open the Sunshine web UI and check the selected display or capture device. After sleep, Windows can renumber displays or switch to a different adapter, leaving Sunshine pointed at a stale source. Select the display that is currently active. If you use a virtual display, confirm it is still present in the OS display settings. A source that shows as disconnected will produce a black frame even though the stream connects.

## Check the encoder is producing frames

In the Sunshine log, look for encoder initialization errors or repeated capture failures after the wake event. If the encoder failed to restart, stop the Sunshine service and start it again. This is your rollback point: if changes make things worse, restart the service and revert the display setting you just changed.

## Verification test

Keep the host display awake, reconnect from Moonlight, and confirm you see the desktop within a few seconds. Then let the host sleep once and wake it with input, and reconnect again. If the frame returns, the fix holds. If the **moonlight black screen after sleep** returns, capture the Sunshine log from the wake moment and review the capture source line.

If the frame is still black after these checks,

![A Windows gaming PC with Sunshine and a Moonlight client showing stream settings](/images/service-detail-960.webp "Sunshine host and Moonlight client test")

[Ask for help](/#consult) with your log excerpt and display configuration.
