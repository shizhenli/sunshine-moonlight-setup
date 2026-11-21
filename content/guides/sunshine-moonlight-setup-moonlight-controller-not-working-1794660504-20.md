---
title: "Moonlight Controller Not Working: Diagnose Input Before Reconnecting"
description: "Stream runs but controller input never reaches the Sunshine host? Follow these checks to isolate the moonlight controller not working fault and restore input."
seo_title: "Moonlight Controller Not Working in Stream? Fix Input Delivery"
seo_description: "Stream runs but controller input never reaches the Sunshine host? Follow these checks to isolate the moonlight controller not working fault and restore input."
keywords:
  - "moonlight controller not working"
date: 2026-11-21T15:52:56+08:00
publishDate: 2026-11-21T15:52:56+08:00
draft: false
categories:
  - "Game Streaming"
category_slug: "game-streaming"
---

You start a Moonlight stream, the host desktop appears, but your controller does nothing—no movement, no button presses—so you are stuck before any controlled diagnosis is done.

## Confirm the controller is seen by the client

Connect the controller and open Moonlight's input settings before starting a stream. If the controller appears and responds in the client menu, the device is detected; if it is missing, the problem is local to the client or cable, not Sunshine. Unplug and replug, then recheck.

## Check the host input backend

On the Sunshine host, open the web UI and review the input configuration. Confirm the controller is recognized by the operating system first. If the OS does not list it, Sunshine cannot forward it. Restart the Sunshine service after any change so the input backend reloads.

## Separate pairing from input

A paired session can still fail input delivery. Disconnect the session, reconnect, and test one button immediately. If input works for a moment then stops, note that timing—it points to a backend conflict rather than pairing.

## Verification test

Start a stream and press a single direction on the controller. Expected result: the host cursor or game character moves. If nothing happens, the **moonlight controller not working** fault is confirmed at the input layer. Repeat once after restarting Sunshine to rule out a stale session.

## Rollback and recovery

If changes make things worse, revert the input backend to its previous setting and restart the service. Keep a note of the original configuration so you can restore it. If the controller still fails after these checks,

![A Windows gaming PC with Sunshine and a Moonlight client showing stream settings](/images/service-detail-960.webp "Sunshine host and Moonlight client test")

[Ask for help](/#consult) with your client and host details.
