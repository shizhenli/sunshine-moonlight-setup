---
title: "Moonlight Black Screen After Sleep: Restore the Host Frame"
description: "Troubleshoot a Moonlight black screen after sleep on a Sunshine host by checking the display wake state, encoder output, and restoring the desktop frame."
seo_title: "Moonlight Black Screen After Sleep: Fix the Black Frame"
seo_description: "Troubleshoot a Moonlight black screen after sleep on a Sunshine host by checking the display wake state, encoder output, and restoring the desktop frame."
keywords:
  - "moonlight black screen after sleep"
date: 2026-11-15T19:00:17+08:00
publishDate: 2026-11-15T19:00:17+08:00
draft: false
categories:
  - "Game Streaming"
category_slug: "game-streaming"
---

You wake the host, reconnect Moonlight, and the stream opens to a black frame instead of your desktop.

## Check the host display state first

On the Sunshine host, move the mouse and press a key, then watch the physical monitor. If it stays dark, the display did not wake from sleep, so the host has no frame to encode. Wake it manually and confirm the desktop is visible before reconnecting. If the monitor shows the desktop but Moonlight stays black, the display is awake and the problem sits in the capture or encoder path.

## Confirm Sunshine is still encoding

Open the Sunshine status page on the host and check that the stream is active and the encoder is running. If the session shows as active but no frames are produced, stop the stream from the status page, wait a few seconds, and start it again. This clears a stale capture session left over from sleep.

## Test with a fresh connection

Disconnect Moonlight completely, then reconnect. A successful result is a live desktop image within a few seconds. If the frame appears only after you interact with the host, the display wake is the cause; if it never appears, restart the Sunshine service and repeat the test. This is the controlled check that separates a display wake issue from an encoder issue when you see a **moonlight black screen after sleep**.

## Rollback and recovery

If a recent Sunshine or GPU driver update came before the problem, roll it back and retest. Keep a note of the working version so you can return to it. If the black frame persists after these steps,

![A Windows gaming PC with Sunshine and a Moonlight client showing stream settings](/images/service-detail-960.webp "Sunshine host and Moonlight client test")

[Ask for help](/#consult) with your host OS, GPU, and Sunshine version.
