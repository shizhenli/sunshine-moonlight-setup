---
title: "Moonlight Controller Not Working in Stream: Restore Input Delivery"
description: "Controller input not reaching the host in Moonlight? Follow these checks to restore input delivery without reinstalling everything."
seo_title: "Moonlight Controller Not Working in Stream: Fix Input Delivery"
seo_description: "Controller input not reaching the host in Moonlight? Follow these checks to restore input delivery without reinstalling everything."
keywords:
  - "moonlight controller not working"
date: 2026-11-15T19:00:17+08:00
publishDate: 2026-11-15T19:00:17+08:00
draft: false
categories:
  - "Game Streaming"
category_slug: "game-streaming"
---

You start a stream from your Sunshine host, the video appears, but your controller presses do nothing in the game. This is a common **moonlight controller not working** symptom where the stream is fine but input never reaches the host.

## Check the client-side controller handoff

First, confirm Moonlight sees the controller. In Moonlight, open Settings and look at the Input section. If your controller is listed and shows recent activity, the client recognizes it. If it is missing, reconnect it and reopen the stream. Next, check whether the stream was started with the controller already connected; some setups only capture devices present at launch.

## Check Sunshine's input configuration

On the host, open the Sunshine web UI and review the Input settings. Make sure the correct input method is selected for your session type. If you use a virtual gamepad, verify it is enabled and that the host game recognizes it. Also confirm no other app on the host is capturing the controller exclusively.

## Run a verification test

Open a simple test target on the host, such as a controller tester page or the host's gamepad settings screen. Press buttons and watch for input registration. If input appears there but not in the game, the issue is game-level, not Sunshine or Moonlight. If nothing registers, return to the previous checks.

## Rollback and recovery

If you changed input settings, revert them one at a time and retest after each change. Keep a note of the last working configuration so you can restore it quickly.

If these steps do not restore input,

![A Windows gaming PC with Sunshine and a Moonlight client showing stream settings](/images/service-detail-960.webp "Sunshine host and Moonlight client test")

[Ask for help](/#consult) with your Moonlight and Sunshine versions and the results of the verification test.
