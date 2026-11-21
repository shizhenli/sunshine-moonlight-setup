---
title: "Moonlight Black Screen After Sleep: Capture the Host Frame Before You Reconnect"
description: "Fix a Moonlight black screen after sleep by capturing the host's frame, checking the display and encoder state, and verifying recovery without re-pairing."
seo_title: "Moonlight Black Screen After Sleep: Host Frame Check"
seo_description: "Fix a Moonlight black screen after sleep by capturing the host's frame, checking the display and encoder state, and verifying recovery without re-pairing."
keywords:
  - "moonlight black screen after sleep"
date: 2026-11-21T15:52:56+08:00
publishDate: 2026-11-21T15:52:56+08:00
draft: false
categories:
  - "Game Streaming"
category_slug: "game-streaming"
---

You put the Sunshine host to sleep, wake it, and Moonlight connects but shows only a black frame, so you are stuck before any controlled diagnosis.

## Capture the host frame first

Do not reconnect yet. On the Sunshine host, open a local session and confirm the desktop is actually rendering. If the host monitor is dark or the session is locked, the stream is faithfully showing a black frame. Unlock the host and wait for the desktop to appear before touching Moonlight.

Next, check the Sunshine log for the last capture or encoder line after wake. A line showing the display was reinitialized but no frame was submitted means the capture source did not recover. A line showing frames submitted but a black image means the encoder or GPU path is the problem. Record which one you see; that distinction decides the next step.

## Test with a known-good frame

On the host, open a bright window or a solid white image full screen. Reconnect Moonlight and watch whether that frame appears. If it does, the display recovered and the earlier black frame was a stale capture. If it stays black, stop the Sunshine service, start it again, and reconnect. A frame appearing after restart confirms the capture source needed reinitialization.

## Verify and recover

Run one final check: sleep the host, wake it, and connect once. The expected result is the host desktop, not a black frame. If the black frame returns, revert any recent display or encoder change you made before this test, then repeat. This keeps the host in a known state while you isolate the cause.

If the frame still fails after a service restart and a rollback,

![A Windows gaming PC with Sunshine and a Moonlight client showing stream settings](/images/service-detail-960.webp "Sunshine host and Moonlight client test")

[Ask for help](/#consult) with the log line you captured. That single detail turns a **moonlight black screen after sleep** into a specific, fixable fault.
