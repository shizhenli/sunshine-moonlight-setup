---
title: "Moonlight Black Screen After Sleep: Force the Host Display Awake"
description: "Fix Moonlight black screen after sleep by forcing the Sunshine host display awake, confirming the captured frame, and testing with a controlled reconnect."
seo_title: "Moonlight Black Screen After Sleep: Force Host Display Awake"
seo_description: "Fix Moonlight black screen after sleep by forcing the Sunshine host display awake, confirming the captured frame, and testing with a controlled reconnect."
keywords:
  - "moonlight black screen after sleep"
date: 2026-11-22T10:06:54+08:00
publishDate: 2026-11-22T10:06:54+08:00
draft: false
categories:
  - "Game Streaming"
category_slug: "game-streaming"
---

You resume your PC from sleep, reconnect Moonlight, and get audio or a cursor but only a black frame from the Sunshine host. This is usually a display wake problem, not a streaming failure, so diagnose the host frame before changing client settings.

## Check the host display state

On the host, wake the machine with keyboard or mouse and wait 10 seconds. Press Win+P and confirm a real display mode is selected, not PC screen only. Then open the Sunshine web UI and check that the display capture source shows a resolution and refresh rate rather than an error. If the source is missing or reports zero frames, the host is still asleep at the display level. If it shows a valid resolution but the client stays black, continue to the encoder check.

## Confirm the captured frame

With the stream connected, move a window on the host and watch the client. A cursor that moves while the background stays black points to display capture; a fully frozen client points to the encoder or network. Restart the Sunshine service once, wait for it to report ready, then reconnect. Do not toggle multiple client options at once, or you will lose track of what changed.

## Verification test

Put the host to sleep, wake it, and reconnect Moonlight without touching any other setting. The expected result is a live desktop within a few seconds, with window movement visible on the client. If the frame stays black, the display did not wake; repeat the Win+P check before reconnecting.

## Rollback and recovery

If a change makes things worse, stop the Sunshine service, restore your previous display and encoder settings, and restart it. Keep a note of the last working configuration so you can return to it. For a guided diagnosis of your specific host,

![A Windows gaming PC with Sunshine and a Moonlight client showing stream settings](/images/service-detail-960.webp "Sunshine host and Moonlight client test")

[Ask for help](/#consult).

A persistent **moonlight black screen after sleep** almost always clears once the host display is forced awake and the capture source is confirmed before reconnecting.
