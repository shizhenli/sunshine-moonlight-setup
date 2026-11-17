---
title: "Moonlight Can't Find Sunshine Host: Fix the Discovery Step Before Pairing"
description: "Moonlight shows no host or cannot pair with Sunshine? Follow these checks to fix the discovery step and restore the connection."
seo_title: "Sunshine Moonlight Not Connecting: Fix Host Discovery"
seo_description: "Moonlight shows no host or cannot pair with Sunshine? Follow these checks to fix the discovery step and restore the connection."
keywords:
  - "sunshine moonlight not connecting"
date: 2026-11-17T09:22:55+08:00
publishDate: 2026-11-17T09:22:55+08:00
draft: false
categories:
  - "Game Streaming"
category_slug: "game-streaming"
---

You are running Sunshine on your host PC and Moonlight on your client, but Moonlight cannot find the host and you are stuck before any controlled diagnosis.

## Check the basics first

Confirm both devices are on the same local network. On the host, open Sunshine and verify it is running and shows a green status. If Sunshine is not running, start it and wait 10 seconds. On the client, open Moonlight and refresh the host list. If the host still does not appear, proceed.

## Verify network visibility

On the host, find its local IP address (for example, 192.168.1.50). On the client, open a terminal or command prompt and ping that IP. A successful ping means the network path is open. If ping fails, check that both devices are on the same subnet and that no guest network isolation is enabled on your router.

## Check firewall and ports

Sunshine uses TCP port 47989 and UDP ports 47998-48000. On the host, ensure these are allowed in the firewall for both private and public profiles if necessary. Temporarily disabling the firewall for a test can confirm whether it is blocking discovery. If the host appears after disabling, re-enable the firewall and add explicit allow rules.

## Add the host manually

In Moonlight, use the add host option and enter the host IP address manually. If the host then appears, the issue is limited to automatic discovery (mDNS). This is a common cause of **sunshine moonlight not connecting** when the host is reachable but not broadcast.

## Verification test

After adding the host manually, attempt to pair. If pairing succeeds, the connection is restored. If it still fails, note the exact error shown.

## Rollback and recovery

If manual addition does not help, remove the manually added host from Moonlight and restart both Sunshine and Moonlight. Revert any firewall changes you made for testing. Then retry the automatic discovery step.

If the host remains invisible,

![A Windows gaming PC with Sunshine and a Moonlight client showing stream settings](/images/service-detail-960.webp "Sunshine host and Moonlight client test")

[Ask for help](/#consult) with your network details and error messages.
