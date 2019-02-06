package d3d

import "core:sys/win32"

foreign import d3dcompiler "system:d3dcompiler.lib"

//----------------------------------------------------------------------------
// D3DCOMPILE flags:
// -----------------
// D3DCOMPILE_DEBUG
//   Insert debug file/line/type/symbol information.
//
// D3DCOMPILE_SKIP_VALIDATION
//   Do not validate the generated code against known capabilities and
//   constraints.  This option is only recommended when compiling shaders
//   you KNOW will work.  (ie. have compiled before without this option.)
//   Shaders are always validated by D3D before they are set to the device.
//
// D3DCOMPILE_SKIP_OPTIMIZATION 
//   Instructs the compiler to skip optimization steps during code generation.
//   Unless you are trying to isolate a problem in your code using this option 
//   is not recommended.
//
// D3DCOMPILE_PACK_MATRIX_ROW_MAJOR
//   Unless explicitly specified, matrices will be packed in row-major order
//   on input and output from the shader.
//
// D3DCOMPILE_PACK_MATRIX_COLUMN_MAJOR
//   Unless explicitly specified, matrices will be packed in column-major 
//   order on input and output from the shader.  This is generally more 
//   efficient, since it allows vector-matrix multiplication to be performed
//   using a series of dot-products.
//
// D3DCOMPILE_PARTIAL_PRECISION
//   Force all computations in resulting shader to occur at partial precision.
//   This may result in faster evaluation of shaders on some hardware.
//
// D3DCOMPILE_FORCE_VS_SOFTWARE_NO_OPT
//   Force compiler to compile against the next highest available software
//   target for vertex shaders.  This flag also turns optimizations off, 
//   and debugging on.  
//
// D3DCOMPILE_FORCE_PS_SOFTWARE_NO_OPT
//   Force compiler to compile against the next highest available software
//   target for pixel shaders.  This flag also turns optimizations off, 
//   and debugging on.
//
// D3DCOMPILE_NO_PRESHADER
//   Disables Preshaders. Using this flag will cause the compiler to not 
//   pull out static expression for evaluation on the host cpu
//
// D3DCOMPILE_AVOID_FLOW_CONTROL
//   Hint compiler to avoid flow-control constructs where possible.
//
// D3DCOMPILE_PREFER_FLOW_CONTROL
//   Hint compiler to prefer flow-control constructs where possible.
//
// D3DCOMPILE_ENABLE_STRICTNESS
//   By default, the HLSL/Effect compilers are not strict on deprecated syntax.
//   Specifying this flag enables the strict mode. Deprecated syntax may be
//   removed in a future release, and enabling syntax is a good way to make
//   sure your shaders comply to the latest spec.
//
// D3DCOMPILE_ENABLE_BACKWARDS_COMPATIBILITY
//   This enables older shaders to compile to 4_0 targets.
//
// D3DCOMPILE_DEBUG_NAME_FOR_SOURCE
//   This enables a debug name to be generated based on source information.
//   It requires D3DCOMPILE_DEBUG to be set, and is exclusive with
//   D3DCOMPILE_DEBUG_NAME_FOR_BINARY.
//
// D3DCOMPILE_DEBUG_NAME_FOR_BINARY
//   This enables a debug name to be generated based on compiled information.
//   It requires D3DCOMPILE_DEBUG to be set, and is exclusive with
//   D3DCOMPILE_DEBUG_NAME_FOR_SOURCE.
//
//----------------------------------------------------------------------------

D3DCompileFlags :: enum u32 {
	DEBUG                                = (1 << 0),
	SKIP_VALIDATION                      = (1 << 1),
	SKIP_OPTIMIZATION                    = (1 << 2),
	PACK_MATRIX_ROW_MAJOR                = (1 << 3),
	PACK_MATRIX_COLUMN_MAJOR             = (1 << 4),
	PARTIAL_PRECISION                    = (1 << 5),
	FORCE_VS_SOFTWARE_NO_OPT             = (1 << 6),
	FORCE_PS_SOFTWARE_NO_OPT             = (1 << 7),
	NO_PRESHADER                         = (1 << 8),
	AVOID_FLOW_CONTROL                   = (1 << 9),
	PREFER_FLOW_CONTROL                  = (1 << 10),
	ENABLE_STRICTNESS                    = (1 << 11),
	ENABLE_BACKWARDS_COMPATIBILITY       = (1 << 12),
	IEEE_STRICTNESS                      = (1 << 13),
	OPTIMIZATION_LEVEL0                  = (1 << 14),
	OPTIMIZATION_LEVEL1                  = 0,
	OPTIMIZATION_LEVEL2                  = ((1 << 14) | (1 << 15)),
	OPTIMIZATION_LEVEL3                  = (1 << 15),
	RESERVED16                           = (1 << 16),
	RESERVED17                           = (1 << 17),
	WARNINGS_ARE_ERRORS                  = (1 << 18),
	RESOURCES_MAY_ALIAS                  = (1 << 19),
	ENABLE_UNBOUNDED_DESCRIPTOR_TABLES   = (1 << 20),
	ALL_RESOURCES_BOUND                  = (1 << 21),
	DEBUG_NAME_FOR_SOURCE                = (1 << 22),
	DEBUG_NAME_FOR_BINARY                = (1 << 23),
}

