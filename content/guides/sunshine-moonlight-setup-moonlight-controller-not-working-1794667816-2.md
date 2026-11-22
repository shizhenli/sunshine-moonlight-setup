---
title: "Moonlight Controller Not Working in Stream: Isolate Input Delivery"
description: "Troubleshoot Moonlight controller not working in stream: verify host input, client detection, and Sunshine gamepad settings to restore controller input."
seo_title: "Moonlight Controller Not Working in Stream: Fix Input Delivery"
seo_description: "Troubleshoot Moonlight controller not working in stream: verify host input, client detection, and Sunshine gamepad settings to restore controller input."
keywords:
  - "moonlight controller not working"
date: 2026-11-22T12:07:14+08:00
publishDate: 2026-11-22T12:07:14+08:00
draft: false
categories:
  - "Game Streaming"
category_slug: "game-streaming"
---

You are streaming from your Sunshine host to a Moonlight client, but the game ignores your controller even though the video plays fine.

## Check the host first
On the Sunshine host, open a local gamepad tester (or the OS controller panel) without Moonlight running. Press buttons and move sticks. If the host does not see input, fix the controller connection there first; Moonlight cannot forward a device the host never receives. If the host sees input locally, proceed.

## Confirm the client detects the controller
On the Moonlight client, open the app's input settings or a local tester. Press buttons. If the client shows no input, reconnect the controller and try a different USB port or Bluetooth pairing. If the client detects input but the stream does not, the problem is in Sunshine's input forwarding.

## Check Sunshine's gamepad configuration
In the Sunshine web UI, go to Configuration > Input and confirm gamepad input is enabled. If you use a virtual gamepad, ensure it is selected and not conflicting with a physical device. Save changes and restart the Sunshine stream.

## Verification test
Reconnect Moonlight, start a stream, and open the host's gamepad tester again. Press a button. The host tester should register the press. If it does, controller input is restored. If not, note whether the client tester still shows input; that tells you whether the break is at the client or host.

## Rollback note
If changes to Sunshine input settings made things worse, revert to the previous configuration and restart the host service before retesting.

If these checks do not resolve your **moonlight controller not working** issue,

![A Windows gaming PC with Sunshine and a Moonlight client showing stream settings](/images/service-detail-960.webp "Sunshine host and Moonlight client test")

[Ask for help](/#consult) with your host OS, client device, and connection type.
