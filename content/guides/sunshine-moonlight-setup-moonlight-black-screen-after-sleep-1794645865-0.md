---
title: "Moonlight Black Screen After Sleep: Diagnose the Host Frame Before Reconnecting"
description: "Step-by-step diagnosis for a Moonlight black screen after sleep when using a Sunshine host. Check the host display state, verify frame output, and recover safely."
seo_title: "Fix Moonlight Black Screen After Sleep (Sunshine Host)"
seo_description: "Step-by-step diagnosis for a Moonlight black screen after sleep when using a Sunshine host. Check the host display state, verify frame output, and recover safely."
keywords:
  - "moonlight black screen after sleep"
date: 2026-11-14T19:41:26+08:00
publishDate: 2026-11-14T19:41:26+08:00
draft: false
categories:
  - "Game Streaming"
category_slug: "game-streaming"
---

You put the Sunshine host to sleep, woke it, reconnected Moonlight, and now the stream opens to a black frame while audio and input may still respond.

## Confirm the host is actually rendering

On the host, wake the physical display with a keypress or mouse move, then look at the monitor. If the monitor stays dark, the host resumed without an active display output, so Sunshine has nothing to capture. If the monitor shows the desktop but Moonlight is black, the capture path is the problem, not the power state.

## Check the display and capture state

Open the Sunshine web UI on the host and confirm the stream is listed as active. Then check whether the host switched to a different display or resolution after sleep. A common cause of **moonlight black screen after sleep** is the host moving the desktop to a display Sunshine is not capturing. Set the correct display as primary, keep the resolution unchanged, and stop the stream before restarting it.

## Run the verification test

Start a fresh stream from Moonlight. If the desktop appears within a few seconds, the fix held. If it is still black, stop the stream, wake the host display manually, and start again. A frame appearing only after a manual wake confirms the host display is sleeping independently of Sunshine.

## Rollback and recovery

If changes make things worse, revert the display and resolution settings to their previous values and restart the Sunshine service. Keep a note of the working configuration before you adjust anything else.

If the black frame persists after these checks,

![A Windows gaming PC with Sunshine and a Moonlight client showing stream settings](/images/service-detail-960.webp "Sunshine host and Moonlight client test")

[Ask for help](/#consult) with your host display setup and the exact step where the frame goes black.
