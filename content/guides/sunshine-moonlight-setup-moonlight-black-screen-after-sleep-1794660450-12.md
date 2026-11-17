---
title: "Moonlight Black Screen After Sleep: Fix the Host Frame Before Reconnecting"
description: "Fix Moonlight black screen after sleep by checking the host display, encoder, and wake state, then verifying with a controlled reconnect test."
seo_title: "Moonlight Black Screen After Sleep: Host Frame Fix"
seo_description: "Fix Moonlight black screen after sleep by checking the host display, encoder, and wake state, then verifying with a controlled reconnect test."
keywords:
  - "moonlight black screen after sleep"
date: 2026-11-17T11:06:41+08:00
publishDate: 2026-11-17T11:06:41+08:00
draft: false
categories:
  - "Game Streaming"
category_slug: "game-streaming"
---

You wake the host, reconnect from Moonlight, and the stream opens to a black frame instead of the desktop. This is a host-side frame delivery problem, not a client rendering issue, so diagnose the host before reconnecting again.

## Check the host display state

On the Sunshine host, confirm the monitor is actually awake and showing the desktop. If the display is off or the session is locked, Sunshine may capture a black frame. Press a key or move the mouse on the host, then confirm the desktop appears. If the screen stays off, fix the host display wake first; reconnecting Moonlight will not help.

## Check the encoder after wake

Open the Sunshine web UI and look at the current session status. If the encoder shows idle or failed after sleep, stop the stream and restart the Sunshine service. Then start a new stream. If the encoder recovers and shows an active session, the black frame was caused by a stale encoder state after wake.

## Verification test

Disconnect Moonlight fully, wait ten seconds, and reconnect once. If the desktop appears, the fix worked. If the frame is still black, repeat the host display check and service restart in that order before trying again.

## Rollback and recovery

If restarting the service makes things worse, stop Sunshine, reboot the host, and start Sunshine manually. Reconnect only after the host desktop is visible. This returns you to a known working state without changing encoder settings.

If the **moonlight black screen after sleep** persists after these checks, the host frame path needs a closer look.

![A Windows gaming PC with Sunshine and a Moonlight client showing stream settings](/images/service-detail-960.webp "Sunshine host and Moonlight client test")

[Ask for help](/#consult) with your Sunshine version and session status so the next step is targeted.
