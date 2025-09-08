### **Project:** The Spectral Soil Modeler: An Automated ML Workflow

**Context:**
You are a team of research software engineers at the **Software Engineering Research Centre (SERC), IIIT Hyderabad**. Your team supports soil scientists from the **Laboratory for Spatial Informatics (LSI), IIIT Hyderabad** who are building predictive models for key soil properties (e.g., Clay, Sand, Total Organic Carbon) using spectral data from field spectrometers or satellites.

The current research process is slow and manual. For each soil property, an LSI researcher must manually try countless combinations of **3 spectral preprocessing techniques** (e.g., Reflectance, Absorbance, Continuum Removal) and **5 machine learning algorithms** (Partial Least Squares Regression, Cubist, Gradient Boosting Regression Trees, Kernel Ridge Regression, and Support Vector Regression).

You are tasked with automating this. We want a tool that can systematically explore all pipelines, validate them rigorously, and present the results in an intuitive visual dashboard. We encourage the use of LLMs to quickly generate the complex code skeletons for these algorithms but insist on a robust, well-tested, and visually appealing final product.

**Input:**
A dataset containing:
1.  **Spectral Data:** Hundreds of spectral bands for each soil sample (the features).
2.  **Target Data:** Laboratory-measured values for one or more soil properties (e.g., Clay , TOC ) for each sample.

**Output:**
An **interactive web application** (GUI) that allows an LSI researcher to:
1.  Load their spectral soil dataset.
2.  Select a target soil property to model.
3.  Run an automated process that trains, validates, and evaluates all combinations of spectral preprocessing and ML models.
4.  **Visualize and Compare Results:** View a leaderboard of models ranked by key metrics (R², RMSE, RPD), alongside scatter plots of predictions vs. actual values.
5.  **Diagnose Models:** Inspect feature importance plots (e.g., Permutation Feature Importance) for the top-performing models to understand which spectral bands are most predictive.
6.  **Export Results:** Save the best model for future use on new, unlabeled spectral data.

**Technology Stack:**
*   **Core Data & ML:** Python, Pandas, NumPy, Scikit-learn
*   **Visualization & GUI:** Matplotlib, Seaborn, **Streamlit**
*   **LLM:** Any model of your choice (e.g., DeepSeek, ChatGPT, Claude). Usage must be documented.

**Team Size:** 5

**Point of Contact:** Abhishek Singh (abhishek.singh@iiit.ac.in)
