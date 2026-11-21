---
title: "Moonlight Black Screen After Sleep: Check the Host Display State Before Reconnecting"
description: "Fix Moonlight black screen after sleep by checking the host display state, encoder output, and reconnecting in the right order. Practical Sunshine host steps."
seo_title: "Moonlight Black Screen After Sleep: Host Display State Check"
seo_description: "Fix Moonlight black screen after sleep by checking the host display state, encoder output, and reconnecting in the right order. Practical Sunshine host steps."
keywords:
  - "moonlight black screen after sleep"
date: 2026-11-21T15:59:12+08:00
publishDate: 2026-11-21T15:59:12+08:00
draft: false
categories:
  - "Game Streaming"
category_slug: "game-streaming"
---

You wake the host, reconnect Moonlight, and get a black frame instead of your desktop. That is the **moonlight black screen after sleep** case, and the usual cause is the host still holding a stale display or encoder state after resume.

## Check the host display first

On the Sunshine host, wake the machine and log in locally. Confirm the monitor is actually on and showing the desktop, not a lock screen or a sleeping panel. If the display stays off, wake it with a keypress or mouse move and wait ten seconds. Next, open the Sunshine status page and look at the active encoder. A black frame with an encoder still listed as running after sleep usually means the capture source did not refresh.

## Restart the capture path

Stop the current Sunshine session, then restart the Sunshine service so it reinitializes display capture. Do not just reconnect the client; a stale encoder will keep sending black frames. After the service is back, confirm the status page shows a fresh session with no errors. If the host uses a virtual display, verify it is still attached after resume.

## Verification test

Reconnect Moonlight and watch the first five seconds. You should see the host desktop, not a black frame. Move the mouse on the host and confirm the cursor moves in the stream. If the frame stays black, note whether the encoder restarted or stayed idle, then repeat the service restart once.

## Rollback and recovery

If restarting the service makes things worse, stop Sunshine and reboot the host, then start Sunshine manually. Keep the previous working display configuration so you can restore it if a virtual display change caused the black frame. For a guided diagnosis,

![A Windows gaming PC with Sunshine and a Moonlight client showing stream settings](/images/service-detail-960.webp "Sunshine host and Moonlight client test")

[Ask for help](/#consult).
