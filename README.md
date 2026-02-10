
# Tennis Kata – iOS (TDD + SOLID)

This project implements the classic Tennis Kata using **Test-Driven Development (TDD)** and **SOLID principles**.

## 🎯 Goal
- Focus on **Domain & ViewModel layers**
- UI is intentionally minimal
- Each change is tracked with **small, meaningful git commits**

## 🧪 Approach
- Red → Green → Refactor
- Clear separation of responsibilities
- Business rules isolated from UI

## 🧱 Project Structure
TennisKata
├── Application
│ ├── AppDelegate
│ └── SceneDelegate
│
├── Domain
│ ├── TennisGame
│ ├── TennisGameProtocol
│ ├── TennisScore
│ └── TennisScoreFormatter
│
├── Presentation
│ ├── TennisGameViewModel
│ └── ViewController
│
├── Resources
│ └── Assets / Storyboards
│
└── SupportingFiles
└── Info.plist

TennisKataTests
├── Domain
│ └── TennisGameTests
│
├── Presentation
│ └── TennisGameViewModelTests


### Testing Principles
- Tests mirror production structure
- Domain logic tested independently
- ViewModel tested without UI
- Clear, intention-revealing test names

---

## 🚀 How to Run

1. Clone the repository
2. Open `TennisKata.xcodeproj`
3. Run tests using:
⌘ + U
