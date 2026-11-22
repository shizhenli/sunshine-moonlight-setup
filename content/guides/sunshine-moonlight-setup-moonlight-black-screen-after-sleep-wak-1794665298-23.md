---
title: "Moonlight Black Screen After Sleep: Wake, Display, Encoder — A Step-by-Step Host Frame Check"
description: "Moonlight streams a black frame after the host sleeps. Work through wake, display, and encoder checks on the Sunshine host to restore the picture."
seo_title: "Moonlight Black Screen After Sleep: Wake, Display, Encoder Fix"
seo_description: "Moonlight streams a black frame after the host sleeps. Work through wake, display, and encoder checks on the Sunshine host to restore the picture."
keywords:
  - "Moonlight Black Screen After Sleep: Wake, Display, Encoder"
date: 2026-11-22T11:06:59+08:00
publishDate: 2026-11-22T11:06:59+08:00
draft: false
categories:
  - "Game Streaming"
category_slug: "game-streaming"
---

Your Sunshine host went to sleep, Moonlight reconnected, and now you get a black frame instead of your desktop.

## Confirm the host actually woke

On the host, move the mouse and press a key. Check that the monitor shows the desktop locally. If the host display stays dark, the problem is sleep, not streaming — wake it fully before touching Sunshine. If the local screen is fine but Moonlight is black, continue.

## Check the display state

Open Windows display settings on the host and confirm the monitor is detected and active. A sleeping host can leave the virtual or physical display disabled, so Sunshine captures nothing. If the display shows as disconnected, re-enable it or replug the cable, then look for a picture in Moonlight. If it appears, you found the cause.

## Check the encoder

In the Sunshine web UI, open the encoder or capture settings and confirm the selected encoder matches your GPU. After sleep, some drivers reset and the encoder fails silently, sending black frames. Switch to another encoder, save, and reconnect. If the picture returns, the original encoder was the fault.

## Verification test

Put the host to sleep, wake it, and reconnect in Moonlight. You should see the desktop within a few seconds. Repeat once to confirm the fix holds.

## Rollback note

If a change makes things worse, revert the encoder or display setting to its previous value before continuing. For a guided diagnosis of this **Moonlight Black Screen After Sleep: Wake, Display, Encoder** failure,

![A Windows gaming PC with Sunshine and a Moonlight client showing stream settings](/images/service-detail-960.webp "Sunshine host and Moonlight client test")

[Ask for help](/#consult).
