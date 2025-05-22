# 🧪 Isotope Expert System (Prolog)

This project is a **Prolog-based Expert System** that identifies and analyzes chemical isotopes based on user-provided data such as atomic number, mass number, and neutron count. The system simulates the reasoning of a nuclear physicist to determine the identity of an isotope and infer key properties such as stability, radioactivity, and common applications.

## 📚 Table of Contents

- [Features](#features)
- [Getting Started](#getting-started)
- [Usage](#usage)
- [Examples](#examples)
- [System Rules](#system-rules)
- [How It Works](#how-it-works)
- [Dependencies](#dependencies)
- [License](#license)

## ✅ Features

- Identification of isotopes based on:
  - Atomic number (Z)
  - Mass number (A)
  - Neutron count (N)
- Reasoning about stability and radioactivity
- Inference of isotope classification (stable, radioactive, synthetic)
- Support for common isotopes from H (Hydrogen) to U (Uranium)
- Explanations for conclusions (traceable logic)

## 🚀 Getting Started

### Requirements

- [SWI-Prolog](https://www.swi-prolog.org/) (recommended version ≥ 8.2)

### Running the System

1. Clone the repository or download the `isotope_expert_system.pl` file.
2. Open a terminal and launch SWI-Prolog:

```bash
swipl
```

3. Load the system:

```prolog
?- [isotope_expert_system].
```

4. Start the expert system:

```prolog
?- start.
```

## 🧑‍💻 Usage

After launching the system, the program will ask you a series of questions to identify the isotope and infer its properties.

You may also manually query facts or rules, such as:

```prolog
?- identify_isotope(1, 2, Isotope).
Isotope = deuterium.
```

## 💡 Examples

### Example 1: Hydrogen Isotope

```prolog
?- start.
Welcome to the Isotope Expert System!
Enter the atomic number (Z): 1
Enter the mass number (A): 2

==> Element: Hydrogen
==> Neutron count: 1
==> Isotope: Deuterium
==> Stability: Stable
==> Type: Naturally occurring
```

### Example 2: Carbon-14

```prolog
?- start.
Enter the atomic number (Z): 6
Enter the mass number (A): 14

==> Element: Carbon
==> Neutron count: 8
==> Isotope: Carbon-14
==> Stability: Radioactive
==> Use: Radiocarbon dating
```

### Example 3: Uranium-238

```prolog
?- start.
Enter the atomic number (Z): 92
Enter the mass number (A): 238

==> Element: Uranium
==> Neutron count: 146
==> Isotope: Uranium-238
==> Stability: Radioactive (very long half-life)
==> Use: Nuclear fuel, dating rocks
```

## ⚙️ System Rules (Simplified)

```prolog
isotope(1, 1, protium).
isotope(1, 2, deuterium).
isotope(1, 3, tritium).

isotope(6, 12, carbon_12).
isotope(6, 14, carbon_14).

isotope(92, 238, uranium_238).

stable(deuterium).
stable(carbon_12).

radioactive(tritium).
radioactive(carbon_14).
radioactive(uranium_238).
```

## 🔍 How It Works

The expert system uses simple logic rules to:

1. Match atomic and mass numbers to known isotopes.
2. Calculate the neutron count (A - Z).
3. Infer stability based on known data.
4. Display additional insights based on historical or scientific use.

The reasoning is explainable and extensible, enabling you to add more isotopes or rules easily.

## 📦 Dependencies

- SWI-Prolog

To install:

```bash
sudo apt install swi-prolog   # Ubuntu/Debian
brew install swi-prolog       # macOS
```

## 📄 License

This project is open-source and available under the MIT License.
