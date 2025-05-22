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
- Support for known isotopes including superheavy elements
- Explanations for conclusions (traceable logic)

## 🚀 Getting Started

### Requirements

- [SWI-Prolog](https://www.swi-prolog.org/) (recommended version ≥ 8.2)

### Running the System

1. Clone the repository or download the files `perito.pl` and `isotopos.pl`.
2. Launch SWI-Prolog:

```bash
swipl
```

3. Load the expert shell:

```prolog
?- consult(perito).
```

4. Follow the interactive shell:

```
Concha simples de Sistema Pericial
Versao de 2024

Comandos disponiveis:
1 - Consultar uma Base de Conhecimento (BC)
2 - Solucionar
3 - Sair
```

5. Load the knowledge base:

```
|: 1.
Nome da BC: |: isotopos.
BC consultada com sucesso.
```

6. Solve a case:

```
|: 2.
Qual o simbolo do elemento? |: Ts.
Qual o valor para numero_atomico? |: 117.
Qual o valor para numero_neutroes? |: 177.
Qual o valor para numero_massa? |: 294.
Qual o valor para estabilidade? |: instavel.
```

## 💡 Example Output

```prolog
Isótopo encontrado: Ts-294
Simbolo: Ts
Número atómico: 117
Número de neutrões: 177
Número de massa: 294
Estabilidade: instavel
Meia-vida: meia_vida(51_ms)
Tipo de decaimento: tipo_decaimento(A(100%))
Raio nuclear: raio_nuclear()
Spin e paridade: spin_paridade()
Massa atómica: massa_atomica(294210840)
Excesso de massa: excesso_massa(196397)
Energia de ligação: energia_ligacao(7092)
Abundância: abundancia()
Descoberta: descoberta(2010)

Resposta encontrada: Ts-294
```

## ⚙️ System Rules (Expert)

```prolog
isotopo(ts, 294, numero_atomico(117), numero_neutroes(177),
        estabilidade(instavel), meia_vida(51_ms), tipo_decaimento(a(100)),
        massa_atomica(294210840), excesso_massa(196397), energia_ligacao(7092),
        descoberta(2010)).
```

## 🔍 How It Works

The expert system loads a knowledge base (e.g. `isotopos.pl`) and uses a simple question-driven interface to guide the user. It uses logical inference to match input values to a known isotope entry and provides all related properties stored in the knowledge base.

## 📦 Dependencies

- SWI-Prolog

To install:

```bash
sudo apt install swi-prolog   # Ubuntu/Debian
brew install swi-prolog       # macOS
```

## 📄 License

This project is open-source and available under the MIT License.
