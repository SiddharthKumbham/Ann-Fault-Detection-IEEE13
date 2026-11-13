# Project audit (organizational review)

## What was found

- Twelve numbered folders (`1` to `12`) contain scenario-specific Simulink models, data workspaces, and MATLAB `test.m` scripts.
- `Final/data_train.m` loads `bus1.mat` through `bus12.mat`, concatenates rows and maps 12 location indices to bus identifiers.
- `Final/Finalannfaultdetecandclass.slx` and `Final/normal.slx` are present, together with saved MATLAB data and spreadsheet outputs.
- The original archive also includes Simulink generated caches (`slprj/`, `*.slxc`) and an older-version `.slx.r2020a` backup. These were omitted from this GitHub-friendly copy.

## Important research limitation

The `test.m` scripts explicitly duplicate simulation rows four times, and `Final/data_train.m` repeats the combined input/output once more. Inspection of saved `Final/Finalmat.mat` showed 1,152 input rows but only 99 distinct input vectors and 133 distinct paired input/output rows. A random row-level train/test split could therefore leak identical examples across both sets and inflate measured performance. Do not claim a percentage without rerunning an independent validation process.

No standalone MATLAB `.m` script explicitly training the ANN was identified in the archive. ANN-related structure exists within the `.slx` models, but network training procedure, checkpoint provenance, and actual prediction performance require MATLAB inspection and documentation.

## Before public release

- Confirm ownership / permission for any shared model assets.
- Verify the required toolbox versions and reproducible simulation procedure.
- Add screenshots, architecture overview, and reproducible results.
- Review repository contents for sensitive or licensed content.
- Avoid publishing unverified accuracy, fault-location precision, or model benchmarks.
