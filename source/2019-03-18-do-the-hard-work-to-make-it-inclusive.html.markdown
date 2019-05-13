---
title: Do the hard work to make it inclusive
date: 2019-03-18 20:30 UTC
tags: "Design"
layout: weeknote
published: True
---

Back in August we had a challenge. We had a method of authentication that worked pretty well, but needed an NHS number.

If you have your NHS number we could be pretty sure to find you.

But NHS numbers aren’t something that everyone has to hand.

They should be on letters, prescriptions and the like.

But not everyone has had a recent appointment. Or keeps their letters. And some letters don’t include the NHS number (even though they should!). Never mind the NHS number being easy to find on a letter.

Though not a thing some users can’t get. Many users told us that they contacted their GP receptionist and after a few questions for given it. The NHS number represented a significant speed bump.

Something that stopped users being successful first time. And in the worst cases, a potential barrier.

Our challenge was to make accessing the service not rely on the NHS number.

But I didn’t want to throw away our path that worked for many.

The API we used however offered an alternative. We could get a patient by NHS number, but also by their personal details.

The details were:

<ul>
<li>name</li>
<li>date of birth</li>
<li>postcode</li>
<div>and</div>
<li>gender</li>
</ul>


Name and date of birth confronted no significant issues. We knew some users would struggle a little with postcode.

But the biggest worry was gender.

The reason the API asked for that was because it was a clinical API.

It was a requirement for the API. No “wildcard” allowed. We’d need to ask for it.

We were also told we couldn’t get around this.

Though we knew many users wouldn’t blink at this question. Our service lets users choose if their data is used for research. We don’t want to embarrass or impede anyone making that choice.

Our service is for everyone.

## New hope

In a meeting with colleagues from another service I noticed they used the same API. But weren’t asking for gender.

I pressed hard on how they got around it.

Email confirmation after the meeting we had an answer.

We could call the API several times for each gender or category stored.

The other service would have much higher traffic than ours. We had precedence and I had enough ammunition to get my way.

So, our service would do the hard work to call the API four times when a user gave us a postcode instead of an NHS number.

Several prototypes later, 800 a/b tested users later and we had confidence in our design.

Service redesigned. Service load tested. New way of using the service released.

Over one third of our users don’t bother with an irrelevant question.

Our service does the hard work to make it inclusive.
