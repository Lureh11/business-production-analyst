# Exploratory Data Analysis (EDA)

## Objective
The goal of the exploratory analysis was to understand production performance patterns, identify potential bottlenecks, and guide KPI selection.

---

## Initial Questions
- Which production stage contributes the most to total delay?
- Are delays concentrated in specific machines?
- How frequently does rework occur by stage?
- Are delays driven by isolated incidents or cumulative effects?

---

## Key Observations

### 1. Delay by Production Stage
- Welding and Assembly stages show the highest total delay accumulation.
- Assembly presents a unique pattern: moderate delays per order but high cumulative impact.

### 2. Machine-Level Behavior
- Machines assigned to welding operations show the largest delay variance.
- A single assembly machine accumulates delay across all orders, suggesting a capacity bottleneck.

### 3. Rework Distribution
- Rework occurs most frequently during Welding and Assembly.
- Finishing shows minimal rework, indicating process stability in final stages.

---

## Early Hypotheses
- Welding delays are likely caused by process complexity or equipment reliability.
- Assembly delays are driven by workload concentration rather than extreme inefficiency.
- Improving one critical machine could significantly reduce overall delay.

---

## Next Steps
Insights from this exploration guided:
- KPI definition
- Visual analysis design
- Business-oriented recommendations
