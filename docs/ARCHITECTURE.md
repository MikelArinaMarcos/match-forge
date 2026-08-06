# Match Forge Architecture

## Overview

This document describes the overall architecture of Match Forge.

The objective is to keep the project scalable, maintainable, modular and easy to understand.

The architecture will evolve as the application grows, and every significant architectural decision will be documented in this repository.

---

# Architecture Principles

## Feature-first structure

The project is organized by features instead of file types.

Each feature contains everything related to that functionality, making the project easier to maintain and scale over time.

Shared code is placed under the `core` and `shared` directories depending on its purpose.

---

# Project Structure

The project follows a feature-first architecture.

```text
lib/
│
├── app/
│
├── core/
│   ├── database/
│   └── responsive/
│
├── features/
│   ├── dashboard/
│   ├── matches/
│   ├── players/
│   ├── teams/
│   ├── competitions/
│   ├── referees/
│   └── settings/
│
└── shared/
    ├── widgets/
    ├── services/
    └── utils/
```

Each feature contains its own presentation, domain and data layers whenever required.

Shared widgets and utilities remain outside feature modules.

---

# Technology Stack

Current technologies:

- Flutter
- Dart
- Material 3
- Drift (SQLite)
- Go Router

The project follows Clean Architecture principles while keeping the implementation lightweight for local-first operation.

---

# Responsive Architecture

The application uses an adaptive layout system instead of a single responsive page.

Each major screen provides different implementations depending on the available screen size.

Current Dashboard layouts:

- Mobile
- Tablet Portrait
- Tablet Landscape

This approach allows each device to provide an optimized user experience instead of simply resizing widgets.

The responsive system is based on three utility classes:

- `Breakpoints`
- `Responsive`
- `ResponsiveBuilder`

The screen selector automatically loads the appropriate layout according to the current screen width.

## Breakpoints

Current breakpoints:

| Device | Width |
|---------|-------|
| Mobile | < 600 px |
| Tablet | 600 – 1023 px |
| Tablet Landscape / Desktop | ≥ 1024 px |

These values can be adjusted globally from the `Breakpoints` class.

---

# Dashboard

The Dashboard has been designed as the application's main entry point.

Current sections:

- Quick Action (New Match)
- Players
- Teams
- Competitions
- Referees
- Statistics
- Settings
- Upcoming Match

---

## Hero Card

The Quick Action card is implemented as an independent reusable widget (`NewMatchCard`).

Features:

- Adaptive height depending on the device.
- Responsive typography.
- Dynamic positioning.
- Background artwork.
- Gradient overlay.
- Large circular action button.

---

## Dashboard Cards

Each dashboard section is implemented using a reusable `DashboardCard`.

Features:

- Custom illustration.
- Gradient fade between artwork and content.
- Adaptive typography.
- Responsive sizing.
- Custom accent color.
- Reusable navigation button.

---

## Mobile Layout

The mobile layout is not a scaled tablet version.

Features:

- Drawer navigation.
- Compact spacing.
- Reduced hero height.
- One dashboard card per row.
- SafeArea support.
- Mobile-optimized typography.

---

## Tablet Portrait

Portrait tablets use a dedicated layout.

Features:

- Drawer navigation.
- Two-column dashboard.
- Responsive cards.
- Full-width hero banner.
- Optimized spacing.

---

## Tablet Landscape

Landscape tablets use the primary interface.

Features:

- Permanent sidebar.
- Three-column dashboard.
- Full-size hero banner.
- Maximum information density.

---

# Navigation

Current application flow:

```text
Dashboard
│
├── Matches
├── Players
├── Teams
├── Competitions
├── Referees
├── Statistics
└── Settings
```

Each module will become an independent feature while sharing the same navigation structure.

---

# Shared Widgets

Reusable widgets currently implemented:

- AppHeader
- AppSidebar
- DashboardCard
- NewMatchCard

These widgets are shared across every layout to ensure visual consistency while allowing different positioning depending on the device.

---

# Development Progress

## Completed

- Flutter project setup
- Project architecture
- Theme system
- Responsive architecture
- Breakpoint system
- Dashboard
- Sidebar
- Header
- Hero banner
- Dashboard cards
- Mobile layout
- Tablet Portrait layout
- Tablet Landscape layout
- Shared widgets

## In Progress

- Match Management module

## Planned

- Players
- Teams
- Competitions
- Referees
- Live Match
- Statistics
- Reports
- Settings