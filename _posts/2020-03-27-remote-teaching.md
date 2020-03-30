---
title: "Notes on remote/online teaching"
tags: ["teaching", "reproducible research"]
comments: true
---

## Microsoft Teams

Teams is the institutional platform for online teaching. While it does
need some polishing, it seems to do the job well (I have no experience
with anything else to compare it against). It provides stable (despite
poor wifi at home) and scaleable (up to 65 participants) participants.

The issues I have been experiencing are relatively minor: 

- it doesn't seem to synchronise between apps (between Windows and
  Linux laptops in my case);
- the chat slows down after 3 hours of usage with 60+ participants to
  a point where it becomes difficult or even impossible to use. As a
  work around, I am using a Google doc for students to type their
  questions and keep the chat for instant feedback (see below).

On the plus side

-   it has been very easy to create meetings and discussions with
    colleagues at the university and to invite external members;
-   I use it simultaneously on multiple devices, for example Windows
    laptop (for video/voice) and Linux laptop (for chat and checking my
    screen sharing) or Android phone (for video/voice) and Linux laptop
    (for chat and screen sharing).

In class, I used sticky notes to assess progress during exercises or
to check if students understood an important concept: student stick
the green sticky note when they finish an in-class exercise or
understood a concept, or the orange one otherwise. During remote
classes, I use the chat to ask for an immediate feedback and students
use thumbs up or down to agree or disagree, which work quite well.


## Software availability

The main challenge for my class wasn't actually the videoconferencing
platform. During a typical class, I exclusively have an RStudio window
open and teach/demonstrate while live-coding and using the
blackboard. The students have access to centrally managed computers
and all software (R, RStudio and required R packages are
pre-installed). Classes became remote from one week to the other, the
students were suddenly left on their own regarding software. I
suggested (and [documented](https://uclouvain-cbio.github.io/WSBIM1207/sec-anx.html)) three options:

1.  Install R/RStudio locally;
2.  Use a Renku-driven virtual machine;
3.  Use the Universal Desktop Service to access their desktop and
    software on the institution's network.

Most students opted for the local installation, with Renku in second
position and UDS last (which I also advised against as it can be very
lagging). I have to say I liked the Renku option and consider making
it the default option for other classes.


## General tips

In general, it is good to have short and well defined learning
outcomes in a course. It is even more so with remote learning and
online teaching, where it might be even more difficult for students to
remain focused (in from of a computer screen) and motivated (alone at
home). Same for videos, keep them short and sweet - here's one I
create a [short one](https://youtu.be/4OXyyMIM6A8) to address an issue
that I observed repeatedly during the lessons.

It is really important to keep in touch with the students. It is
sometimes already difficult to assess their motivation and how the
follow the class when they are present but quiet - needless to say how
difficult it is when they are at the other end of the internet. I
created a short google form to ask they opinion about the last remote
lecture, how they were coping with the home work (see below) and it
they had any suggestions to improve the online teaching/learning.

Students seem to like live courses, as opposed to pre-recorded
videos. Live lectures might require more breaks than a normal
in-person lesson. I am thus trying to set short and well defined
outcomes with breaks in-between.


## Home work

There was a long break between two lessons, and I wanted to avoid my
students to loose touch with the topic especially while being confined
at home. After checking that their schedule wasn't too demanding, I
gave a decent piece of (optional) homework. They had 5 days to
complete it. They were invited to submit their solution as an [R
markdown
document](https://uclouvain-cbio.github.io/WSBIM1207/sec-rr.html#knitr-and-rmarkdown)
by a certain time/day and those that did would get a personalised
feedback. Everybody gets a correction of the homework after the
submission period.


## Next activity

Among the suggestions I got in my Google doc (see above), somebody
suggested to have multiple choice questions as a revision for
different chapters or concepts. This reminded me of an [active
learning activity](https://youtu.be/A0HDJoE7XIE) I saw online, where
students create the questions and answer them for a double learning
opportunity. This activity seem particularly well suited for a remote
and asynchronous implementation. I will test moodle's [StudentQuiz
module](https://docs.moodle.org/38/en/StudentQuiz_module) for this.

