---
title: "Sunshine Host Not Found: Diagnose Moonlight Discovery Before Pairing"
description: "Moonlight can't find your Sunshine host? Follow these practical checks to diagnose discovery, verify the fix, and recover if needed."
seo_title: "Sunshine Host Not Found: Fix Moonlight Discovery Before Pairing"
seo_description: "Moonlight can't find your Sunshine host? Follow these practical checks to diagnose discovery, verify the fix, and recover if needed."
keywords:
  - "sunshine host not found"
date: 2026-11-22T09:06:47+08:00
publishDate: 2026-11-22T09:06:47+08:00
draft: false
categories:
  - "Game Streaming"
category_slug: "game-streaming"
---

You're on the Moonlight client, trying to connect to your Sunshine host, but Moonlight shows no host or fails to pair. Here's how to diagnose the discovery step before you change anything else.

## Check the basics on the host

On the Sunshine machine, confirm the service is running and the web UI is reachable at its local address. If the UI loads, Sunshine is alive. Next, verify the host and client are on the same subnet and that the host firewall allows Sunshine's ports. On Windows, check that the private network profile is active; on Linux, confirm the service is enabled and not blocked by ufw or firewalld. If the host has multiple network adapters, note which IP Moonlight should see.

## Test discovery directly

From the Moonlight client, try adding the host by IP address instead of relying on automatic discovery. If the manual IP entry works, discovery is the failing layer, not pairing. If it fails, ping the host IP and check that ICMP or the relevant port responds. A successful ping but failed manual add points to a port or firewall issue; a failed ping points to network isolation or a wrong IP.

## Interpret the result

If Moonlight still reports **sunshine host not found** after a manual IP attempt, the client cannot reach the host at all. Recheck the host IP, subnet mask, and any VPN or VLAN separation. If manual add succeeds but auto-discovery does not, focus on mDNS or broadcast settings rather than pairing.

## Verification test

Restart Sunshine, then restart the Moonlight client. Attempt discovery again. Success means the host appears and pairing can proceed. If it does not, repeat the manual IP add to confirm the host is reachable.

## Rollback and recovery

If changes make things worse, revert firewall rules and network profile changes to their previous state, then restart both services. Keep a note of the working IP and port before further edits. For guided diagnosis,

![A Windows gaming PC with Sunshine and a Moonlight client showing stream settings](/images/service-detail-960.webp "Sunshine host and Moonlight client test")

[Ask for help](/#consult).
