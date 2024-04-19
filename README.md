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

## 2. Reproduce Test Case

- Clone this git repository

- Navigate to the folder of the repository
    ```
    cd julia_psimpy_repro
    ```


- Run the following command in Linux/Mac Terminal or Windows Powershell
    ```
    julia run.jl
    ```
    The generated plot `test_case_reproduced.png` should be the same as `test_case.png`. 


# Reporoducibility Aspects

This test case has been successfully reproduced on :
- [x] Linux (x86_64)
- [x] Linux WSL (x86_64)
- [ ] Linux (aarch_64)
- [x] Windows (x86_64)
- [ ] MacOS (x86_64)
- [x] MacOS (aarch_64)
