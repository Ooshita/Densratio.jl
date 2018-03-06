module Densratio

export 
    densratio,
    compute_density_ratio,
    search_sigma_and_lambda,
    compute_kernel_Gaussian,
    kernel_Gaussian

using PyCall
const densratio_py = PyNULL() 

function __init__()
    copy!(densratio_py, pyimport_conda("densratio", "densratio"))
end

function densratio(x, y)
    densratio.densratio(x, y)
end

end # module
