---
title: "Moonlight Shows No Host: Diagnosing Sunshine Discovery on Your LAN"
description: "Moonlight can't find your Sunshine host? Follow these step-by-step checks to diagnose discovery, verify the fix, and recover if needed."
seo_title: "Sunshine Host Not Found: Fix Moonlight Discovery Before Pairing"
seo_description: "Moonlight can't find your Sunshine host? Follow these step-by-step checks to diagnose discovery, verify the fix, and recover if needed."
keywords:
  - "sunshine host not found"
date: 2026-11-21T15:59:12+08:00
publishDate: 2026-11-21T15:59:12+08:00
draft: false
categories:
  - "Game Streaming"
category_slug: "game-streaming"
---

You are at the Moonlight "cannot find host" screen, and pairing never starts because the host list stays empty.

## Confirm the host is actually listening

On the Sunshine machine, open the web UI (usually https://localhost:47990) and check that the service is running. If the page loads, Sunshine is up. If it does not, start the Sunshine service and retry Moonlight. A running service is the baseline; without it, discovery cannot succeed.

## Check the network path

Make sure both devices are on the same subnet. On the host, run `ipconfig` (Windows) or `ip addr` (Linux) and note the IPv4 address. On the Moonlight device, ping that address. A reply means basic reachability is fine; a timeout means you have a routing or firewall issue, not a Moonlight bug. Temporarily allow Sunshine through the host firewall for both TCP and UDP, then refresh Moonlight's host list.

## Inspect the discovery ports

Sunshine advertises over mDNS (UDP 5353) and streams over TCP 47984–47989. If your router blocks multicast or client isolation is enabled, Moonlight will never see the host. Disable AP isolation on the guest Wi-Fi or move both devices to the main network. If the host list still stays empty, this is the classic **sunshine host not found** condition, and manual pairing by IP is the next test.

## Verification test

In Moonlight, choose "Add Host" and enter the host's IPv4 address directly. If pairing succeeds, discovery is the only broken layer; if it fails, the problem is connectivity or firewall. Record which path worked so you can confirm the fix after changing network settings.

## Rollback and recovery

If a firewall or router change makes things worse, revert it and re-test the direct-IP method before continuing. For guided diagnosis,

![A Windows gaming PC with Sunshine and a Moonlight client showing stream settings](/images/service-detail-960.webp "Sunshine host and Moonlight client test")

[Ask for help](/#consult).
