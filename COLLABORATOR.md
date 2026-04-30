# 🤝 Collaborator Guide

Thank you for your interest in contributing to **ScheTime**! We follow a structured workflow to maintain code quality and stability.

## 🛠️ Development Setup

1. Ensure you have the latest **Flutter Stable Channel** installed.
2. We use **Riverpod** for state management. Please follow the [Riverpod Best Practices](https://riverpod.dev/docs/concepts/providers).
3. We use **Isar** for the local database. If you change a model in `lib/data/models/`, you MUST run:
   ```bash
   dart run build_runner build
   ```

## 📐 Code Architecture

ScheTime follows a **Layered Architecture**:
- **`lib/data/`**: Data sources, repositories implementation, and Isar models.
- **`lib/domain/`**: Business logic, providers, and domain models (Freezed).
- **`lib/ui/`**: UI widgets, screens, and layouts.
- **`lib/core/`**: Utilities, constants, and global helpers.

## 🌿 Branching Strategy

- `main`: Production-ready code. No direct commits allowed.
- `develop`: Integration branch for new features.
- `feature/*`: New features or enhancements.
- `fix/*`: Bug fixes.

## 📮 How to Contribute

1. **Fork** the repository.
2. Create your feature branch (`git checkout -b feature/AmazingFeature`).
3. **Commit** your changes (`git commit -m 'Add some AmazingFeature'`).
4. **Push** to the branch (`git push origin feature/AmazingFeature`).
5. Open a **Pull Request** to the `develop` branch.

## 📜 Coding Standards

- Use `dart format` before committing.
- Ensure all new features are documented in the code.
- Avoid "magic numbers" or hardcoded strings; use constants in `lib/core/`.
