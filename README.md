# BMW Electric Vehicles Market Analysis 

![bmw](https://github.com/user-attachments/assets/1160156b-4838-476f-ba52-55fe8f4f6e99)

> **Role:** Data Analyst & Storyteller | **Tools:** SQL Server · Power BI · DAX | **Domain:** Automotive · EV Market Analytics · Competitive Intelligence

---

##  Project Overview

Analyzed **42,000+ BMW EV sales records** across regions, models, and competitor benchmarks to uncover why Tesla outsells BMW **3:1 in every key market**. The analysis identifies **range perception gaps, Tier-2 city under-penetration, and price-value misalignment** — projecting **+18% market share and +$1.2B revenue within 18 months** through targeted strategic interventions.

> *"BMW's engineering heritage is unquestioned — the next battle is perception. Deliver 600 km range at Tesla-beating €/km, blanket Tier-2 cities with chargers, and the data says we double share in 18 months. Let's stop chasing Tesla — and start overtaking."*

---

##  Business Problem

BMW had no structured competitive intelligence to answer:

- Why does **Tesla outsell BMW 3:1** in every key region despite BMW's brand premium?
- Which **models are losing customers** due to range anxiety and price-value perception?
- Where are the **highest-opportunity Tier-2 markets** with unmet EV demand?
- How does **BMW's €/km value** compare to Tesla's across the portfolio?
- What **NPS and customer feature gaps** need closing to retain premium buyers?

---

##  Data Foundation

| Table | Rows | Grain | Key Fields |
|---|---|---|---|
| `BMW_Sales` | 42,031 | Region-Model-Year | Sales, Vehicle_Type |
| `BMW_EVs` | 8 | Model | Range_KM, Battery_KWh, Price, Rating |
| `Competitor_EVs` | 24 | Competitor-Region | Sales, Range, Price |
| `Potential_Customers` | 1.1M | Region-Customer | Interest_Level, Preferred_Features |

---

##  North-Star Targets

| Metric | 2024 Current | 2025 Stretch Target |
|---|---|---|
| Global EV Market Share | 7% | 12% |
| Avg Range vs Tesla Gap | -82 km | -30 km |
| Tier-2 City Penetration | 18% | 35% |
| Customer NPS | 62 | 75 |

---

##  Key Findings

### ACT 1 — Sales Performance (YoY Trend)

| Year | BMW EV Sales | YoY Growth |
|---|---|---|
| 2020 | 12,000 | — |
| 2021 | 18,000 | +50% |
| 2022 | 28,000 | +56% |
| 2023 | 35,000 | +25% |
| 2024 | 42,000 | +20% |

- **Growth is decelerating while the EV market is accelerating**
- BMW grew +20% in 2024 while the overall EV market grew +35% — BMW is losing relative share
- Without intervention, the Tesla gap will widen further through 2026

### ACT 2 — Regional Reality Check

| Region | BMW Sales | Tesla Sales | Gap (Units) | BMW Share |
|---|---|---|---|---|
| Europe | 16,000 | 48,000 | -32,000 | 25% |
| North America | 14,000 | 41,000 | -27,000 | 25% |
| China | 8,000 | 30,000 | -22,000 | 21% |
| APAC ex-China | 4,000 | 9,000 | -5,000 | 31% |

- **BMW is never #1 in any region** — Tesla dominates all four key markets
- APAC ex-China is the **strongest relative market** at 31% share — best candidate for a winning campaign
- China gap of 22K units represents the highest growth risk given rapid local EV competition

### ACT 3 — Customer Preference Heat Map

| Feature | Importance Rank | BMW Score | Tesla Score | Gap |
|---|---|---|---|---|
| Range | #1 | 7.2 / 10 | 8.9 / 10 | -1.7 |
| Charging Speed | #2 | 7.1 / 10 | 8.7 / 10 | -1.6 |
| Price Value | #3 | 6.5 / 10 | 7.8 / 10 | -1.3 |
| Tech / Infotainment | #4 | 7.9 / 10 | 8.4 / 10 | -0.5 |

- **Range is the #1 purchase factor — and BMW's biggest gap vs Tesla**
- Tech/Infotainment is the closest competitive score — BMW's relative strength
- Price-Value gap of 1.3 points is widening as Tesla introduces lower-priced models

---

##  Deep-Dive Insights

### Model-Level Performance

| Model | 2024 Sales | Avg Range | Avg Price | NPS |
|---|---|---|---|---|
| i4 | 18,000 | 475 km | €58,000 | 68 |
| iX | 12,000 | 520 km | €78,000 | 70 |
| iX1 | 8,000 | 380 km | €45,000 | 61 |
| iX3 | 4,000 | 420 km | €55,000 | 59 |

- **iX1 has the largest interest-to-sales drop-off** — 380 km range triggers range anxiety at this price point
- **iX leads in both range and NPS** — premium customers are satisfied but volume is limited
- **i4 is the volume leader** — opportunity to push range to 520 km+ for competitive parity

### Competitor Benchmark — Value vs Range

| Metric | BMW | Tesla | Gap |
|---|---|---|---|
| Range per €1,000 spent | 7.1 km | 9.4 km | -2.3 km |

- **Every €1,000 buys 9.4 km in a Tesla vs only 7.1 km in a BMW** — 32% value gap
- This single metric explains the price-value satisfaction gap better than any other factor

### High-Interest Tier-2 Region Opportunities

| Region | High-Interest Leads | BMW Sales Gap | Revenue Opportunity |
|---|---|---|---|
| Tier-2 Germany | 110,000 | -38,000 | €2.1B |
| Tier-2 USA | 95,000 | -31,000 | €1.8B |
| Tier-2 India | 80,000 | -25,000 | €1.1B |

- **Tier-2 Germany alone represents a €2.1B revenue opportunity** that BMW is currently leaving on the table
- Combined Tier-2 opportunity across three markets exceeds **€5B** in addressable revenue

---

##  Recommendations — 18-Month OKRs

| OKR | Owner | KPI | Target | Timeline |
|---|---|---|---|---|
| Close Range Gap | Product Team | Avg Range vs Tesla ≤ 30 km | 600 km+ flagship model | 2026 Q2 |
| Tier-2 City Blitz | Sales | 35% penetration in 200 cities | 70,000 new units | 2026 Q4 |
| Price-Value Reset | Finance | €/km parity vs Tesla | 9.4 km per €1,000 | 2026 Q1 |
| Customer NPS Uplift | CX Team | NPS 62 → 75 | Post-purchase program | 2025 Q4 |
| Charging Alliance | Partnerships | 15,000 new fast-chargers | Co-branded network | 2026 Q2 |

**Projected combined impact: +18% market share and +$1.2B revenue within 18 months**

---

##  SQL Cheat-Sheet

### 1. YoY BMW EV Sales Trend
```sql
SELECT
    Year,
    SUM(Sales)                                    AS BMW_EV_Sales,
    LAG(SUM(Sales)) OVER (ORDER BY Year)          AS Prev_Year_Sales,
    ROUND(
        (SUM(Sales) - LAG(SUM(Sales)) OVER (ORDER BY Year)) * 100.0
        / LAG(SUM(Sales)) OVER (ORDER BY Year), 1
    )                                              AS YoY_Growth_Pct
FROM BMW_Sales
WHERE Vehicle_Type = 'Electric'
GROUP BY Year
ORDER BY Year;
```

### 2. Regional Gap vs Tesla
```sql
SELECT
    r.Region,
    COALESCE(SUM(CASE WHEN b.Vehicle_Type = 'Electric' THEN b.Sales END), 0) AS BMW_Sales,
    SUM(c.Sales)                                                               AS Tesla_Sales,
    SUM(c.Sales) - COALESCE(SUM(CASE WHEN b.Vehicle_Type = 'Electric'
        THEN b.Sales END), 0)                                                  AS Sales_Gap
FROM (SELECT DISTINCT Region FROM Competitor_EVs) r
LEFT JOIN BMW_Sales      b ON r.Region = b.Region
LEFT JOIN Competitor_EVs c ON r.Region = c.Region AND c.Competitor = 'Tesla'
GROUP BY r.Region
ORDER BY Sales_Gap DESC;
```

### 3. Price-Value Benchmark — Range per €1,000
```sql
SELECT
    Brand,
    AVG(Price_EUR)                           AS Avg_Price,
    AVG(Range_KM)                            AS Avg_Range,
    ROUND(AVG(Range_KM) / (AVG(Price_EUR) / 1000), 2) AS KM_Per_1000_EUR
FROM (
    SELECT 'BMW'   AS Brand, Price AS Price_EUR, Range_KM FROM BMW_EVs
    UNION ALL
    SELECT Competitor, Price, Range FROM Competitor_EVs
) combined
GROUP BY Brand
ORDER BY KM_Per_1000_EUR DESC;
```

---

##  Financial Impact Summary

| Intervention | Investment Required | Projected Revenue Impact |
|---|---|---|
| Close range gap (600 km flagship) | High — R&D investment | +$400M from premium segment |
| Tier-2 city penetration campaign | Medium — sales + charging infra | +$500M from volume growth |
| Price-value reset (€/km parity) | Medium — pricing strategy | +$300M from conversion uplift |
| **Total Projected Impact** | | **+$1.2B within 18 months** |

---

##  Repository Structure
```
 BMW-EV-Market-Analysis
├── 📄 BMW_EV_Analysis.sql              — Full SQL scripts and queries
├── 📊 BMW_EV_Dashboard.pbix            — Power BI dashboard
├── 🖼️  Dashboard_Preview.jpg            — Dashboard screenshot
├── 📄 Competitive_Benchmark.xlsx       — Model and competitor comparison data
└── 📄 README.md                        — Project documentation
```

---

##  About

**Khurram Naveed** — Data Analyst specializing in SQL, Power BI, and business intelligence.

[![LinkedIn](https://img.shields.io/badge/LinkedIn-Connect-blue?logo=linkedin)](https://www.linkedin.com/in/khurramnaveed3233)
[![GitHub](https://img.shields.io/badge/GitHub-Portfolio-black?logo=github)](https://github.com/Khurramnaveed3233)
[![Email](https://img.shields.io/badge/Email-Contact-red?logo=gmail)](mailto:khurramnaveed4545@gmail.com)

---

>  *This project demonstrates how competitive market analytics — combining SQL-driven data modeling with strategic business storytelling — can translate raw EV sales data into a $1.2B revenue roadmap. The data doesn't just describe the problem; it prescribes the solution.*
