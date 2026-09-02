# Urban Rush

> **2D endless runner developed in Godot 3.3.0**

**Urban Rush** is a 2D endless runner created as a personal/academic game development project. The player controls a skateboarder who must survive an increasingly demanding sequence of obstacles while collecting coins and maintaining the highest possible score.

The project was developed using **GDScript** and **Godot Engine 3.3.0**, with a focus on gameplay programming, 2D animation, physics, UI, audio feedback, procedural spawning and local score persistence.

---

## 🎮 Gameplay

<!-- VISUAL HOOK: Replace with a gameplay GIF or short looping video -->

<!-- Suggested: 960×480 GIF showing the player jumping, sliding and collecting coins -->

![Gameplay Preview](docs/media/gameplay.gif)

The player remains positioned near the left side of the screen while obstacles, coins and environmental elements move toward them.

### Core mechanics

* **Jump** over incoming obstacles.
* **Slide** underneath obstacles.
* **Hold jump** to control jump height.
* **Collect coins** for additional points.
* React to different obstacle configurations.
* Survive as long as possible to increase the score.
* The game ends when the player collides with an obstacle.

---

## ✨ Features

### Gameplay

* Randomized obstacle spawning.
* Multiple obstacle configurations.
* Moving collectible coins.
* Variable-height jumping.
* Gravity-based movement.
* Collision-based game-over system.
* Dynamic camera zoom during vertical movement.

### Progression

* Continuous score accumulation.
* Coin bonus points.
* Locally stored high score.
* High-score comparison across play sessions.

### Presentation & UI

* Pixel-art visual style.
* Animated player states:

  * Running
  * Jumping
  * Falling
  * Sliding
* Animated sky/background.
* Main menu and options menu.
* In-game HUD.
* Pause menu with retry functionality.
* Music and sound-effect controls.
* Touchscreen controls designed for mobile gameplay.

---

## 🕹️ Controls

| Action                        | Control                   |
| ----------------------------- | ------------------------- |
| Jump                          | Up Arrow / Touch button   |
| Slide                         | Down Arrow / Touch button |
| Interact with special objects | Mouse / Touch             |

---

## 🧠 Technical Highlights

Urban Rush was built around a simple but complete gameplay loop:

```text
Main Menu
    ↓
Gameplay
    ↓
Obstacle & Coin Spawning
    ↓
Player Interaction
    ↓
Score Tracking
    ↓
Collision → Game Over
    ↓
High Score Persistence
```

### Physics & movement

The player controller implements:

* Gravity and maximum fall speed.
* Variable jump height.
* Floor detection.
* Sliding through collision-shape manipulation.
* Animated state transitions based on movement.
* Fixed horizontal positioning while the environment moves toward the player.

### Procedural spawning

Obstacles and coins are instantiated dynamically during gameplay. Different obstacle scenes are selected randomly, with corresponding coin formations and gameplay patterns.

### Persistent data

The best score is stored locally using Godot's `user://` storage system, allowing the high score to persist between game sessions.

---

## 🎨 Visual Design

<!-- VISUAL HOOK: Add a screenshot showing the complete game environment -->

<!-- Suggested: Main gameplay screenshot, ideally without UI overlays -->

![Game Environment](docs/media/environment.png)

The project uses a pixel-art aesthetic throughout its characters, environment, UI and animations.

<!-- VISUAL HOOK: Add a 2×2 image grid of player animation states -->

<!-- Suggested: run / jump / fall / slide -->

![Player Animation States](docs/media/player-states.png)

---

## 🎬 Demo

<!-- VISUAL HOOK: Replace with an embedded/linked YouTube demo -->

<!-- Current demo: https://youtu.be/uZKlq3bKC1Q -->

**[▶ Watch the gameplay demo](https://youtu.be/uZKlq3bKC1Q)**

---

## 🛠️ Built With

* **Godot Engine 3.3.0**
* **GDScript**
* 2D physics and collision system
* Godot UI system
* Local file persistence

---

## 📁 Project Structure

```text
Urban-Rush/
├── README.md
├── LICENSE
├── .gitignore
└── Urban Rush/
    ├── project.godot
    ├── main_menu.tscn
    ├── world.tscn
    ├── player.gd
    ├── world.gd
    ├── coin.gd
    ├── data_canvas.gd
    ├── ...
    └── assets
```

The main gameplay logic is distributed across scene-specific scripts, while reusable gameplay elements such as the player, obstacles and coins are organized into their own scenes and scripts.

---

## 📚 Project Context

Urban Rush was created as a hands-on project to explore game development with Godot and GDScript.

The project covers several areas of software and interactive-system development, including:

* Gameplay programming.
* 2D physics.
* Event-driven interactions.
* Scene-based architecture.
* Animation systems.
* Procedural content spawning.
* User interface development.
* Audio integration.
* Local data persistence.
* Mobile-oriented input.

---

## ⚠️ Legacy Project

This repository contains an older Godot project developed with **Godot 3.3.0**.

It is preserved primarily as a portfolio and learning artifact. Some legacy development/test files may remain in the project and may require additional configuration or replacement resources when opened in a different environment.

The project should therefore be considered a snapshot of the original development work rather than a currently maintained commercial game.

---

## 📄 License

This project is distributed under the **MIT License**. See [`LICENSE`](LICENSE) for details.

