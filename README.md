# GMLinear
Matrix and vector library for GameMaker Studio 1.x

## Introduction
GMLinear is an implementation of matrix and vector operations in pure GML. You can use it to simplify many common calculations in 2D and 3D geometry and implement algorithms/formulas involving linear algebra. Hard-coded optimized functions are available for 2D, 3D and 4D vectors and 2x2, 3x3 and 4x4 matrices.

## Requirements
- GameMaker Studio 1.4 or above

## Installation
Simply drag `gmlinear_core.gml` into your open project. You can optionally import `constants.txt` to index vector components with human-readable names.

## Contributing to GMLinear
+ Clone both `gmlinear` and `gmlinear-workbench`.
+ Open the workbench in GameMaker Studio and make your additions/changes to the `GMLinear` script group. Also add corresponding tests to the `GMLinear_test` script group.
+ Export the `GMLinear` script group to `gmlinear-workbench`, overwriting its copy of `gmlinear_core.gml`.
+ Open a pull request on both `gmlinear` and `gmlinear-workbench`.
