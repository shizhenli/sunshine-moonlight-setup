---
title: "Sunshine Host Not Found: A Step-by-Step Discovery Check for Moonlight"
description: "Moonlight shows no host or cannot pair with Sunshine? Follow these practical checks to diagnose and restore host discovery before pairing."
seo_title: "Sunshine Host Not Found? Fix Moonlight Discovery Step"
seo_description: "Moonlight shows no host or cannot pair with Sunshine? Follow these practical checks to diagnose and restore host discovery before pairing."
keywords:
  - "sunshine host not found"
date: 2026-11-16T11:06:42+08:00
publishDate: 2026-11-16T11:06:42+08:00
draft: false
categories:
  - "Game Streaming"
category_slug: "game-streaming"
---

You are stuck at the Moonlight cannot find the host step, and you want to restore the expected outcome: Moonlight cannot find the host.

## Confirm Both Devices Are on the Same Network

Open a terminal on the Sunshine host and run `ipconfig` (Windows) or `ip addr` (Linux). Note the IPv4 address and subnet mask. On the Moonlight client, run the same command. If the first three octets differ (for example, 192.168.1.x versus 192.168.0.x), they are on different subnets. Result interpretation: matching subnets mean discovery should work; mismatched subnets mean you must connect them to the same router or adjust network settings.

## Check Sunshine's Web UI and Firewall

On the host, open `https://localhost:47990` in a browser. If the page loads, Sunshine is running. Then check the firewall: on Windows, allow Sunshine through Windows Defender Firewall for both private and public networks; on Linux, ensure ports 47984-47989 and 47990 are open. Result interpretation: if the web UI fails, restart the Sunshine service; if the firewall blocks ports, Moonlight will never see the host.

## Verify Host Visibility from the Client

On the Moonlight client, open a command prompt and ping the host's IP address. A reply confirms basic connectivity. Then in Moonlight, click the add host button and enter the IP manually. Result interpretation: if manual entry works, automatic discovery is blocked (often by router AP isolation); if ping fails, the network path is broken.

## Verification Test

After these checks, restart both Sunshine and Moonlight. The host should appear in Moonlight's list within 30 seconds. If it does not, the **sunshine host not found** issue persists, indicating a deeper discovery problem.

## Rollback and Recovery

If you changed firewall rules or network settings, revert them to the previous state before further testing. Keep a note of the original configuration so you can restore it. For advanced diagnosis,

![A Windows gaming PC with Sunshine and a Moonlight client showing stream settings](/images/service-detail-960.webp "Sunshine host and Moonlight client test")

[Ask for help](/#consult).
