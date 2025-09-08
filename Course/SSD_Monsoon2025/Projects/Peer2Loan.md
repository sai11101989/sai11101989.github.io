**Project:** Peer2Loan — Month-on-Month Pooled Lending (ChitFund-style, No Dividend)

**Context:**
Small community groups want to **pool a fixed amount every month** and, in each cycle, one member receives the **entire pot** (their “turn”). Over the full duration, everyone contributes equally and receives the full pot exactly once. Unlike traditional chit funds, **there is no dividend/auction**—turn order is predetermined or decided by transparent rules. The goal is to provide a **trustworthy, auditable tracker** for contributions, turn assignment, payouts, and defaults.

**Input:**

* **Group setup:** name, currency, members, monthly contribution, group size, start month, duration (months = group size), payment window (e.g., 1st–7th), penalty rules, turn-order policy (fixed, randomized, or rule-based like “highest need first” with admin approval).
* **Member details:** identity, contact, preferred payout account, availability, emergency contact.
* **Cycle data:** who paid, when, proof of payment, arrears/penalties, payout executed (Y/N), payout proof, notes.
* **Policy toggles:** grace periods, auto-reminders, late fee formula, replacement member rules, dispute flagging.

**Output:**

* **Cycle dashboard:** who has paid, who’s pending, pot total, payout recipient, cutoff timers.
* **Member ledger:** contributions-to-date, arrears, penalties, payout status, net position.
* **Group ledger:** month-wise pools, payouts, variances, cashflow timeline.
* **Alerts & reminders:** contribution due, late fee triggered, payout scheduled/completed.
* **Summary report:** plain-English snapshot (e.g., “Month 3: 10/12 paid; Pot ₹120,000; Payout to Asha scheduled on 10-Oct; 2 pending with late fee ₹200 each.”)

**Technology Stack:**

* **Frontend:** HTML, CSS, JavaScript (upgrade path to React for dashboards, modals, and calendars).
* **Backend:** Node.js/Express for group logic, turn scheduling, payments workflow, notifications.
* **Database:** MongoDB (collections for groups, members, cycles, payments, payouts, penalties, audit logs).
* **Integrations (optional):** payment links/UPI reference capture (no custody), email/SMS/WhatsApp reminders, iCal export for schedule, simple KYC store, webhooks to spreadsheets.

**Chronology of Tasks:**

1. **Create group**: define monthly contribution, duration, member list, rules, and turn-order policy.
2. **Invite members**: each confirms join & payout account; calendar of all months is generated.
3. **Monthly cycle opens**: auto-reminders sent; members record contributions (with proof).
4. **Pot readiness check**: when all (or quorum) paid, system **confirms payout recipient for this month** per turn order; logs payout execution (reference/proof).
5. **Handle exceptions**: late payments → penalties; missed payments → arrears; optional soft lock until arrears cleared; admin can reassign turn if rules allow.
6. **Productivity tracker**: show streaks (on-time contributions), completion %, forecast dates, and upcoming turns; personal net position card.
7. **Close group**: after last month, finalize ledgers and generate audit pack (CSV/PDF).

**Stakeholders:**

* **Organizer (Admin/Lead):** sets up group, rules, approves exceptions, finalizes payouts.
* **Members (Contributors/Beneficiaries):** pay monthly, receive one full payout turn, view ledgers and schedules.
* **Auditor/Observer (optional):** read-only access to ledgers for transparency.

**Team Size:** 5

**Point of Contact:** Sai Anirudh Karre (saianirudh.karre@iiit.ac.in)
