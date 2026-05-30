# Prolog Dental Clinic

Educational dental clinic management system implemented in Prolog using logical knowledge representation and rule-based reasoning.

## About

This repository contains a practical Logic Programming project developed in Prolog for modeling and managing a dental clinic environment.

The system represents patients, dentists, appointments, and payments through a dynamic knowledge base and logical inference rules, demonstrating how declarative programming can be used to model real-world domains.

Main topics explored in this repository:

- Logic Programming
- Declarative Programming
- Knowledge Representation
- Rule-Based Systems
- Expert Systems
- Dynamic Facts
- Logical Inference
- Data Modeling

The codebase was developed using:

- SWI-Prolog
- Dynamic predicates
- Rule-based reasoning
- Knowledge bases
- Declarative programming techniques

---

## Repository Structure

```text
.
├── dental_clinic.pl
├── sample_queries.pl
│
└── README.md
```

---

## System Components

### Patient Management

The system allows the registration and management of patient information, including:

- Name
- Phone number
- Age
- Address

Knowledge representation:

```prolog
paciente(Nome, Telefone, Idade, Endereco).
```

---

### Dentist Management

Dentists are associated with their specialties, enabling automatic specialist selection during appointment scheduling.

Knowledge representation:

```prolog
dentista(Nome, Especialidade).
```

---

### Appointment Scheduling

Appointments are stored in the knowledge base and associated with:

- Date
- Time
- Dentist
- Procedure
- Patient

Knowledge representation:

```prolog
consulta(Data, Hora, Dentista, Procedimento, Paciente).
```

Implemented operations:

- Schedule appointments
- Confirm appointments
- Reschedule appointments
- List patient appointments

---

### Financial Management

The system includes payment tracking functionality.

Knowledge representation:

```prolog
pagamento(ID, Paciente, Forma, Valor, Status).
```

Implemented operations:

- Register payments
- Query payments
- Update payment status
- Track pending and completed payments

---

### Validation Rules

Business rules are enforced through logical predicates.

Implemented validations:

- Pediatric dentistry restricted to patients aged 0–12 years
- Procedure-specialist consistency
- Appointment management constraints

---

## Dynamic Knowledge Base

The system uses dynamic predicates to allow modifications during execution.

```prolog
:- dynamic paciente/4.
:- dynamic dentista/2.
:- dynamic consulta/5.
:- dynamic pagamento/5.
```

This enables:

- Runtime insertion of facts
- Runtime updates
- Runtime deletion of facts
- Interactive system management

---

## Example Queries

List all registered patients:

```prolog
listar_pacientes.
```

List appointments for a specific patient:

```prolog
listar_consultas("Joao Silva").
```

Register a new patient:

```prolog
cadastrar_paciente(
    "Lucas Ferreira",
    "62912345678",
    9,
    "Goiania"
).
```

Schedule an appointment:

```prolog
cadastrar_consulta_especialista(
    "2025-07-01",
    "14:00",
    odontopediatria,
    "Lucas Ferreira"
).
```

Confirm an appointment:

```prolog
confirmar_consulta("Lucas Ferreira").
```

Query payment information:

```prolog
consultar_pagamento("Maria Souza").
```

Update payment status:

```prolog
atualizar_status_pagamento(
    "Maria Souza",
    pago
).
```

---

## Requirements

- SWI-Prolog 9+

---

## Run

Start SWI-Prolog:

```bash
swipl
```

Load the knowledge base:

```prolog
?- [dental_clinic].
```

Execute queries directly from the interpreter.

---

## Concepts Demonstrated

- Logic Programming
- Knowledge Representation
- Dynamic Knowledge Bases
- Rule-Based Systems
- Declarative Programming
- Expert Systems
- Logical Inference
- Constraint Validation

---

## Notes

This repository focuses on educational implementations of Logic Programming concepts through the construction of a rule-based management system using Prolog.

The project demonstrates how logical facts, predicates, and inference rules can be used to model entities, enforce business constraints, and support decision-making in a real-world application domain.

---

## Authors

- Breno Machado Barros
- Ruan Carlos Martins e Silva
- Ikaro dos Santos Alves