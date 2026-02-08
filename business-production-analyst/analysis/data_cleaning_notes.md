# Data Cleaning Notes

## Overview
This document summarizes the data preparation and cleaning steps performed prior to analysis.  
The dataset represents a simulated manufacturing production process, designed to reflect realistic industrial constraints and behaviors.

## Initial Data Review
The initial dataset contained the following tables:
- Machines
- Operators
- Production Orders
- Production Stages

During the initial inspection, the data structure was found to be consistent but required standardization and validation to support reliable analysis.

---

## Data Cleaning Actions

### 1. Time Standardization
- All planned and actual production times were converted to minutes.
- Start times were standardized to 08:00 AM to align with office-based production order creation.
- End times were validated to ensure logical consistency with production duration.

### 2. Rework Flag Validation
- A binary `rework` indicator was created.
- Rework was flagged as `Yes` when delay ≥ 60 minutes.
- Delays below this threshold were considered normal operational variability.

### 3. Referential Integrity Checks
- Verified that all machine_id and operator_id values referenced valid records.
- Ensured each production order contained exactly four stages:
- Cutting
- Welding
- Assembly
- Finishing

### 4. Missing and Duplicate Values
- No missing values were detected.
- No duplicate production stage records were found per order.

---

## Assumptions
- Operator assignments were randomized to simulate rotating shifts.
- Production operates 24/7, while production orders are issued only on weekdays.
- The dataset was designed to represent realistic variability rather than exact historical records.

---

## Final Output
The cleaned dataset was exported as:
`business_production_clean.csv`

This dataset was used for KPI calculation, support for visualizations in R, and advanced analysis.