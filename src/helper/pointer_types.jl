export SPtr
# type SPtr{T<:SCIPType}
type SPtr{T}
    ptr_array::Array{Core.Ptr{T},1}
end

SPtr{T}(::Type{T}) = SPtr(Array(Ptr{T},1))

Base.pointer(x::SPtr) = pointer(x.ptr_array)
# is the following safe from GC? Probably not...
# Base.pointer{T<:SCIPType}(X::Vector{SPtr{T}}) = pointer([[x.ptr_array for x in X]...])
Base.pointer{T}(X::Vector{SPtr{T}}) = pointer([[x.ptr_array for x in X]...])
# function Base.convert{T<:SCIPType}(::Type{Ptr{T}}, x::SPtr{T})
function Base.convert{T}(::Type{Ptr{T}}, x::SPtr{T})
    length(x.ptr_array) == 1 || error("Ill-defined conversion call")
    x.ptr_array[1]
end
