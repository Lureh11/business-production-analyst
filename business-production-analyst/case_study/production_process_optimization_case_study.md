# Production Process Optimization – Data Analytics Case Study

## 1. Introduction
This case study analyzes the production process of a mid-sized industrial manufacturing company.

The objective of the analysis is to identify operational inefficiencies and production bottlenecks that lead to delayed orders, increased rework, and extended production times.

By analyzing production orders, process stages, and machine performance, this study aims to provide data-driven recommendations to improve operational efficiency and reduce delays.

## 2. Business Problem
The company has experienced frequent production delays, affecting delivery timelines and operational costs.

The main business questions addressed in this analysis are:

Which production stages contribute the most to overall delays?

Are delays concentrated in specific machines?

How does rework impact production efficiency?

## 3. Business Objectives
Improve operational efficiency and reduce delays.

## 4. Data Sources
The dataset was simulated based on real-world manufacturing workflows and inspired by publicly available smart manufacturing datasets.

The analysis uses four main tables:

Production orders

Production stages

Machines

Operators

The dataset represents one month of production activity and includes both planned and actual production times.

## 5. Data Preparation
Data preparation was performed using Microsoft Excel.

Key steps included:

Validation of planned versus actual production times

Calculation of delays at the stage level

Classification of rework events based on delay thresholds

Clean datasets were exported to CSV format for visualization and analysis in R.

## 6. Process Design & Assumptions
The production process follows a standardized four-stage workflow:

Cutting
Welding
Assembly
Finishing

Each production order enters the system at 08:00 AM on a weekday and proceeds sequentially through all stages.
Planned production times were defined based on product type and unit volume.  
Actual production times include operational variability, fatigue, minor interruptions, and rework events.

## 7. Key Metrics & KPIs
The following KPIs were defined to evaluate production performance:

- Total Delay (minutes)
- Delay by Production Stage
- Delay by Machine
- Rework Count
- Rework Rate by Stage

These metrics were selected to balance operational detail with business-level interpretability.

## 8. Analysis & Findings
The analysis revealed two major bottlenecks in the production process.

First, the Welding stage accounts for the highest total delay, driven by both frequent rework and high process variability.

Second, the Assembly stage, despite not having the highest individual delays, accumulates significant total delay due to being handled by a single machine. This creates a workload concentration effect, where small inefficiencies scale into a major operational constraint.

Machine-level analysis confirmed that specific machines contribute disproportionately to total delay, indicating opportunities for targeted improvements rather than broad process changes.

## 9. Visual Analysis
The following visualizations were generated using R:

- Total Production Delay by Stage
- Total Production Delay by Machine
- Rework Rate by Production Stage

These visuals clearly illustrate delay concentration and rework patterns, supporting the identification of bottlenecks and critical assets.

## 10. Business Impact
Production delays directly impact delivery timelines, operational costs, and resource utilization.

The accumulation of delays in Assembly suggests that increasing capacity or redistributing workload could significantly improve throughput.

Similarly, reducing rework in Welding could lower total delay without requiring additional machines, representing a cost-effective improvement opportunity.


## 11. Recommendations
Based on the findings, the following recommendations are proposed:

Implement preventive maintenance programs for welding machines to reduce unplanned downtime.

Rebalance workload between welding and assembly stages to reduce accumulated delays.

Monitor rework causes in welding operations to improve process quality.

## 12. Limitations
This analysis is based on a simulated dataset designed to reflect realistic manufacturing conditions.
Operator shift dynamics and maintenance schedules were simplified.  
Additionally, external factors such as supply chain interruptions were not included.

## 13. Next Steps
Future improvements could include:

Integration of real-time production data

Automation of KPI tracking dashboards

Predictive maintenance models based on machine performance data
