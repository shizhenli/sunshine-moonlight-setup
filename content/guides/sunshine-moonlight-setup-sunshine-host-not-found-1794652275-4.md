---
title: "Sunshine Host Not Found: Fix Moonlight Discovery Before Pairing"
description: "Moonlight can't find your Sunshine host? Follow these practical checks to diagnose discovery, verify the fix, and recover safely without pairing blindly."
seo_title: "Sunshine Host Not Found? Fix Moonlight Discovery Step"
seo_description: "Moonlight can't find your Sunshine host? Follow these practical checks to diagnose discovery, verify the fix, and recover safely without pairing blindly."
keywords:
  - "sunshine host not found"
date: 2026-11-14T19:41:26+08:00
publishDate: 2026-11-14T19:41:26+08:00
draft: false
categories:
  - "Game Streaming"
category_slug: "game-streaming"
---

You are on the Moonlight client, expecting your Sunshine host to appear, but the list stays empty and pairing is impossible. This is a discovery failure, not a streaming failure, so work through it in order.

## Confirm the host is actually advertising
On the Sunshine machine, open the web UI and check that Sunshine is running and that its status is active. Then confirm the host and client are on the same subnet. If Sunshine is bound to a specific interface, switch it to the interface your client uses, or verify the advertised address matches that subnet. A host on 192.168.1.x will not be discovered by a client on 192.168.2.x without manual entry.

## Check firewall and discovery traffic
Sunshine uses mDNS for automatic discovery. On the host, allow Sunshine through the firewall for both private and public profiles if needed, and confirm UDP 5353 is not blocked. On the client, disable any VPN or guest-network isolation temporarily. If the host appears only after you manually add its IP in Moonlight, discovery traffic is being filtered, not the stream itself.

## Interpret the result precisely
If the host appears after manual IP entry, the fix is network filtering or interface binding. If it still does not appear, Sunshine is not listening on the expected address or the client cannot route to it. Test with a ping from client to host; a reply confirms routing, while a timeout points to subnet or firewall issues. This is the controlled diagnosis that separates a **sunshine host not found** symptom from a pairing or encoder problem.

## Verification test
Restart Sunshine, then refresh Moonlight's host list. The host should appear within about 30 seconds without manual entry. Pair once and confirm the PIN prompt completes.

## Rollback and recovery
If changes break streaming, revert the interface binding and firewall rule you last edited, then re-add the host by IP in Moonlight so you retain a working path. For deeper help,

![A Windows gaming PC with Sunshine and a Moonlight client showing stream settings](/images/service-detail-960.webp "Sunshine host and Moonlight client test")

[Ask for help](/#consult).
