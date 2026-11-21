---
title: "Moonlight Controller Not Working: Verify Input Reaches the Sunshine Host"
description: "Stream runs but controller input never reaches the Sunshine host? Follow this focused check to confirm whether Moonlight or the host is dropping input, then restore control."
seo_title: "Moonlight Controller Not Working in Stream? Fix Input Delivery"
seo_description: "Stream runs but controller input never reaches the Sunshine host? Follow this focused check to confirm whether Moonlight or the host is dropping input, then restore control."
keywords:
  - "moonlight controller not working"
date: 2026-11-21T15:52:56+08:00
publishDate: 2026-11-21T15:52:56+08:00
draft: false
categories:
  - "Game Streaming"
category_slug: "game-streaming"
---

You start a Moonlight stream to your Sunshine host, the video looks fine, but your controller does nothing in the game. This is a focused check for that single failure: input leaving the client but not arriving at the host.

## Confirm the controller is seen by the client

Connect the controller, then open Moonlight's settings and look at the input or controller section. If the controller is listed, Moonlight recognizes it; if not, the problem is before streaming and you should reconnect the device or try another USB port. Also test the controller in a local game on the client device to rule out a dead battery or cable.

## Check the host input path

On the Sunshine host, open the Sunshine web UI and review the input configuration. Confirm the controller appears there while the stream is active. If the host lists no controller, Sunshine is not receiving the device, which points to the client-to-host input channel rather than the game. Restart the stream once after connecting the controller, since some setups only enumerate input at session start.

## Verification test

With the stream running, open a simple input tester on the host, such as a gamepad diagnostic page, and press each button and stick. If inputs register there but not in the game, the issue is the game's controller profile; if nothing registers, the input path is still broken. This separates a **moonlight controller not working** fault from a game-specific binding problem.

## Rollback and recovery

If a recent Sunshine update or configuration change caused this, restore your previous Sunshine config backup and restart the host service. Keep the old config until the controller works again so you can revert cleanly.

If these checks leave input still missing,

![A Windows gaming PC with Sunshine and a Moonlight client showing stream settings](/images/service-detail-960.webp "Sunshine host and Moonlight client test")

[Ask for help](/#consult) with your client and host details.
