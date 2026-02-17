# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule ESBMC_jll
using Base
using Base: UUID
Base.include(@__MODULE__, joinpath("..", ".pkg", "platform_augmentation.jl"))
import JLLWrappers

JLLWrappers.@generate_main_file_header("ESBMC")
JLLWrappers.@generate_main_file("ESBMC", Base.UUID("f2b6e0de-2827-5924-8156-f9b21238bd87"))
end  # module ESBMC_jll
