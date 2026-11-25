---
title: "Moonlight Black Screen After Sleep: Recover the Host Frame Without Rebooting"
description: "Fix Moonlight black screen after sleep by checking the host frame, display wake, and encoder state, then verify with a windowed test and roll back safely."
seo_title: "Moonlight Black Screen After Sleep: Recover the Host Frame"
seo_description: "Fix Moonlight black screen after sleep by checking the host frame, display wake, and encoder state, then verify with a windowed test and roll back safely."
keywords:
  - "moonlight black screen after sleep"
date: 2026-11-25T09:06:57+08:00
publishDate: 2026-11-25T09:06:57+08:00
draft: false
categories:
  - "Game Streaming"
category_slug: "game-streaming"
---

You wake the Sunshine host, reconnect Moonlight, and get a black frame instead of your desktop.

## Check the host display state first
On the Sunshine host, press a key or move the mouse, then watch the monitor connected to the host. If the physical screen stays black, the display did not wake; wake it manually and reconnect. If the physical screen shows the desktop but Moonlight stays black, the host frame is being captured incorrectly, so continue below.

## Confirm the capture source
Open Sunshine and check which display or capture method is selected. If the host has multiple monitors, confirm the selected display is the one that woke. Switch to the active display, save, and reconnect. A correct result is a visible desktop in Moonlight within a few seconds; a black frame means the capture source is still stale.

## Reset the encoder after sleep
Stop the current stream, then restart the Sunshine service or exit and relaunch Sunshine. This clears the encoder session that often survives sleep in a broken state. Reconnect and check again. If the frame appears, the encoder was the cause; if not, note the exact behavior before changing more settings.

## Verification test
Start a stream in windowed mode at a lower resolution. If the desktop appears there but not fullscreen, the issue is display mode switching, not capture. If both stay black, return to the host display check.

## Rollback note
If a recent display or encoder change caused the problem, revert that single setting and retest before making further changes. This keeps the **moonlight black screen after sleep** diagnosis reversible.

If these steps do not restore the frame,

![A Windows gaming PC with Sunshine and a Moonlight client showing stream settings](/images/service-detail-960.webp "Sunshine host and Moonlight client test")

[Ask for help](/#consult) with your host display layout and Sunshine version.
