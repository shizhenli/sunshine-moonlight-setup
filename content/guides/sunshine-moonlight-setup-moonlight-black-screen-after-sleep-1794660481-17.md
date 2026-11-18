---
title: "Moonlight Black Screen After Sleep: Verify the Host Display Before Reconnecting"
description: "A practical fix for Moonlight black screen after sleep on Sunshine hosts: verify the host display state, reset the capture source, and test with a controlled reconnect."
seo_title: "Fix Moonlight Black Screen After Sleep: Host Display Check"
seo_description: "A practical fix for Moonlight black screen after sleep on Sunshine hosts: verify the host display state, reset the capture source, and test with a controlled reconnect."
keywords:
  - "moonlight black screen after sleep"
date: 2026-11-18T11:13:56+08:00
publishDate: 2026-11-18T11:13:56+08:00
draft: false
categories:
  - "Game Streaming"
category_slug: "game-streaming"
---

**moonlight black screen after sleep**. ## Start with the host, not the client

You put the Sunshine host to sleep, woke it, and Moonlight reconnects to a black frame instead of your desktop; before changing encoder settings, confirm whether the host is actually rendering a display for Sunshine to capture.

## Check the host display state

On the host, wake the machine and log in locally. Press the display wake shortcut or move the mouse, then look at the physical monitor or a remote session. If the screen stays off while the PC is clearly running, the display output did not resume, and Sunshine has nothing to capture. That is your failure point. If the desktop appears normally, the display is fine and the issue is in the capture or encoder path, so continue below.

## Reset the capture source

Open the Sunshine web UI and stop the current stream. Change the capture source to a different display or to the desktop capture option, save, and start a fresh session. If the black frame clears, the previous display target was stale after sleep. If it stays black, restart the Sunshine service once, then reconnect. Do not stack multiple changes at the same time.

## Verification test

Reconnect from Moonlight and confirm you see the host desktop, then open a window and move it. A visible, updating frame means the fix held. If the frame is still black, note whether the host monitor shows content at that moment; that single observation tells you whether to pursue display wake or encoder recovery.

## Rollback and recovery

If a capture source change makes things worse, revert to the original display selection and restart the Sunshine service. Keep a local login available so you can always recover the host without the stream.

If the host display never returns after sleep, treat it as a host power or GPU wake issue first. For a guided diagnosis of your exact setup,

![A Windows gaming PC with Sunshine and a Moonlight client showing stream settings](/images/service-detail-960.webp "Sunshine host and Moonlight client test")

[Ask for help](/#consult).
