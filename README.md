# ANN-Based Fault Detection, Classification and Location in the IEEE 13-Node Test Feeder

A MATLAB/Simulink project exploring fault scenarios in an IEEE 13-node distribution test feeder and ANN-based fault detection, classification, and bus-location identification.

> **Status:** Archived project files organized for review. Simulation and ANN performance have **not** been independently re-run or validated in this repository. Add verified results only after reproducing them in MATLAB.

## Contents

- `1/` through `12/` — Simulink models for normal and various fault cases at twelve modeled locations, supporting `.mat` workspace data and MATLAB data-generation scripts.
- `Final/Finalannfaultdetecandclass.slx` — final Simulink model (includes ANN-related components).
- `Final/normal.slx` — additional Simulink model.
- `Final/data_train.m` — combines saved data from the twelve locations and prepares output labels for fault classification and location.
- `Final/bus1.mat` through `Final/bus12.mat` — saved model/simulation data for each modeled location.
- `Final/*.xlsx` — saved tabular project results/data. These are **not** independently verified model accuracy metrics.
- `docs/PROJECT_AUDIT.md` — upload notes and verification checklist.

## Fault-scenario files

Within numbered folders, model names include `normal.slx`, `lga.slx`, `lgb.slx`, `lgc.slx`, `lgab.slx`, `lgac.slx`, `lgbc.slx`, `lgabc.slx`, `lab.slx`, `lac.slx`, `lbc.slx`, and `labc.slx`. The corresponding `test.m` script runs these model names and constructs target vectors.

## Software requirements

- MATLAB with Simulink
- Model-specific electrical power systems/ANN support toolboxes may be required; verify exact versions and dependencies on the machine where you run the models.

## Reproduction starting points

1. Open MATLAB and set the current folder to a numbered subfolder, such as `1/`.
2. Inspect and run the Simulink models in that folder. `test.m` loads `matlab.mat`, simulates the twelve named scenarios, and saves a `busN.mat` dataset for its location.
3. After datasets for all twelve locations are available in `Final/`, change the MATLAB current folder to `Final/` and inspect or run `data_train.m`.
4. Open `Final/Finalannfaultdetecandclass.slx` to inspect the integrated model. Verify the environment, input signals, network components, and any saved results before reporting performance.

**Caution:** The scripts use `clear all`, `warning off`, and simulation calls. Inspect scripts and work on a copy before running; execution has not been tested here.

## Evaluation still needed

- Record the MATLAB release and toolbox versions.
- Document architecture and preprocessing of the ANN (including how it is trained).
- Explain classification labels and bus-number mapping.
- Run a leakage-free train/test split using independent data and document accuracy or error metrics, confusion matrix, and sample predictions.
- Add verified Simulink diagrams and result screenshots under `docs/images/`.

## Notes on provenance

Project files were organized from an existing archive. Please credit any teammates, supervisors, or third-party sources that contributed to the original MATLAB/Simulink models before making this repository public.
