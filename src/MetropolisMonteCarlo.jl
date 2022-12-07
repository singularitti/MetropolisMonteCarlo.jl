module MetropolisMonteCarlo

using Random: AbstractRNG
using Thunks: Thunk

struct TrialMove
    def::Thunk
end

mutable struct Sweep
    trialmoves::Vector{TrialMove}
    accepted::Int
    finished::Bool
    rng::AbstractRNG
end

function run!(sweep::Sweep)
    for trialmove in sweep.trialmoves
        P = run(trialmove.def)
        if P > rand(sweep.rng)
            sweep.accepted += 1
        end
    end
    sweep.finished = true
    return sweep
end

function accept_ratio(sweep::Sweep)
    if sweep.finished
        return sweep.accepted / length(sweep.trialmoves)
    else
        error("")
    end
end

end
