---
title: "Moonlight Controller Not Working: Verify Input Delivery Before Reconnecting"
description: "Controller input not reaching the host in Sunshine Moonlight? Follow these checks to verify input delivery and restore controller function in stream."
seo_title: "Moonlight Controller Not Working: Fix Input Delivery in Stream"
seo_description: "Controller input not reaching the host in Sunshine Moonlight? Follow these checks to verify input delivery and restore controller function in stream."
keywords:
  - "moonlight controller not working"
date: 2026-11-25T11:06:52+08:00
publishDate: 2026-11-25T11:06:52+08:00
draft: false
categories:
  - "Game Streaming"
category_slug: "game-streaming"
---

You start a Sunshine stream in Moonlight, the video plays fine, but your controller does nothing—this guide focuses on that exact input-delivery failure.

## Check the controller in Moonlight's input settings

Before reconnecting, open Moonlight's settings and confirm the controller is detected. On the client, go to Settings > Input and look for your controller listed under Gamepads. If it is missing, the problem is client-side: reconnect the controller, try a different USB port or Bluetooth pairing, and verify it works in another app. If it appears but input still fails, proceed to the host.

## Verify Sunshine sees the controller

On the Sunshine host, open the Sunshine web UI and check the Input section. A connected controller should appear as an available device. If it does not, the host is not receiving the device—ensure the controller is connected to the host machine, not just the client, when using a local setup. If it appears on both sides but the stream ignores it, the input stream is being dropped during session negotiation.

## Run a controlled verification test

Disconnect the current stream completely. Reconnect the controller, then start a new Moonlight session. Open a simple input tester on the host (such as a gamepad tester page) and press each button. If inputs register on the host, delivery is restored. If not, note whether the controller appears in Moonlight's input list—this tells you which side to troubleshoot next.

## Rollback and recovery

If changes make things worse, revert to your previous Moonlight and Sunshine versions and reconnect. Keep a note of the working configuration before adjusting input settings so you can restore it.

If the **moonlight controller not working** issue persists after these checks,

![A Windows gaming PC with Sunshine and a Moonlight client showing stream settings](/images/service-detail-960.webp "Sunshine host and Moonlight client test")

[Ask for help](/#consult) with your Moonlight input list and Sunshine UI details.
