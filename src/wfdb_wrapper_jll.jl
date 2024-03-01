# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule wfdb_wrapper_jll
using Base
using Base: UUID
import JLLWrappers

JLLWrappers.@generate_main_file_header("wfdb_wrapper")
JLLWrappers.@generate_main_file("wfdb_wrapper", UUID("cfa65b43-6878-5963-b59c-e7edc60d5dc9"))
end  # module wfdb_wrapper_jll
