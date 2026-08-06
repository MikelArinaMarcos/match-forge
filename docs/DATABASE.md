# Match Forge Database Design

## Core Entities

- Club
- Team
- Player
- Opponent
- OpponentPlayer
- Competition
- Season
- Match
- MatchPlayer
- MatchEvent
- Referee


---

# Entity: Player

Represents one player belonging to one team.

| Field | Type | Required | Notes |
|-------|------|----------|-------|
| id | UUID | ✅ | Primary Key |
| firstName | Text | ✅ | |
| lastName1 | Text | ✅ | |
| lastName2 | Text | ❌ | |
| birthDate | Date | ❌ | |
| preferredNumber | Integer | ❌ | Usual shirt number |
| preferredPosition | Enum | ❌ | Goalkeeper, Defender... |
| secondaryPosition | Enum | ❌ | |
| dominantFoot | Enum | ❌ | Left, Right, Both |
| active | Boolean | ✅ | |
| notes | Text | ❌ | |