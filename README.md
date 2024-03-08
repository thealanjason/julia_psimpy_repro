# Psimpy Environment in Julia

This repository is a MWE to showcase installation of Psimpy, R, and RobustGaSP in a reproducible Julia environment. 




# Installation

## 1. Install Julia
Move to next step is Julia is already installed. 

### For Linux/Mac
In the terminal type the following command to install Julia.
```
curl -fsSL https://install.julialang.org | sh
```

### For Windows
In the Windows Powershell type the following command to install Julia
```
winget install julia -s msstore
```

## 2. Reproduce Test Environment

- Navigate to the folder of this repository on your computer

- Run the following command in Linux/Mac Terminal or Windows Powershell
    ```
    julia run.jl
    ```
    The generated plot `test_case_reproduced.png` should be the same as `test_case.png`. 


## Reporoducibility Aspects

This environment has been successfully reproduced on :
- [x] Linux (x86_64)
- [ ] Linux (aarch_64)
- [ ] Windows (x86_64)
- [ ] MacOS (x86_64)
- [ ] MacOS (aarch_64)