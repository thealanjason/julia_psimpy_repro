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
plot(x, y, label="data")
scatter!(x_train, y_train, label="sample")
plot!(x, y_predict[:,1], label="mean")
plot!(x, y_predict[:,2], label="lower")
plot!(x, y_predict[:,3], label="upper")
plot!(x, square.(x), label="true", linewidth=2.0, color="black")
