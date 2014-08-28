type SCIPPtr{T}
    ptr_array::Array{Ptr{T},1}
end

SSCIPPtr{T}() = SCIPPtr(Array{Ptr{T},1})

Base.pointer(x::SCIPPtr) = pointer(x.ptr_array)
Base.convert{T}(::Type{Ptr{T}}, x::SCIPPtr{T}) = x.ptr_array[1]
