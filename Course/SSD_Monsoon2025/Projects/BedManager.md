**Project:** BedManager — Real-Time Hospital Bed and ICU Occupancy Management Dashboard

**Context:**
Anuradha is the ICU Manager at a large city hospital. Every day, she faces challenges managing **ICU occupancy, bed availability, patient transfers, and emergency admissions**. Critical cases often arrive unexpectedly, but without a clear view of real-time bed status, it becomes difficult to coordinate admissions quickly and efficiently. This often leads to delays in admitting patients, underutilization of certain wards, and stress for staff.

**BedManager** is a **real-time hospital bed and ICU occupancy dashboard**. It enables hospital administrators and ICU managers to **monitor occupancy across wards, track bed availability in real time, manage patient transfers, and forecast capacity needs**. The tool also integrates with hospital admission systems and provides alerts when occupancy reaches critical thresholds.

For example, Anuradha can see that out of 40 ICU beds, 35 are occupied, 3 are under cleaning, and 2 are available. A critical patient arrives in the ER, and the system automatically alerts Anuradha to the nearest available ICU bed, while also showing expected discharges within the next 12 hours.

---

**Input:**

* Real-time data feed from hospital admission/discharge systems, or manual updates from ward staff.
* Patient details when admitted (ID, department, reason for admission, estimated stay).
* Bed metadata (bed number, ward/ICU, equipment type, status — occupied, available, cleaning, reserved).
* Emergency admission requests from ER.
* Forecast input such as scheduled discharges and surgeries.

---

**Output:**

* **Dashboard view:** Real-time occupancy across ICU and other wards.
* **Bed allocation suggestions:** Automatic recommendation of nearest available bed based on urgency and equipment.
* **Alerts & Notifications:** When occupancy crosses a threshold (e.g., 90%), or when beds are freed.
* **Forecasting report:** Predicted availability based on discharges, cleaning times, and scheduled surgeries.
* **Summary report:** A plain-English snapshot such as “As of 10:30 AM, ICU occupancy is 87% (35 of 40 beds in use). 3 beds under cleaning, 2 available. Next expected discharge at 2:00 PM.”

---

**Technology Stack:**

* **Frontend:** HTML, CSS, JavaScript (React for dashboards and charts).
* **Backend:** Node.js/Express for managing occupancy updates and alerts.
* **Database:** MongoDB for bed metadata, patient assignment, and historical occupancy logs.
* **Integrations:**

  * Hospital Admission System API (where available).
  * WebSockets/Socket.IO for real-time updates.
  * Charting libraries (Recharts/D3.js) for visualization.

---

**Chronology of Tasks:**

1. ICU Manager (Anuradha) logs into the dashboard.
2. The system pulls latest bed status data from the hospital system or manual updates.
3. Dashboard displays live counts of **occupied, available, cleaning, and reserved beds**.
4. ER sends emergency admission request → system recommends a bed instantly.
5. Staff update bed status as patients are admitted, transferred, or discharged.
6. System generates **real-time alerts** when thresholds are breached.
7. Forecast reports help Anuradha plan staffing and prioritize admissions.

---

**Stakeholders:**

* **Anuradha (ICU Manager):** Monitors occupancy and allocates beds in real time.
* **Ward/Unit Staff:** Update bed statuses (available, cleaning, occupied).
* **Hospital Administration:** Reviews utilization reports for planning.
* **ER Staff:** Request bed availability for emergencies.

---

**Team Size:** 5


