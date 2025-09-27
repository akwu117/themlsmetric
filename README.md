Th# AkWu MLS Metric

**AkWu MLS Metric** is a custom performance evaluation system designed to highlight top performers in Major League Soccer (MLS) by applying **monetary bounties** to key match statistics. The result is a unique, value-based ranking system that reflects each player's contribution in dollars, offering an alternative to traditional stat-based leaderboards.

## 📊 What This Project Includes

- Weekly SQL data tables
- Custom metric logic using:
  - Goal Bounties
  - Assist Bounties
  - Shot-on-Target
  - Shot Bounties
  - Key Pass Bounties
  - Deductions for Droughts and Absences
- Export-ready structure for **Tableau dashboards** and other BI tools
- Organized under the `/sqltables/` folder for clean access

## 💡 How It Works

Each player is evaluated based on a reward formula:
- `$150,000 per Goal (GBount)`
- `$50,000 per Assist (ABount)`
- `$10,000 per Shot on Target (SoBount)`
- `$1,000 per Shot (SBount)`
- $500 per Key Pass (PBount)`
- `-$150,000` for Drought weeks
- `-$75,000` for Absences (non-injury related)

These stats are totaled to form a player's **Earning**, which when added to base pay, forms their **Value**.

## 📂 Folder Structure

## AkWu MLS Metric – Weekly Player Valuation System

This project tracks and analyzes Major League Soccer player performance using SQL-based metrics and Tableau dashboards.  

- **SQL Tables:** Store weekly data on player goals, assists, shots, and valuation.  
- **Automation:** Custom formulas calculate earnings and values.  
- **Visualization:** Tableau dashboards highlight top performers and weekly trends.  
- **Public Presentations:** I regularly share insights and visual breakdowns on X/Twitter.(https://x.com/akwuchronicles)  



