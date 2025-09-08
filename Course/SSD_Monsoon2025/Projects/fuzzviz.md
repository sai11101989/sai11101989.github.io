

### **Project 4 FuzzVis-Predict: Intelligent Fuzzing with Real-Time Visualization and ML-Based Forecasting**

**1. Context & Motivation**
At the **Software Engineering Research Centre (SERC), IIIT Hyderabad**, we are excited about fuzzing as a powerful technique for uncovering software vulnerabilities. However, a major challenge practitioners face is the "black box" nature of a fuzzing campaign. How long should it run? Has it plateaued? Is it still finding new code paths? This project tackles these questions head-on by building a real-time visualization dashboard for fuzzing coverage and developing a machine learning model to predict its future growth, transforming fuzzing from a guessing game into a data-driven process.

**2. Primary Objective**
To enhance standard fuzzers (AFL++) with two powerful capabilities:
1.  A **real-time visualization dashboard** that provides live insights into code and branch coverage.
2.  An **ML-based prediction model** that forecasts coverage growth, providing a intelligent stopping criterion to maximize efficiency.

**3. Core Input**
- A target program to fuzz (e.g., a library like `libpng` or a utility like `file`).
- AFL++ (a modern, instrumented fuzzer).
- Historical fuzzing data (collected by the team for model training).

**4. Core Output & Deliverables**
**A. Real-Time Coverage Visualization Dashboard:**
- A web-based dashboard that connects to a live AFL++ session.
- **Visualizations may include:**
    - **Live Coverage Graphs:** Plotting line and branch coverage percentage over time.
    - **Code Heatmap:** A visual representation of the source code, highlighting which lines/branches have been covered (green) and which remain uncovered (red). This updates in near real-time.
    - **Campaign Health Metrics:** Number of unique crashes, execution speed, and pending paths.

**B. Coverage Data Collection Pipeline:**
- Automated scripts to run multiple, extended fuzzing campaigns.
- A parser to extract coverage data from AFL's output and `gcov` reports at regular intervals, storing it in a structured database (e.g., SQLite or CSV).

**C. ML Model for Coverage Forecasting:**
- A time-series forecasting model that predicts future coverage based on the current growth trend.
- **Input (at time *t*):** Coverage data from the first *t* minutes of a fuzzing run.
- **Output (prediction for time *t+𝛥t*):** A prediction of coverage at a future time, with a confidence interval (e.g., "In 2 hours, branch coverage has an 80% probability of being between 54% and 58%").
- **Goal:** The model answers the question: "Based on its current performance, is this fuzzer likely to find significant new coverage soon, or has it plateaued?"

**D. Comprehensive Analysis Report:**
- An evaluation of the ML model's accuracy and usefulness.
- A case study applying the full toolchain to a target program, demonstrating how it informs decision-making.

**5. References & Resources:**
	* **AFL++ Documentation (Getting Started and more):** [https://aflplus.plus/docs/](https://aflplus.plus/docs/)
    


**6. Technology Stack**
- **Fuzzing:** AFL++
- **Coverage:** `gcov`, `lcov`
- **Visualization:** `Flask`/`FastAPI` (backend), `React`/`Vue.js` or `Streamlit` (frontend), `Plotly`/`D3.js` (graphs)
- **Machine Learning:** `scikit-learn` for traditional models; `TensorFlow`/`PyTorch` for LSTMs if needed.
- **Data Handling:** `pandas`, `SQLite`

**7. Team Size:** 5

**8. Point of Contact:** Abhishek Singh (abhishek.singh@iiit.ac.in)

