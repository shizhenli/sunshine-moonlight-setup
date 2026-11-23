---
title: "Moonlight Can't Find Sunshine Host: Check the Discovery Path Before Pairing"
description: "Moonlight shows no host or cannot pair with Sunshine. Walk through the discovery path step by step to isolate the failure and restore the expected outcome."
seo_title: "Sunshine Host Not Found: Fix Moonlight Discovery Before Pairing"
seo_description: "Moonlight shows no host or cannot pair with Sunshine. Walk through the discovery path step by step to isolate the failure and restore the expected outcome."
keywords:
  - "sunshine host not found"
date: 2026-11-23T12:07:04+08:00
publishDate: 2026-11-23T12:07:04+08:00
draft: false
categories:
  - "Game Streaming"
category_slug: "game-streaming"
---

You are at the Moonlight client, expecting to see your Sunshine host, but the list is empty or pairing fails, and you want to restore the expected outcome: Moonlight cannot find the host.

## Confirm the Host Is Actually Reachable

Start on the Sunshine machine. Open a terminal and run `ipconfig` (Windows) or `ip addr` (Linux) to note the local IPv4 address. Then, from the Moonlight device, ping that address. If the ping fails, the problem is network-level: check that both devices are on the same subnet, that the host firewall allows ICMP, and that no VPN is splitting traffic. If ping succeeds, move on.

## Verify Sunshine Is Listening

On the host, confirm Sunshine is running and its web UI is reachable at `https://localhost:47990`. If the page does not load, restart the Sunshine service. Next, check that the Sunshine firewall rules are active for the ports it uses (47989, 47990, 48010). A blocked port will produce exactly the symptom you see: the client broadcasts but gets no reply, so the **sunshine host not found** message appears.

## Test Discovery Directly

In Moonlight, use the manual add option and enter the host IP address instead of relying on automatic discovery. If the host appears and pairing starts, automatic discovery is the failing layer—often mDNS or broadcast filtering on the router. If manual add also fails, the issue is the port or service, not discovery.

## Verification Test

After any change, return to Moonlight and refresh the host list. Success means the Sunshine host appears within a few seconds and pairing completes. If it still does not, note the exact error shown.

## Rollback Note

If a firewall or router change makes things worse, revert that single change before trying another. Keep a note of the original rule so you can restore it.

If these checks do not isolate the failure,

![A Windows gaming PC with Sunshine and a Moonlight client showing stream settings](/images/service-detail-960.webp "Sunshine host and Moonlight client test")

[Ask for help](/#consult) with your ping result and port status.
