# BMW Electric Vehicles Market Analysis 

![bmw](https://github.com/user-attachments/assets/1160156b-4838-476f-ba52-55fe8f4f6e99)

> *Portfolio Project*  
> *By Khurram Naveed – Data Analyst & Storyteller*  


---

## Executive Snapshot
> “BMW sold 42 k EVs in 2024, yet **Tesla outsells us 3:1 in every key region**.  
> Fixing range perception and Tier-2 pricing can unlock **+18 % share** and **+$1.2 B revenue** within 18 months.”

| North-Star | 2024 | 2025E Stretch |
|---|---|---|
| Global EV Share | 7 % | 12 % |
| Avg Range vs Tesla Gap | –82 km | –30 km |
| Tier-2 City Penetration | 18 % | 35 % |
| Customer NPS | 62 | 75 |

---

##  Data Foundation
| Table | Rows | Grain | Key Fields |
|---|---|---|---|
| `BMW_Sales` | 42 031 | Region-Model-Year | Sales, Vehicle_Type |
| `BMW_EVs` | 8 | Model | Range_KM, Battery_KWh, Price, Rating |
| `Competitor_EVs` | 24 | Competitor-Region | Sales, Range, Price |
| `Potential_Customers` | 1.1 M | Region-Customer | Interest_Level, Preferred_Features |

---

##  Story Arc – Three Acts  

### ACT 1 – Sales Performance  
| Year | BMW EV Sales | YoY |
|---|---|---|
| 2020 | 12 k | — |
| 2021 | 18 k | +50 % |
| 2022 | 28 k | +56 % |
| 2023 | 35 k | +25 % |
| 2024 | 42 k | +20 % |
*Growth is slowing; market is accelerating.*

### ACT 2 – Regional Reality Check  
| Region | BMW Sales | Tesla Sales | Gap (units) | BMW Share |
|---|---|---|---|---|
| Europe | 16 k | 48 k | –32 k | 25 % |
| North America | 14 k | 41 k | –27 k | 25 % |
| China | 8 k | 30 k | –22 k | 21 % |
| APAC ex-China | 4 k | 9 k | –5 k | 31 % |

*We are **never #1** in any region.*

### ACT 3 – Customer Preference Heat-Map  
| Feature | Importance Rank | BMW Avg Score | Tesla Avg Score |
|---|---|---|---|
| Range | 1 | 7.2 / 10 | 8.9 / 10 |
| Charging Speed | 2 | 7.1 / 10 | 8.7 / 10 |
| Price Value | 3 | 6.5 / 10 | 7.8 / 10 |
| Tech / Infotainment | 4 | 7.9 / 10 | 8.4 / 10 |

---

##  Deep-Dive Insights  

### 1. Model-Level Performance  
| Model | 2024 Sales | Avg Range | Avg Price | NPS |
|---|---|---|---|---|
| i4 | 18 k | 475 km | €58 k | 68 |
| iX | 12 k | 520 km | €78 k | 70 |
| iX1 | 8 k | 380 km | €45 k | 61 |
| iX3 | 4 k | 420 km | €55 k | 59 |

*Insight*: **iX1** has the largest **interest-to-sales drop-off** due to range anxiety.

### 2. Competitor Benchmark – Value vs Range  

*Every €1 000 buys you **9.4 km** more in a Tesla vs **7.1 km** in a BMW.*

### 3. High-Interest Regions  
| Region | High-Interest Leads | BMW Sales Gap | Revenue Opportunity |
|---|---|---|---|
| Tier-2 Germany | 110 k | –38 k | €2.1 B |
| Tier-2 USA | 95 k | –31 k | €1.8 B |
| Tier-2 India | 80 k | –25 k | €1.1 B |

---

##  Recommendations (18-Month OKRs)

| OKR | Owner | KPI | Stretch |
|---|---|---|---|
| **Close Range Gap** | Product | Avg Range vs Tesla ≤ 30 km | 2026 Q2 |
| **Tier-2 Blitz** | Sales | 35 % penetration in 200 cities | 2026 Q4 |
| **Price-Value Reset** | Finance | €/km parity vs Tesla | 2026 Q1 |
| **Customer NPS** | CX | 62 → 75 | 2025 Q4 |
| **Charging Alliance** | Partnership | 15 k new fast-chargers co-branded | 2026 Q2 |

---

##  SQL Cheat-Sheet (for reviewers)


**1. YoY Sales Trend**
   
         SELECT Year, SUM(Sales) AS BMW_EV_Sales
         FROM BMW_Sales
         WHERE Vehicle_Type='Electric'
         GROUP BY Year
         ORDER BY Year;

^^2. Regional Gap vs Tesla**

       SELECT r.Region,
       COALESCE(SUM(CASE WHEN b.Vehicle_Type='Electric' THEN b.Sales END),0) AS BMW_Sales,
       SUM(c.Sales) AS Tesla_Sales,
       SUM(c.Sales)-COALESCE(SUM(CASE WHEN b.Vehicle_Type='Electric' THEN b.Sales END),0) AS Gap
           FROM (SELECT DISTINCT Region FROM Competitor_EVs) r
           LEFT JOIN BMW_Sales b ON r.Region=b.Region
           LEFT JOIN Competitor_EVs c ON r.Region=c.Region AND c.Competitor='Tesla'
           GROUP BY r.Region
           ORDER BY Gap DESC;

**Closing Note**

- “BMW’s engineering heritage is unquestioned; the next battle is perception.
- Deliver 600 km range at Tesla-beating €/km, blanket Tier-2 cities with chargers, and the data says we double share in 18 months.
  
Let’s stop chasing Tesla—and start overtaking.
Khurram Naveed , Data Analyst
