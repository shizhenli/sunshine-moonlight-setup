---
title: "Moonlight Black Screen After Sleep: Is the Host Display Actually On?"
description: "Fix Moonlight black screen after sleep by verifying the host display is active, checking the encoder, and running a controlled reconnect test."
seo_title: "Moonlight Black Screen After Sleep: Check Host Display State"
seo_description: "Fix Moonlight black screen after sleep by verifying the host display is active, checking the encoder, and running a controlled reconnect test."
keywords:
  - "moonlight black screen after sleep"
date: 2026-11-16T12:24:39+08:00
publishDate: 2026-11-16T12:24:39+08:00
draft: false
categories:
  - "Game Streaming"
category_slug: "game-streaming"
---

You wake the host, reconnect Moonlight, and get a black frame instead of your desktop—this guide isolates whether the host display is actually on after sleep.

## Check the host display state first

On the Sunshine host, wake the machine and log in locally. Look at the physical monitor or the host's own display output. If the screen is black there too, the problem is the host's display power state, not Moonlight. Press a key or move the mouse and confirm the desktop appears. If the host display stays off, adjust the OS power settings so sleep does not power down the display, then retry the stream.

## Confirm the encoder is producing frames

Open the Sunshine web UI on the host and check the stream status while Moonlight is connected. A connected session with no frame activity points to the encoder not capturing the display. Switch the encoder to a different option in Sunshine, save, and reconnect. If the status shows active frames but Moonlight stays black, the issue is on the client side—close Moonlight fully and relaunch it.

## Run a controlled reconnect test

Disconnect Moonlight, put the host to sleep, wake it, wait ten seconds, then reconnect. Watch the host display during the reconnect. If the host display is on and the stream is still black, note the encoder status at that moment. This tells you whether the failure is display wake or frame capture.

## Rollback and recovery

If changes make things worse, revert the encoder and power settings to their previous values and restart Sunshine. If the **moonlight black screen after sleep** persists after these checks, gather your host OS, Sunshine version, and encoder status, then

![A Windows gaming PC with Sunshine and a Moonlight client showing stream settings](/images/service-detail-960.webp "Sunshine host and Moonlight client test")

[Ask for help](/#consult).
