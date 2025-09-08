**Project:** DisasterAid — Crisis Relief Coordination Platform

**Context:**
During floods, earthquakes, or cyclones, victims and volunteers struggle to coordinate needs (food, water, medicines, shelter, rescue) with available offers from NGOs, citizen groups, and authorities. **Sulochana**, a flood victim, wants to raise a request **on behalf of many people** in her locality (multi-beneficiary request). She needs a simple way to submit details, share location, mark **SoS urgency**, and get matched quickly with the nearest verified help. Authorities also need a **live picture of crisis load**—where the needs are spiking, what resources are available, and where gaps exist—to **strategize assistance** and deploy teams effectively.

---

**Input:**

* **Citizen/Victim Requests** (single or group-based):

  * Basic details: contact, language, preferred communication (call/SMS).
  * **Location**: GPS pin / address / landmark; optional polygon/area for group coverage.
  * **Need categories**: rescue, food, water, medical, baby supplies, sanitation, shelter, power/charging, transport.
  * **Quantities & beneficiaries**: number of adults/children/elderly, special needs (medical conditions, disability, pets).
  * **Priority & SoS**: self-declared urgency plus automatic SoS detection (keywords, repeated calls for help, low-battery flag, trapped/immobile indicators).
  * **Evidence**: photos/videos/voice note; signal strength note (“low battery / poor network”).
* **NGO / Volunteer Offers**:

  * Organization/team, capacity per category (e.g., 200 food packets), coverage radius, available vehicles/boats, on-call medics, shift times, verification status.
* **Authority Inputs** (Control room):

  * Shelter locations & capacities, medical camp status, supply depots, blocked routes, weather/risk zones, official advisories.
* **Inbound Channels**: web form, chat UI, SMS/phone-logged by call center, bulk CSV (for ward officers), optional social-media intake (triaged manually).

---

**Output:**

* **Match Tickets**: each request matched to one or more offers (NGO team, shelter, ambulance), with ETA and assignee.
* **SoS Queue**: prioritized list of high-urgency items with map pins and last-contact timestamps.
* **Crisis Load Dashboard**: heatmaps of needs vs offers, unmet demand by category, predicted shortfalls, shelter occupancy, blocked routes overlay.
* **Operational Feeds**: assignment boards (New → Triaged → In-Progress → Fulfilled → Closed), team rosters, route sheets.
* **Authority Briefs**: plain-English summaries like:

  * “Zone B has 1,240 unmet food requests, 3 shelters near capacity; water demand rising 18% in last 3 hours; send 2 additional distribution teams and 1 water tanker.”
* **Receipts & Proof**: delivery confirmations (photo/signature), closure notes, audit trail.

---

**Technology Stack:**

* **Frontend:** HTML, CSS, JavaScript (upgrade path to React for real-time dashboards, maps, forms, and multilingual UI).
* **Backend:** Node.js/Express for intake, matching, triage, notifications, and audit logging.
* **Database:** MongoDB (requests, offers, assignments, shelters, teams, activity logs).
* **Real-time & Maps:** Socket.IO/WebSockets for live updates; Leaflet with OpenStreetMap for geospatial layers.
* **Integrations (as feasible):** SMS/voice provider for alerts, email notifications, iCal exports for team schedules, simple file storage for evidence, optional webhook to government systems.
* **Resilience:** Offline-first PWA for low connectivity; background sync when network returns.

---

**Chronology of Tasks:**

1. **Request Intake**: Sulochana submits a **group request** (e.g., 60 people stranded on 3rd floor, need water/food/insulin) with location and SoS.
2. **Auto-Triage & SoS Detection**: system flags SoS via rules (keywords like “trapped”, “injured”, “no food 2 days”), recency, battery note; duplicates are clustered by proximity and similarity.
3. **Offer Matching**: nearest verified NGOs with relevant capacity are suggested; the operator or auto-assign chooses best fit (considering capacity, distance, road blocks).
4. **Assignment & Routing**: ticket assigned; team sees route, shelter/clinic waypoints, contact numbers; live status updates (en route, arrived, fulfilled).
5. **Load Tracking**: dashboards update with unmet demand and capacity usage; shelters’ occupancy and supply levels are refreshed.
6. **Authority Strategy**: control room gets automated briefs and can redeploy teams, request additional supplies, open new shelters.
7. **Closure & Evidence**: deliveries recorded with proof; Sulochana can acknowledge; unresolved items escalate or reassign.
8. **Post-Event Reports**: export CSV/PDF for accountability and after-action review.

---

**Stakeholders:**

* **Victims/Reporters (e.g., Sulochana)**: submit single/group requests, track status, receive alerts.
* **NGOs/Volunteers**: publish offers/capacities, accept assignments, update progress, upload proof.
* **Authorities/Control Room**: monitor crisis load, manage shelters/resources, set priorities, issue advisories.
* **Dispatch Operators (optional role)**: triage, resolve duplicates, confirm matches, handle escalations.
* **Platform Admin**: verification, roles/permissions, data retention, incident exports.

---

**Team Size:** 5


-----
**Point of Contact:** Sai Anirudh Karre (saianirudh.karre@iiit.ac.in)
