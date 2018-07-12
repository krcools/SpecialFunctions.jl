include("../src/Amos.jl")
import Amos
using Base.Test

# override Main
for f in names(Amos)
    f == :Amos && continue
    if isdefined(Main,f)
        @eval global const $f = Amos.$f
    end
end

include("bessel.jl")
