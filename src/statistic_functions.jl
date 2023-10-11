
"""
    rse_sum(myrange::UnitRange{Int64})

Return the sum of the elements of a given range.

# Arguments

- `myrange` -- range

# Output

A real number representing the sum of the range.

# Examples

```julia-repl
julia> rse_sum(1:5)
15
\```

See also [`rse_mean`](@ref), [`rse_std`](@ref)
"""
function rse_sum(myrange)
    res = 0
    for i in myrange
        res += i
    end
    return res
end

function rse_mean(myrange)
    return rse_sum(myrange) / length(myrange)
end

function rse_std(myrange)
    myvector = collect(myrange)
    return sqrt(sum((myvector .- rse_mean(myrange)) .^ 2) / (length(myrange) - 1))
end

function rse_tstat(myrange; σ=rse_std(myrange))
    return rse_mean(myrange) / (σ / sqrt(length(myrange)))
end

struct StatResult
    x::UnitRange{Int64}
    n::Int64
    std::Float64
    tvalue::Float64
end

function StatResult(myrange)
    x = myrange
    n = length(x)
    std = rse_std(x)
    tvalue = rse_tstat(x)
    StatResult(x, n, std, tvalue)
end

import Base: length

function Base.length(s::StatResult)
    return s.n
end