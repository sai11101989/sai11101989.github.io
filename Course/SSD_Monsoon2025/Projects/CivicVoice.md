**Project:** CivicVoice — Civic Issue Reporting and Status Tracking System for E-Governance

**Context:**
Ankita is a Business Analyst working for the CityWorks municipal corporation. She coordinates across several civic departments — Roads & Transport, Water & Sewage, Power, Sanitation, Public Health, Parks & Recreation, Housing, Fire & Emergency, Environment, and Citizen Services. Citizens submit complaints daily, but these requests come in **unstructured formats**: emails, phone calls, social media posts, WhatsApp messages, or handwritten notes at the ward office. Ankita struggles to **standardize, categorize, and summarize** these reports so they can be routed effectively to the correct department.

You are tasked to design **CivicVoice**, a conversational requirement elicitation tool. It should interact with citizens in plain language to **clarify their issue**, extract the **minimum necessary details** (location, severity, evidence, impact, contact, etc.), and produce a structured summary that Ankita can forward to the right department for action.

---

**Input:**
Citizen complaints may arrive in any form (typed text, speech converted to text, uploaded description, or guided form). The tool must take this **raw/unstructured input** and, through guided conversation, probe further until all critical details are captured:

* Type of issue (e.g., pothole, broken streetlight, sewage overflow)
* Location or landmark
* Severity and urgency
* Evidence (photo, video, or description)
* Impact on citizens (safety, traffic, health, environment)
* Recurrence (is it ongoing or new)
* Contact preference and privacy level

---

**Output:**

* A **plain-English summary** of the civic issue that can be directly sent to the concerned department.
* A **structured record** (not tied to JSON/XML specifically — could be a formatted report, database entry, or PDF) for internal use by the municipality.

---

**Technology Stack:**

* **Frontend:** HTML, CSS, JavaScript to build a chat-based web interface for citizens.
* **Backend (optional):** Node.js/Express for managing conversations and storing reports.
* **Database (optional):** MongoDB or relational DB to persist complaints and responses.
* **Extensions:** Map integration for location pinning, file upload for photos, and natural language parsing for free-text input.

---

**Chronology of Tasks:**

1. Citizen initiates a conversation through the CivicVoice web interface or through phone or through image etc.
2. The system interprets the citizen’s input and starts probing with follow-up questions to elicit missing details.
3. The conversation continues until the tool has gathered all the required information for that issue type.
4. A **summary report** is generated in plain English.
5. Ankita receives the summary and forwards it to the relevant municipal department for resolution.
6. The resolution summary with evidence of resolution should be made available for people to rate and appreciate/share with rest of the citizens
7. 
---

**Stakeholders:**

* **Ankita (Business Analyst/Admin):** Reviews finalized issue summaries and forwards them to the right department.
* **Citizen/Reporter:** Provides input via free text, speech-to-text, or attachments, and interacts with the chat tool until the issue is fully described.
* **Department Officials (Consumers):** Receive structured summaries for execution and planning.

---

**Team Size:** 5

