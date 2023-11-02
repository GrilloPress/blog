---

title: Experience-threat modelling
date: 2023-10-29 13:36 UTC
tags: "Design"
layout: weeknote
published: True
pic: "/images/lots of people.jpeg"

---

A few years ago I was deep in the midst of working on covid-19 services. Of the major changing waves and pressures on the team I remember a period with an extreme focus on security.

The pace of delivery had dropped. It was still very high but there was a sudden change in atmosphere and shift from some new security people.

One of the tasks the new security people wanted to do was a "threat modelling exercise".

It seemed interesting. Threat modelling is:

> "A structured approach of identifying and prioritizing potential threats to a system, and determining the value that potential mitigations would have in reducing or neutralizing those threats"
> - [OWASP Threat modelling Cheat Sheet](https://cheatsheetseries.owasp.org/cheatsheets/Threat_Modeling_Cheat_Sheet.html)

A team looks at the system/service they’re creating and thinks about all the ways it could be exploited or abused.

It’s part “heuristic review”. Which is sort of an expert review by common rules or experience of the reviewers.

<figure class="right noir fig-right">
    <img src="/images/lots of people.jpeg" alt="Lots of small sticky notes and people in boxes artwork by Andrew Duckworth"/>
    <figcaption>"Done right, it’s also a way of creating a narrative about highlighting the potential risks in poor experience. And the areas where mitigation and change is needed."</figcaption>
</figure>

From a user experience view, this interested me. There are lots of potential abuses of a service. As well as threats to a service. Security is one of those. But poor experience can do as much damage. Especially in clinical systems. 

And if that seems a stretch, I know of a hospital where the way date of birth was shown was directly responsible for a chain of events that led to a death of a mother in birth.

There are lots of potential threats to your service. From malicious actors to accidents and mistakes.

The scenario based workshop got me thinking of all the things that could impact a user’s experience. And importantly, how sustainable and useful the service would be to run.

Done right, it’s also a way of creating a narrative about highlighting the potential risks in poor experience. And the areas where mitigation and change is needed.

It can also help pinpoint things to get further user research and insight into.

## Running an experience modelling exercise

I’m still playing with the right process. But here is what I’ve done so far.

### Prep

1. Get/Create a journey map or service map [journey + actors and systems underneath the journey to the user]
2. Define the people providing the service
3. Define the people using the service
4. Define the people who impact/influence those using the service [partners, kids, colleagues etc.]
5. Create a list of people to involve in the review

<figure class="noir">
    <img src="/images/service blueprint.png" alt="A service blueprint with lots of comments and notes on it"/>
    <figcaption>Any size or shape of a service blueprint or similar can do. Make it something people can follow along</figcaption>
</figure>

### Workshop

Get members of the team together to run through steps and scenarios in a workshop.

Include:

- “subject matter experts”
- people involved in running the service
- people who have designed similar services
- people with tech skills. 
- people without them
- people from policy or governance teams

For health services you will want clinicians too. You can also get people who use your services. In the NHS there are many ways of reaching patient representatives.

Decide the scope of the service you want to include. If it's a change, you may want to focus on that journey more. But be careful to make sure it sits within a realistic context.

If your service is live. Do some groundwork to get data. Insights and visualise them alongside your journey.

In the workshop:

1. Brief them about the goal. Unearthing the potential or known issues and outcomes of things going bad at each step.
2. Walk them through a section of the service. If a large team, split into smaller groups
3. Get individuals to create notes on the potential ways a user could misunderstand, misuse or get each step wrong. If split into small groups, get the smaller groups to discuss and create more risks as a group.
4. Return to the room and walk through the steps articulating the risks.
5. Rank the risks by likelihood and potential impact as a group. Voting if needed.
6. Move to the next section of the service. Rinse repeat

After you’ve done either the part you want to cover, or the full service. You’ll now have a list of potential issues per step and the guessed likelihood and impact of those risks.

If you have time you can then work out what to do next.

### Deciding what to do next

If you and the team struggled to represent your users. Do more research. Or involve them in it.

If you got lots of risks. And you feel the process was realistic. The next thing to do is to choose what to do with the risks.

That is, whether to resolve, reduce, mitigate or accept a risk.

By this I mean:

- <strong>Resolve risk</strong> - Resolve a risk by removing the possibility entirely
- <strong>Reduce risk</strong> - Take steps to reduce the likelihood of something bad happening
- <strong>Mitigate damage</strong> - Take steps to reduce the potential damage in a step
- <strong>Accept risk</strong> - Accept it’s unlikely or impossible to stop

An example could be:

- <strong>Resolve risk:</strong>  don’t ask or save sensitive data so it can be leaked
- <strong>Reduce risk:</strong>  ask for two factor verification, or check against a database so it’s less likely that someone can access information they shouldn’t 
- <strong>Mitigate damage:</strong>  only display partial information. Like half a postcode. This way if it leaks the damage is limited 
- <strong>Accept risk:</strong>  Data is already public knowledge so don’t protect it. Or maybe a product replicates what’s happening in another product so accept this service would act in the same way

Doing this step helps make clear what you can do. And ranking the likelihood and impact helps frame whether to invest in solutions that resolve risks. Or when to accept or reduce risk too.

And if you do it with teams like security or clinical you can save yourself weeks and week of back and forth. And lots of misconceptions of each other's perspectives.

If you’re able to get teams like security involved in wider experience issues, you also get a good balance. Because risks are in context of journeys and likelihood.

I did this process with some clinicians and data folk for an elective care service. They wanted specific data items that would have been impossible for the users to know. Using the scenario approach, we could show them the burden it would create. And that they would stop any hospital staff from wanting to use the service. Which would be a bigger risk than the nice to have data items.