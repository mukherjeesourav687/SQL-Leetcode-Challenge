# SQL LeetCode Challenge

Solutions to LeetCode's SQL problems, written and tested in MySQL — organized by difficulty, with the problem statement and query side by side for quick reference.

## Motivation

Built to sharpen SQL fundamentals beyond basic SELECT/JOIN syntax — window functions, CTEs, gaps-and-islands patterns, and the kind of edge cases that separate a query that *runs* from a query that's *correct*. Every solution here was tested against the actual problem constraints, not just the sample data.

## Structure

├── Easy/
├── Medium/
├── Hard/
└── README.md

Each file contains:
- The problem statement (as a comment)
- Table schema
- The solution query
- Notes on any tricky edge case the problem tests

## Difficulty breakdown

| Level  | Focus |
|--------|-------|
| Easy   | Core SELECT, WHERE, JOIN, aggregate functions |
| Medium | Subqueries, GROUP BY with HAVING, window functions, CASE logic |
| Hard   | Multi-CTE pipelines, self-joins, gaps-and-islands, recursive patterns |

## A favourite: Leetcodify Friends Recommendation (Hard)

[`Hard/Friend_Recommendations.sql`](Hard/Friend_Recommendations.sql)

Recommends friends on a music app based on shared listening — deceptively simple to state, easy to get wrong. The solution handles four edge cases that a naive query misses:
- Deduplicating raw listen logs before counting shared songs
- Enforcing the "3+ songs" threshold **per day**, not summed across all days
- Excluding existing friendships from an undirected table stored as ordered pairs
- Producing symmetric recommendations (X→Y and Y→X) via UNION

## Tech

- MySQL 8+
- Tested in MySQL Workbench

## Author

**Sourav Mukherjee**
[GitHub](https://github.com/mukherjeesourav687)

---

*Originally forked and extended from [mrinal1704/SQL-Leetcode-Challenge](https://github.com/mrinal1704/SQL-Leetcode-Challenge).*
