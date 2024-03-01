# ! Manually added script pretending MSVC to be mingw
export read_ann, read_header, read_samples

JLLWrappers.@generate_wrapper_header("wfdb_wrapper")
JLLWrappers.@declare_executable_product(read_ann)
JLLWrappers.@declare_executable_product(read_header)
JLLWrappers.@declare_executable_product(read_samples)
function __init__()
    JLLWrappers.@generate_init_header()
    JLLWrappers.@init_executable_product(
        read_ann,
        "bin\\read_ann.exe",
    )

    JLLWrappers.@init_executable_product(
        read_header,
        "bin\\read_header.exe",
    )

    JLLWrappers.@init_executable_product(
        read_samples,
        "bin\\read_samples.exe",
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
