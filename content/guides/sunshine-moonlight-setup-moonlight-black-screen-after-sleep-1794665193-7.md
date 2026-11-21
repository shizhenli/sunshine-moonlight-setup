---
title: "Moonlight Black Screen After Sleep: Capture the Host Frame Before Reconnecting"
description: "Troubleshoot Moonlight black screen after sleep by capturing the host frame, checking Sunshine's display and encoder state, and verifying recovery."
seo_title: "Moonlight Black Screen After Sleep: Fix the Black Frame"
seo_description: "Troubleshoot Moonlight black screen after sleep by capturing the host frame, checking Sunshine's display and encoder state, and verifying recovery."
keywords:
  - "moonlight black screen after sleep"
date: 2026-11-21T15:56:04+08:00
publishDate: 2026-11-21T15:56:04+08:00
draft: false
categories:
  - "Game Streaming"
category_slug: "game-streaming"
---

You wake the Sunshine host, reconnect Moonlight, and get a black frame even though the stream reports connected.

## Capture the host frame first

Before touching Moonlight, look at the host's own screen. If the host display is also black, the problem is upstream of streaming: wake the monitor with a keypress or mouse movement, then confirm the desktop is visible locally. If the host shows a normal desktop but Moonlight stays black, the host is capturing the wrong display or a sleeping output.

## Check Sunshine's display and encoder state

Open the Sunshine status page on the host and review the active display and encoder entries. A display that still lists a disconnected or sleeping output means Sunshine is capturing an empty surface. Stop the stream, reselect the active display in Sunshine, and start a fresh session rather than reconnecting to the old one. Then check the encoder line: if it shows a stale session or repeated errors after wake, restart the Sunshine service so it rebuilds the capture pipeline.

## Verify with a controlled test

Put the host to sleep, wake it, and wait until the local desktop is fully drawn before connecting. Start one Moonlight session and watch the first ten seconds. A visible desktop confirms the fix; a black frame that persists past ten seconds means capture is still bound to the wrong output, so repeat the display reselection.

## Rollback and recovery

If changes make things worse, restore your previous Sunshine display and encoder settings and restart the service. Keep a note of the working configuration so you can return to it after future sleep cycles. For a guided diagnosis of your specific setup,

![A Windows gaming PC with Sunshine and a Moonlight client showing stream settings](/images/service-detail-960.webp "Sunshine host and Moonlight client test")

[Ask for help](/#consult).

A persistent **moonlight black screen after sleep** usually clears once the host frame is confirmed locally and Sunshine is pointed at the live display.
