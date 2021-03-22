using LinearAlgebra
#using Plots
using Luxor

include("data.jl")
include("util/spherical_geometry.jl")
include("util/luxor_util.jl")
include("types/coral.jl")
include("types/floral.jl")

t = get_tile()

diameter = 60cm
radius = diameter / 2

coral = Coral2d(Coral3d(t, radius))
width = diameter / 30
hole_diameter = 5mm

print(coral)

generate_svg(coral, width, hole_diameter)
