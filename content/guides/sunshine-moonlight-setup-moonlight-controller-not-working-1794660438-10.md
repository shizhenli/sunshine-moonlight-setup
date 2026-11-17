---
title: "Moonlight Controller Not Working in Stream: Verify Input Reaches the Host"
description: "Stream runs but controller input never reaches the Sunshine host? Follow these checks to isolate the moonlight controller not working fault and restore input."
seo_title: "Moonlight Controller Not Working in Stream: Input Delivery Fix"
seo_description: "Stream runs but controller input never reaches the Sunshine host? Follow these checks to isolate the moonlight controller not working fault and restore input."
keywords:
  - "moonlight controller not working"
date: 2026-11-17T10:06:40+08:00
publishDate: 2026-11-17T10:06:40+08:00
draft: false
categories:
  - "Game Streaming"
category_slug: "game-streaming"
---

You start a stream from Sunshine to Moonlight, the video plays fine, but your controller presses never reach the host—so you are stuck at the controller does not work in stream step.

## Confirm the controller is seen by the client

Connect the controller to the Moonlight device, not the host. Open Moonlight's settings and look for the input or gamepad section. If the controller is listed, the client sees it; if not, reseat the cable or re-pair it and reopen Moonlight. A controller that never appears here cannot pass input to Sunshine.

## Check the stream input mode

In Moonlight, open the stream settings and confirm the input mode matches your controller type—for example, gamepad versus keyboard/mouse emulation. If the mode is wrong, Moonlight may send no gamepad events at all. Switch it, disconnect, and reconnect the stream.

## Verify on the host side

On the Sunshine host, open the Sunshine web UI and check the paired client's input permissions. If input is disabled for that client, enable it and save. Then reconnect from Moonlight. This is the most common cause of a **moonlight controller not working** after a settings change.

## Run the verification test

With the stream active, open a controller test page or the host's game controller panel. Press a button and watch for a response. If the host registers the press, input delivery is restored. If nothing appears, repeat the client listing check—the fault is on the Moonlight side.

## Rollback if the change breaks input

If switching input mode or permissions makes things worse, revert to the previous setting, reconnect, and retest before changing anything else.

If these steps do not restore input,

![A Windows gaming PC with Sunshine and a Moonlight client showing stream settings](/images/service-detail-960.webp "Sunshine host and Moonlight client test")

[Ask for help](/#consult) with your Moonlight version and host OS.
