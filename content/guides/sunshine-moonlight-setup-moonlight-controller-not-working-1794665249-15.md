---
title: "Moonlight Controller Not Working in Stream: Check Input Before Reconnecting"
description: "Controller input not reaching the Sunshine host? Follow these steps to diagnose and restore controller function in Moonlight streams."
seo_title: "Moonlight Controller Not Working in Stream? Fix Input Delivery"
seo_description: "Controller input not reaching the Sunshine host? Follow these steps to diagnose and restore controller function in Moonlight streams."
keywords:
  - "moonlight controller not working"
date: 2026-11-21T15:59:12+08:00
publishDate: 2026-11-21T15:59:12+08:00
draft: false
categories:
  - "Game Streaming"
category_slug: "game-streaming"
---

You're streaming from Sunshine to Moonlight, but your controller's input never reaches the host, leaving you stuck before a controlled diagnosis.

## Confirm the Controller Is Seen by Moonlight

Open Moonlight's settings and check the input device list. If your controller appears, Moonlight recognizes it. If not, try a different USB port or re-pair the controller. A controller that doesn't show here won't work in stream.

## Verify Sunshine's Input Handling

On the host, open Sunshine's web UI and go to the Input section. Ensure the correct input method is selected (e.g., ViGEmBus for virtual gamepads). If ViGEmBus isn't installed, install it and restart Sunshine. Without it, Moonlight's controller signals have no path to the host.

## Test with a Simple Input Monitor

On the host, open a gamepad tester or the Windows game controllers panel. Start a stream and press buttons. If the tester shows no input, the problem is between Moonlight and Sunshine. If it shows input but the game doesn't respond, the issue is game-specific.

## Check for Conflicting Software

Background tools like Steam Input, DS4Windows, or other controller mappers can intercept signals. Disable them temporarily and retest. If the controller works, reconfigure or exclude Moonlight from their hooks.

## Verification Test

After changes, restart both Sunshine and Moonlight, then start a stream and test in the gamepad tester. Input should register immediately. If it does, the **moonlight controller not working** issue is resolved.

## Rollback and Recovery

If a change breaks streaming, revert the last setting (e.g., switch back to the previous input method) and restart Sunshine. Keep a note of working configurations.

Still stuck?

![A Windows gaming PC with Sunshine and a Moonlight client showing stream settings](/images/service-detail-960.webp "Sunshine host and Moonlight client test")

[Ask for help](/#consult) for a guided diagnosis.