//----------------------------------------------------------------------------
// D3DCOMPILE_EFFECT flags:
// -------------------------------------
// These flags are passed in when creating an effect, and affect
// either compilation behavior or runtime effect behavior
//
// D3DCOMPILE_EFFECT_CHILD_EFFECT
//   Compile this .fx file to a child effect. Child effects have no
//   initializers for any shared values as these are initialied in the
//   master effect (pool).
//
// D3DCOMPILE_EFFECT_ALLOW_SLOW_OPS
//   By default, performance mode is enabled.  Performance mode
//   disallows mutable state objects by preventing non-literal
//   expressions from appearing in state object definitions.
//   Specifying this flag will disable the mode and allow for mutable
//   state objects.
//
//----------------------------------------------------------------------------
D3DCompileEffectFlags :: enum u32 {
	CHILD_EFFECT              = (1 << 0),
	ALLOW_SLOW_OPS            = (1 << 1),
}

//----------------------------------------------------------------------------
// D3DCOMPILE Flags2:
// -----------------
// Root signature flags. (passed in Flags2)
D3DCompileFlags2 :: enum u32 {
	FORCE_ROOT_SIGNATURE_LATEST			= 0,
	FORCE_ROOT_SIGNATURE_1_0			= (1 << 4),
	FORCE_ROOT_SIGNATURE_1_1			= (1 << 5),
}

D3DCompileSecDataFlags :: enum u32 {
	MERGE_UAV_SLOTS              = 0x00000001,
	PRESERVE_TEMPLATE_SLOTS      = 0x00000002,
	REQUIRE_TEMPLATE_MATCH       = 0x00000004,
}

//----------------------------------------------------------------------------
// D3DCompile:
// ----------
// Compile source text into bytecode appropriate for the given target.
//----------------------------------------------------------------------------

// D3D_COMPILE_STANDARD_FILE_INCLUDE can be passed for pInclude in any
// API and indicates that a simple default include handler should be
// used.  The include handler will include files relative to the
// current directory and files relative to the directory of the initial source
// file.  When used with APIs like D3DCompile pSourceName must be a
// file name and the initial relative directory will be derived from it.


@(default_calling_convention = "std")
foreign d3dcompiler {
	//----------------------------------------------------------------------------
	// D3DReadFileToBlob:
	// -----------------
	// Simple helper routine to read a file on disk into memory
	// for passing to other routines in this API.
	//----------------------------------------------------------------------------
	@(link_name="D3DReadFileToBlob") d3d_read_file_to_blob :: proc "std" (file_name: cstring, out_blob: ^^ID3D_Blob) -> win32.Hresult ---;

	//----------------------------------------------------------------------------
	// D3DWriteBlobToFile:
	// ------------------
	// Simple helper routine to write a memory blob to a file on disk.
	//----------------------------------------------------------------------------
	@(link_name="D3DWriteFileToBlob") d3d_write_file_to_blob :: proc "std" (blob: ^ID3D_Blob, file_name: win32.Wstring, overwrite: b32) -> win32.Hresult ---;

	@(link_name="D3DCompile") d3d_compile :: proc "std" (src_data: rawptr, src_data_size: uint, name: cstring, opt_defines: rawptr,
		include: ^ID3D_Include, entry_point: cstring, target: cstring, flags_one: D3DCompileFlags, flags_two: D3DCompileFlags2,
		out_blob: ^^ID3D_Blob, out_opt_errors: ^^ID3D_Blob) -> win32.Hresult ---;

	@(link_name="D3DCompile2") d3d_compile2 :: proc "std" (src_data: rawptr, src_data_size: uint, name: cstring, opt_defines: rawptr,
		include: ^ID3D_Include, entry_point: cstring, target: cstring, flags_one: u32, flags_two: u32,
		sec_data_flags: u32, opt_sec_data: rawptr, sec_data_size: u32, out_blob: ^^ID3D_Blob, 
		out_opt_errors: ^^ID3D_Blob) -> win32.Hresult ---;

	@(link_name="D3DCompileFromFile") d3d_compile_from_file :: proc "std" (file_name: win32.Wstring, opt_defines: ^D3D_Shader_Macro, 
		opt_include: ^ID3D_Include, entry_point: cstring, target: cstring, flags_one: u32, flags_two: u32, 
		out_blob: ^^ID3D_Blob, out_opt_errors: ^^ID3D_Blob) -> win32.Hresult ---;
}

