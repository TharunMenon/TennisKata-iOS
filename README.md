# Tennis Kata – iOS (TDD & SOLID)

This project implements the classic Tennis Kata using **Test-Driven Development (TDD)** and **SOLID principles**, with a strong focus on architecture and separation of concerns.

The goal of this exercise was not UI, but rather to demonstrate:

- Domain modeling
- Testability
- Clean code practices
- Incremental development with meaningful commits

---

## 🎯 Scope

The implementation supports:

- Standard tennis scoring: love, 15, 30, 40
- Deuce
- Advantage
- Game win conditions

Each rule was implemented following a **Red → Green → Refactor** cycle.

---

## 🏗 Architecture

The project follows a simplified **Clean Architecture + MVVM** approach.


TennisKata
├── Application → App lifecycle
├── Domain → Pure business logic
├── Presentation → ViewModel layer
├── Resources
└── SupportingFiles


TennisKataTests
├── Domain
│ └── TennisGameTests
├── Presentation
│ └── TennisGameViewModelTests


## 🚀 Running the Project

1. Open `TennisKata.xcodeproj`
2. Run tests using `⌘ + U`
