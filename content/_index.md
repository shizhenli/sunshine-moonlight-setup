---
title: Sunshine Moonlight Setup
seo_title: Sunshine Moonlight Help | Black Screen After Sleep
seo_description: Remote help for Moonlight black screens after Windows sleep, display changes, and encoder resets.
keywords:
- moonlight black screen after sleep
- sunshine not waking
- moonlight no video
hero_kicker: GAME STREAMING
hero_h1: Moonlight goes black after the host sleeps?
hero_lead: Wake the Windows host, confirm the display and encoder state, then verify picture, sound, and controller on one client.
hero_proof:
- One Windows host and one client
- Wake, display, and encoder checked
- Picture, sound, and controller verified
hero_alt: Racing game on a television, tablet, and controller in a dark room
hero_title: Game streaming across a television, tablet, and controller
body_alt: A Windows gaming PC with Sunshine and a Moonlight client showing stream settings
body_title: Sunshine host and Moonlight client test
body_caption: The client must show picture, sound, and controller input after the host wakes.
failures_kicker: THE THREE FAILURES WE SEE
failures_heading: What is going wrong?
test_kicker: HOW WE TEST
test_heading: Find the failing layer, then prove the fix.
scope_kicker: SERVICE SCOPE
scope_heading: What is included
scope_note: The session covers one agreed device and one verified path. Anything outside the written scope is quoted separately before work starts.
faq_kicker: FAQ
faq_heading: Before you book
consult_heading: Tell us what is happening.
consult_lead: Send the device, software, exact symptom, and what you have already tried. We will confirm scope and a fixed quote before booking.
form_placeholder: Device, software version, exact symptom, and what you have tried.
first_guide_url: /guides/sunshine-moonlight-setup/
symptoms:
- title: Black screen after wake
  text: Moonlight connects, but the client shows a black frame after the host sleeps or the monitor turns off.
- title: Video returns without audio
  text: The desktop appears, but game audio stays on the host or disappears from the client.
- title: Controller input is missing
  text: The stream works, but the client controller does not reach the game.
checks:
- title: Wake the host first
  text: Send a wake packet or wake the PC manually, wait for Windows to finish resume, then connect. A streaming client is not a reliable wake controller.
- title: Check the display and encoder
  text: Confirm the host has an active display and Sunshine is running. Look for encoder errors after resume, not only at launch.
- title: Set a virtual display if needed
  text: If the physical monitor sleeps, use a persistent virtual display or prevent the display from powering off during streaming.
- title: Test one client end to end
  text: Verify video, audio, and controller in the same session, then disconnect and reconnect once.
included:
- One Windows host and one Moonlight client
- Wake and display-state diagnosis
- Encoder and audio check
- Controller and reconnect verification
excluded:
- Installing a new GPU
- Repairing Windows sleep disorders
- Guaranteeing every game or client
- Network cabling in another building
faqs:
- q: Why does it work before sleep but not after?
  a: Windows may resume with no active display, or Sunshine's encoder may not recover. The host state after wake is the first check.
- q: Should I disable sleep entirely?
  a: It can be a temporary test, not the only fix. We identify whether the failure is wake, display, encoder, or client.
- q: Can you fix my Wi-Fi?
  a: We check the local host/client path and recommend a wired connection where possible. Router or ISP changes are outside this session.
---
