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

end
