---
title: "Sunshine Moonlight Not Connecting: Fix the Host Discovery Step"
description: "Moonlight can't find your Sunshine host? Follow these practical checks to diagnose host discovery, pairing, and firewall issues before reconnecting."
seo_title: "Sunshine Moonlight Not Connecting: Fix Host Discovery"
seo_description: "Moonlight can't find your Sunshine host? Follow these practical checks to diagnose host discovery, pairing, and firewall issues before reconnecting."
keywords:
  - "sunshine moonlight not connecting"
date: 2026-11-14T19:41:26+08:00
publishDate: 2026-11-14T19:41:26+08:00
draft: false
categories:
  - "Game Streaming"
category_slug: "game-streaming"
---

You're running Sunshine on your PC and Moonlight on your client, but Moonlight shows no host at the "cannot find the host" step and you can't pair.

## Confirm both devices are on the same network

Check the IP address of the Sunshine host and the Moonlight client. On Windows, run `ipconfig` and look at the IPv4 address. On Moonlight, open settings and note the client IP. Both should share the same subnet, for example 192.168.1.x. If the host is on 192.168.1.20 and the client on 192.168.0.15, they are on different networks and discovery will fail. Move one device to the same network and retest.

## Verify Sunshine is running and listening

On the host, open a browser and go to `https://localhost:47990`. If the Sunshine web UI loads, the service is running. If it does not, restart the Sunshine service or relaunch the app. Next, confirm the host firewall allows Sunshine. On Windows, check that Sunshine has both private and public network permissions, or temporarily allow it through the firewall for testing.

## Test direct connection by IP

In Moonlight, choose "Add PC manually" and enter the host's IP address. If the host appears this way but not automatically, the issue is local discovery, often blocked by firewall rules or network isolation. If it still fails, the host is unreachable at the network level.

## Verification test

After any change, fully close and reopen Moonlight, then refresh the host list. A successful result is the Sunshine host appearing with a pairing prompt. Complete pairing and confirm the stream starts.

## Rollback note

If a firewall or network change breaks other services, revert the last change and retest discovery before proceeding. For guided diagnosis of this **sunshine moonlight not connecting** issue,

![A Windows gaming PC with Sunshine and a Moonlight client showing stream settings](/images/service-detail-960.webp "Sunshine host and Moonlight client test")

[Ask for help](/#consult).
