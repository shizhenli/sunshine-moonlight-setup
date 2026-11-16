---
title: "Sunshine Moonlight Not Connecting: Host Discovery Fails Before Pairing"
description: "Moonlight can't find your Sunshine host? Follow these practical checks to diagnose discovery and pairing issues before you reset anything."
seo_title: "Sunshine Moonlight Not Connecting: Fix Host Discovery"
seo_description: "Moonlight can't find your Sunshine host? Follow these practical checks to diagnose discovery and pairing issues before you reset anything."
keywords:
  - "sunshine moonlight not connecting"
date: 2026-11-16T09:06:38+08:00
publishDate: 2026-11-16T09:06:38+08:00
draft: false
categories:
  - "Game Streaming"
category_slug: "game-streaming"
---

You're on Moonlight, you've opened the app, and the host list is empty or pairing won't start, so you're stuck before any controlled diagnosis.

## Confirm the host is actually advertising

On the Sunshine host, open the web UI and check that the server is running and the status shows it is listening. If Sunshine is stopped or crashed, Moonlight will never see it. Restart Sunshine once and watch for a clean start with no port errors.

## Check the network path

Make sure both devices are on the same subnet, or that your router isn't isolating clients. A quick test: from another device on the same Wi-Fi, open the Sunshine web UI by its LAN IP. If that fails, the problem is the host or network, not Moonlight. Also confirm the host firewall allows Sunshine's ports; a blocked port produces exactly this no-host symptom.

## Verify the Moonlight side

In Moonlight, refresh the host list once. If the host still doesn't appear, add it manually by IP to bypass discovery. If manual add works but auto-discovery doesn't, the issue is discovery traffic (mDNS/broadcast), often blocked by the router or a VPN.

## Verification test

After any change, restart Moonlight, refresh, and confirm the host appears and a pairing PIN prompt opens. That is the expected outcome: moonlight cannot find the host is resolved when the host is listed and pairing begins.

## Rollback note

If a firewall or router change makes things worse, revert that single change and retest before trying anything else. If pairing still fails after these checks,

![A Windows gaming PC with Sunshine and a Moonlight client showing stream settings](/images/service-detail-960.webp "Sunshine host and Moonlight client test")

[Ask for help](/#consult) with your host OS, network layout, and exact error text so the **sunshine moonlight not connecting** issue can be diagnosed precisely.
