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

## For a Quick Preview
Run the following command in Linux/Mac Terminal or Windows Powershell
```
julia --project=@. psimpy_test.jl
```
The generated plot `test_case_reproduced.png` should be the same as `test_case.png`. 


## For Exploration in Interactive Mode

- Start Julia by typing `julia` in Linux/Mac Terminal or Windows Powershell

- Press the `]` to get into the package mode, (shown as `pkg>` in the terminal). 

- To activate the environment in the current repository, type `activate . ` and enter. Don't forget the `.` 

- To instantiate the environment, type `instantiate` and enter

- Press backspace to leave the package mode and get back to REPL mode(shown as `julia>` in the terminal).

- Copy and Paste the following commands (from file psimpy_test.jl) into the Julia terminal.

    ```
    using PythonCall
    using Plots

    np=pyimport("numpy")

    function square(x::Float64)
        x*x
    end

    x = LinRange(0, 10, 100)

    using Random
    rng = MersenneTwister(2);
    y = square.(x) .+ 5*randn(rng, size(x))


    emulator = pyimport("psimpy.emulator")

    ScalarGaSP=emulator.ScalarGaSP
    model = ScalarGaSP(ndim=1)

    x_train = x[1:20:100]
    y_train = y[1:20:100]
    model.train(np.asarray(x_train), np.asarray(y_train))

    y_predict = pyconvert(PyArray, model.predict(np.asarray(x)))
    figure = plot(x, y, label="data")
    scatter!(x_train, y_train, label="sample")
    plot!(x, y_predict[:,1], label="mean")
    plot!(x, y_predict[:,2], label="lower")
    plot!(x, y_predict[:,3], label="upper")
    plot!(x, square.(x), label="true", linewidth=2.0, color="black")
    ```
    The appearing plot should be the same as `test_case.png`. 

## Reporoducibility Aspects

This environment has been tested on Linux(64-bit). 
Next targets are Windows and Mac.