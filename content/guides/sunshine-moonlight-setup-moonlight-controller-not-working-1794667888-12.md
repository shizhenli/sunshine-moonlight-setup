---
title: "Moonlight Controller Input Not Reaching Sunshine Host: A Step-by-Step Fix"
description: "Controller input stops reaching the Sunshine host mid-stream. Follow these checks to isolate the input path, verify with a test, and recover without losing your session."
seo_title: "Moonlight Controller Not Working in Stream: Fix Input Delivery"
seo_description: "Controller input stops reaching the Sunshine host mid-stream. Follow these checks to isolate the input path, verify with a test, and recover without losing your session."
keywords:
  - "moonlight controller not working"
date: 2026-11-24T11:07:03+08:00
publishDate: 2026-11-24T11:07:03+08:00
draft: false
categories:
  - "Game Streaming"
category_slug: "game-streaming"
---

You are streaming from Sunshine to Moonlight, the video runs fine, but your controller presses never reach the host. This is a specific input-delivery failure, not a general connectivity problem, so work through the checks below in order.

## Check the client input mode

In Moonlight, open Settings and confirm the input mode is set to the default (usually Automatic or Gamepad). If it is set to Mouse or Touch only, controller events are discarded before they leave the client. Change it, then reconnect the stream. If the controller now responds, the mode was the cause.

## Check the host input backend

On the Sunshine host, open the web UI and look at the Input section. Confirm the virtual gamepad option is enabled and that the selected backend matches your controller type. If the backend is set to a type your controller does not emulate, Sunshine receives nothing. Switch it, save, and restart the stream.

## Check for a competing input grab

Close any software on the host that captures controllers, such as overlay tools or remote-desktop utilities. These can hold the device exclusively. After closing them, reconnect and test again.

## Verification test

Open a gamepad tester on the host, not the client, and press each button and stick. If the tester shows movement, input is reaching the host and the **moonlight controller not working** symptom is resolved. If it stays silent, the failure is still on the host side.

## Rollback note

If a change makes things worse, revert the input backend to its previous value and restart Sunshine before trying another step. Keep a note of the original setting so you can restore it.

If the tester still shows nothing after these checks, the input path needs a closer look;

![A Windows gaming PC with Sunshine and a Moonlight client showing stream settings](/images/service-detail-960.webp "Sunshine host and Moonlight client test")

[Ask for help](/#consult) with your Sunshine version and controller model.
