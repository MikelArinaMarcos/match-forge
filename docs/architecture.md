\# Match Forge Architecture



\## Overview



This document describes the architecture of Match Forge.



The objective is to keep the project scalable, maintainable and easy to understand.



The architecture will evolve as the application grows, and every significant architectural decision will be documented in this repository.



\## Architecture Principles



\### Feature-first structure



The project is organized by features instead of file types.



Each feature contains everything related to that functionality, making the project easier to maintain and scale over time.



Shared code is placed under the `core` and `shared` directories depending on its purpose.

