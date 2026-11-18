---
title: "Moonlight Cannot Find the Host: A Controlled Discovery Check"
description: "Moonlight shows no host or cannot pair with Sunshine? Run this controlled discovery check to restore the expected moonlight cannot find the host step."
seo_title: "Sunshine Moonlight Not Connecting: Fix Host Discovery"
seo_description: "Moonlight shows no host or cannot pair with Sunshine? Run this controlled discovery check to restore the expected moonlight cannot find the host step."
keywords:
  - "sunshine moonlight not connecting"
date: 2026-11-18T08:06:59+08:00
publishDate: 2026-11-18T08:06:59+08:00
draft: false
categories:
  - "Game Streaming"
category_slug: "game-streaming"
---

You are stuck at the Moonlight cannot find the host step, before any controlled diagnosis has been completed, and you want to restore the expected outcome: Moonlight cannot find the host. Let's fix that specific discovery failure without changing unrelated settings.

## Confirm the host is actually advertising

On the Sunshine host, open the web UI and check that the service is running and the PIN/pairing page is reachable. Then confirm the host and client are on the same subnet; a guest Wi-Fi or VPN can silently block discovery. Interpretation: if the host UI loads locally but Moonlight still shows no host, the problem is discovery, not pairing.

## Test discovery directly

On the Moonlight client, use the add-host option and enter the Sunshine host's LAN IP address manually. If the host appears and pairing starts, mDNS discovery is failing; if it still fails, the host firewall or port is blocking the client. Check that TCP 47989 and UDP 47989/48010 are allowed on the host.

## Verification test

After correcting one variable at a time, restart Sunshine, then reopen Moonlight and refresh the host list. Success means the host appears and a pairing PIN is accepted. If it does not, stop and record the exact error before changing more settings.

## Rollback and recovery

If a firewall or network change makes things worse, revert that single change and restart both services. Keep a note of the original IP and port values so you can restore them. For a guided diagnosis of this **sunshine moonlight not connecting** state,

![A Windows gaming PC with Sunshine and a Moonlight client showing stream settings](/images/service-detail-960.webp "Sunshine host and Moonlight client test")

[Ask for help](/#consult).
