---
title: Making NHS numbers easier to enter
date: 2018-06-08 20:30 UTC
tags: design, nhs, "NHS number"
layout: weeknote
published: false
---

## tl;dr

You can force mobile browsers to show a numerical keyboard on text inputs. You can do this by adding three attributes to your HTML.

It's not perfect so something to test the impact of.

## NHS numbers

Your NHS Number is a unique 10 digit number used to identify you and match you to your health records.

Everyone registered with the NHS in England, Wales and the Isle of Man has their own number.

I'll forgive you if you don't know yours.

You can generally find your NHS number on any letter sent to you by the NHS. You can also find it on a prescription or by logging in to a GP practice online service.

More and more services online are asking for it. Some GP practices also ask for it when you register.

But most people don't what it is.

## Three digits, three digits, four digits

As with many things, there is a well established way of showing this number.

Much like credit cards, the NHS number is always displayed in a format with two spaces like so:

<p class="nhs-number-format"><span>4</span><span>8</span><span>5</span><span> </span><span>7</span><span>7</span><span>7</span><span> </span><span>3</span><span>4</span><span>5</span><span>6</span></p>

This is to aid eligibility.

Every mention of you NHS number should feature these gaps. From letters to prescriptions.

Lots of research has gone into this subject. Some of which you can find referenced in the archived ["Common User Interface" (CUI)](https://digital.nhs.uk/data-and-information/information-standards/common-user-interface-cui).

This isn’t a unique NHS thing. Credit card numbers are also displayed in similar ways.

Long numbers are hard to remember, never mind check. If you cut the number down into smaller chunks, it is easier for a person to get right.

Usability win. Long number. A format to make it easier to read and check.

## Computers vs Humans

Unlike people, computers don't have such a problem. Checking two long numbers against each other isn't hard for a computer.

When you enter your credit card number or NHS number, the computer checks the whole number. Computers don't care. (Assuming the computer has been told to strip out all spaces from the number!).

Computers are good at checking if two things are equal.

But, because the number is printed with spaces, people copy that.

One company found that [one in five people would add credit card numbers as they saw them](https://baymard.com/blog/credit-card-field-auto-format-spaces).

That is, one in five people add spaces to a number because the physical card used them.

## Designing those online forms

Number inputs in online forms hit a problem here.

Some browsers let you type spaces, but complain when you enter them (Safari, Firefox). Some don't let you type them at all (Chrome).

This is because a number doesn't have spaces. And browsers have been designed to expect numbers like "109060" and not to accept "10 90 60".

One way round this is to use text inputs in your online form, instead of using a number field.

Behind the scenes, you make sure you check letters aren't added. And remove all spaces. Your computer does these tasks without fuss.

On a device with a keyboard this causes no issues.

Users enter their numbers and don't have to worry about those details. They don't care that numbers shouldn't have spaces.

On a mobile or tablet. This does cause issues.

## Keyboard warrior

Over half of your website visitors will be using tablets or phones. They do for the NHSUK website.

These devices don't come with physical keyboards (anymore). They have virtual ones.

[insert image of iOS keyboard]

To save space, the keyboard can show letters, numbers or a combination.

When you build your online form you select which input field type to use. From text to numbers and so on.

This decides which keyboard to show the user on your mobile or tablet.

[insert image of number field + text field]

Because our example online form is no longer using the number field, but a text one. Our mobile users no longer get a helpful number keyboard, but a text one.

1. what an NHS number is
2. why you can't use number fields really
3. but that means on mobile you don't get the right keyboard
4. here's a trick or two
5. boom!
6. Is it worth it?
  100% on Android...
  behaviour is less well defined on iOS... you will see three different types of keyboard on iOS... one thing at a time would be fine
7. browsers need to get their shit together and actually offer an easy to plug into API for HTML5 on mobiles.

    makes no sense to me that an input shouldn't allow spaces but submit without spaces...  https://www.w3.org/TR/html51/sec-forms.html#input-modalities-the-inputmode-attribute
