---
title: "Controller Input Not Reaching Host in Sunshine Moonlight Stream"
description: "Controller input stops reaching the Sunshine host during a Moonlight stream. Follow these checks to diagnose and restore input delivery."
seo_title: "Moonlight Controller Not Working: Fix Input Delivery in Stream"
seo_description: "Controller input stops reaching the Sunshine host during a Moonlight stream. Follow these checks to diagnose and restore input delivery."
keywords:
  - "moonlight controller not working"
date: 2026-11-23T11:07:02+08:00
publishDate: 2026-11-23T11:07:02+08:00
draft: false
categories:
  - "Game Streaming"
category_slug: "game-streaming"
---

You start a Moonlight stream from your Sunshine host, the video plays fine, but your controller does nothing in the game. This is a common **moonlight controller not working** symptom where input never reaches the host, and it usually comes down to one of three layers: client detection, host input injection, or the stream session itself.

## Check the Client-Side Controller Detection

First, confirm Moonlight sees the controller before you connect. Open Moonlight's settings and look at the input or controller section. If the controller is listed, detection works and the problem is downstream. If it is not listed, try a different USB port or cable, and on Windows check Game Controllers in Control Panel to confirm the device reports there. A controller that does not appear in either place will never reach Sunshine.

## Verify the Host Input Path

On the Sunshine host, open the Sunshine web UI and check the input settings. Make sure the correct input driver is selected for your platform; on Windows this is usually ViGEmBus. If ViGEmBus is missing or outdated, Sunshine cannot create a virtual controller, so the stream runs but input is dropped. Install or repair ViGEmBus, then restart the Sunshine service. Also confirm no other app, such as Steam Input or DS4Windows, is exclusively grabbing the controller on the host.

## Run a Verification Test

Disconnect and reconnect the Moonlight session after any change. Open a simple input tester on the host, such as the Windows game controller panel, and press buttons on your controller. If the tester responds, input delivery is restored. If it does not, the session is still not injecting input.

## Rollback and Recovery

If a recent Sunshine update or ViGEmBus change caused this, roll back that component and restart the service before testing again. Keep a note of the working versions so you can return to them.

If these steps do not restore input,

![A Windows gaming PC with Sunshine and a Moonlight client showing stream settings](/images/service-detail-960.webp "Sunshine host and Moonlight client test")

[Ask for help](/#consult) with your host OS, Sunshine version, and controller model.
