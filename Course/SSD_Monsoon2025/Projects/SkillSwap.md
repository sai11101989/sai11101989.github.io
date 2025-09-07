**Project:** SkillSwap — Peer-to-Peer Learning Exchange

**Context:**
Sharada is a graduate student who loves teaching guitar but struggles with SQL concepts. She wishes there was a simple, community-driven way to **exchange skills without money**. Her peers also have diverse talents — cooking, coding, yoga, photography — but no centralized system exists to **connect people, barter skills, and schedule learning sessions**.

SkillSwap is a peer-to-peer learning platform where people can list skills they **can teach** and skills they **want to learn**. Using a barter model, users are matched with peers for knowledge exchange. The system provides **session scheduling, online meeting integration, productivity tracking (progress, streaks, reviews), and reminders**.

For example, Sharada offers “Beginner Guitar Lessons” and searches for “SQL Basics.” She’s matched with Rahul, a Computer Science student who wants to learn guitar. They exchange sessions: Sharada teaches Rahul guitar, while Rahul teaches Sharada SQL. The system helps them agree on times, track progress, and leave feedback.

---

**Input:**

* Users sign up and create a **profile** with:

  * Skills they can teach
  * Skills they want to learn
  * Availability (time slots, time zone)
  * Preferred format (video call, in-person, chat-based)
* Requests can be made by **searching skills** or browsing available peers.
* The system then asks clarifying questions in conversational form (e.g., “How many sessions do you want?”, “What’s your availability?”, “Do you prefer weekends or weekdays?”).

---

**Output:**

* **Matchmaking result:** A list of potential peers with matching skills.
* **Session schedule:** Confirmed calendar invites (with reminders, reschedule/cancel options).
* **Progress tracker:** Dashboard showing hours learned/taught, streaks, session completion, and peer feedback.
* **Summary report:** A plain-English recap of scheduled sessions and achieved milestones (e.g., “Sharada completed 3 guitar lessons with Rahul and taught him 2 SQL sessions”).

---

**Technology Stack:**

* **Frontend:** HTML, CSS, JavaScript for the web app (React for scaling).
* **Backend:** Node.js/Express for matchmaking, scheduling, and notifications.
* **Database:** MongoDB for storing users, skills, schedules, and progress.
* **Integration:**

  * Calendar APIs (Google/Outlook) for scheduling
  * WebRTC/Zoom integration for online sessions
  * Productivity tracking using streak counters and activity logs

---

**Chronology of Tasks:**

1. Users create profiles with offered and desired skills.
2. The system matches users based on skill barter opportunities.
3. Users converse via chat to finalize details (time, format, duration).
4. The tool schedules sessions, adds them to calendars, and sends reminders.
5. During/after sessions, users log progress, mark completion, and rate peers.
6. The system updates dashboards with streaks, progress scores, and peer reviews.
7. A summary is generated to showcase exchange history (e.g., “10 hours taught, 8 hours learned”).

---

**Stakeholders:**

* **Learners/Teachers (Peers):** Both play dual roles — they can teach some skills and learn others.
* **Admin/Platform Owner:** Manages platform policies, ensures fairness in bartering, and moderates disputes.
* **Future Integrations:** Mentors/coaches (premium users) could optionally monetize their expertise while still participating in barter exchanges.

---

**Team Size:** 4
