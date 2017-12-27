using StochasticDiffEq, DiffEqNoiseProcess
oup = OrnsteinUhlenbeckProcess!(1.0, 0.0, 1.0, 0.0, [0.0], [0.0])
noise = NoiseWrapper(oup)
prob = SDEProblem((t, u) -> -u, (t, u) -> 1.0, [0.0], (0.0, 1.0), noise=noise)
sol = solve(prob,SRIW1())
oup = OrnsteinUhlenbeckProcess!(1.0, 0.0, 1.0, 0.0, [0.0], [0.0])
noise = NoiseWrapper(oup)
prob = SDEProblem((t, u) -> -u, (t, u) -> 1.0, [0.0], (0.0, 1.0), noise=noise)
sol = solve(prob,SOSRI())
oup = OrnsteinUhlenbeckProcess!(1.0, 0.0, 1.0, 0.0, [0.0], [0.0])
noise = NoiseWrapper(oup)
prob = SDEProblem((t, u) -> -u, (t, u) -> 1.0, [0.0], (0.0, 1.0), noise=noise)
sol = solve(prob,SRA1())
oup = OrnsteinUhlenbeckProcess!(1.0, 0.0, 1.0, 0.0, [0.0], [0.0])
noise = NoiseWrapper(oup)
prob = SDEProblem((t, u) -> -u, (t, u) -> 1.0, [0.0], (0.0, 1.0), noise=noise)
sol = solve(prob,SRA2())
oup = OrnsteinUhlenbeckProcess!(1.0, 0.0, 1.0, 0.0, [0.0], [0.0])
noise = NoiseWrapper(oup)
prob = SDEProblem((t, u) -> -u, (t, u) -> 1.0, [0.0], (0.0, 1.0), noise=noise)
sol = solve(prob,SRA3())
