package d3d

import "core:sys/win32"

foreign import "system:d3d11.lib"

D3D11_SDK_VERSION :: 7;
D3D11_Rect :: win32.Rect;
D3D11_FLOAT32_MAX :: 3.402823466e+38;

RIID_D3D11_Device_Child := &_IID_D3D11_Device_Child;
_IID_D3D11_Device_Child := win32.Iid {
    data_one = 0x1841e5c8,
    data_two = 0x16b0,
    data_three = 0x489b,
    data_four_arr = {
        0xbc, 0xc8, 0x44, 0xcf,
        0xb0, 0xd5, 0xde, 0xae
    },
};

RIID_D3D11_Device_Context := &_IID_D3D11_Device_Context;
_IID_D3D11_Device_Context := win32.Iid {
    data_one = 0xc0bfa96c,
    data_two = 0xe089,
    data_three = 0x44fb,
    data_four_arr = {
        0x8e, 0xaf, 0x26, 0xf8,
        0x79, 0x61, 0x90, 0xda
    },
};

RIID_D3D11_Device := &_IID_D3D11_Device;
_IID_D3D11_Device := win32.Iid {
    data_one = 0xdb6f6ddb,
    data_two = 0xac77,
    data_three = 0x4e88,
    data_four_arr = {
        0x82, 0x53, 0x81, 0x9d,
        0xf9, 0xbb, 0xf1, 0x40
    },
};

RIID_ID3D11_Texture2D := &_IID_ID3D11_Texture2D;
_IID_ID3D11_Texture2D := win32.Iid {
    data_one = 0x6f15aaf2,
    data_two = 0xd208,
    data_three = 0x4e89,
    data_four_arr = { 
        0x9a, 0xb4, 0x48, 0x95, 
        0x35, 0xd3, 0x4f, 0x9c
    },
};

RIID_ID3D11_Debug := &_IID_ID3D11_Debug;
_IID_ID3D11_Debug := win32.Iid {
    data_one = 0x79cf2233,
    data_two = 0x7536,
    data_three = 0x4948,
    data_four_arr = { 
        0x9d, 0x36, 0x1e, 0x46,
        0x92, 0xdc, 0x57, 0x60
    },
};

RIID_ID3D11_Info_Queue := &_IID_ID3D11_Info_Queue;
_IID_ID3D11_Info_Queue := win32.Iid {
    data_one = 0x6543dbb6,
    data_two = 0x1b48,
    data_three = 0x42f5,
    data_four_arr = { 
        0xab, 0x82, 0xe9, 0x7e,
        0xc7, 0x43, 0x26, 0xf6
    },
};

///// ENUMS \\\\\

D3D11BindFlag :: enum u32 {
    VERTEX_BUFFER       = 0x1,
    INDEX_BUFFER        = 0x2,
    CONSTANT_BUFFER     = 0x4,
    SHADER_RESOURCE     = 0x8,
    STREAM_OUTPUT       = 0x10,
    RENDER_TARGET       = 0x20,
    DEPTH_STENCIL       = 0x40,
    UNORDERED_ACCESS    = 0x80,
    DECODER             = 0x200,
    VIDEO_ENCODER       = 0x400,
}

D3D11CreateDeviceFlag :: enum u32 {
    SINGLE_THREADED                                 = 0x1,
    DEBUG                                           = 0x2,
    SWITCH_TO_REF                                   = 0x4,
    PREVENT_INTERNAL_THREADING_OPTIMIZATIONS        = 0x8,
    BGRA_SUPPORT                                    = 0x20,
    DEBUGGABLE                                      = 0x40,
    PREVENT_ALTERING_LAYER_SETTINGS_FROM_REGISTRY   = 0x80,
    DISABLE_GPU_TIMEOUT                             = 0x100,
    VIDEO_SUPPORT                                   = 0x800,
}

D3D11ClearFlag :: enum u32 {
    DEPTH       = 0x1,
    STENCIL     = 0x2,
}

D3D11ComparisonFunc :: enum u32 {
    NEVER           = 1,
    LESS            = 2,
    EQUAL           = 3,
    LESS_EQUAL      = 4,
    GREATER         = 5,
    NOT_EQUAL       = 6,
    GREATER_EQUAL   = 7,
    ALWAYS          = 8,
}

D3D11CPUAccessFlag :: enum u32 {
    NONE    = 0x0,
    WRITE   = 0x10000,
    READ    = 0x20000,
}

D3D11DepthStencilViewDimension :: enum u32 {
    UNKNOWN                         = 0,
    TEXTURE1D                       = 1,
    TEXTURE1D_ARRAY                 = 2,
    TEXTURE2D                       = 3,
    TEXTURE2D_ARRAY                 = 4,
    TEXTURE2D_MULTI_SAMPLED         = 5,
    TEXTURE2D_ARRAY_MULTI_SAMPLED   = 6,
}

D3D11Map :: enum u32 {
    READ                    = 0x1,
    WRITE                   = 0x2,
    READ_WRITE              = 0x3,
    WRITE_DISCARD           = 0x4,
    WRITE_NO_OVERWRITE      = 0x5,
}

D3D11_Map_Flag :: enum u32 {
    DO_NOT_WAIT = 0x100000,
}

D3D11_Raise_Flag :: enum u32 {
    DRIVER_INTERNAL_ERROR = 0x1,
}

D3D11RenderTargetViewDimension :: enum u32 {
    UNKNOWN                         = 0,
    BUFFER                          = 1,
    TEXTURE1D                       = 2,
    TEXTURE1D_ARRAY                 = 3,
    TEXTURE2D                       = 4,
    TEXTURE2D_ARRAY                 = 5,
    TEXTURE2D_MULTI_SAMPLED         = 6,
    TEXTURE2D_ARRAY_MULTI_SAMPLED   = 7,
    TEXTURE3D                       = 8,
}

D3D11_Resource_Dimension :: enum u32 {
    UNKNOWN     = 0,
    BUFFER      = 1,
    TEXTURE1D   = 2,
    TEXTURE2D   = 3,
    TEXTURE3D   = 4,
}

D3D11ResourceMiscFlag :: enum u32 {
    NONE                                = 0x0,
    GENERATE_MIPS                       = 0x1,
    SHARED                              = 0x2,
    TEXTURE_CUBE                        = 0x4,
    DRAW_INDIRECT_ARGS                  = 0x10,
    BUFFER_ALLOW_RAW_VIEWS              = 0x20,
    BUFFER_STRUCTURED                   = 0x40,
    RESOURCE_CLAMP                      = 0x80,
    SHARED_KEY_MUTEX                    = 0x100,
    GDI_COMPATIBLE                      = 0x200,
    SHARED_INT_HANDLE                   = 0x800,
    RESTRICTED_CONTENT                  = 0x1000,
    RESTRICT_SHARED_RESOURCE            = 0x2000,
    RESTRICT_SHARED_RESOURCE_DRIVER     = 0x4000,
    GUARDED                             = 0x8000,
    TITLE_POOL                          = 0x20000,
    TITLED                              = 0x40000,
    HARDWARE_PROTECTED                  = 0x80000,
}

D3D11_Unordered_Access_View_Dimension :: enum u32 {
    UNKNOWN             = 0,
    BUFFER              = 1,
    TEXTURE1D           = 2,
    TEXTURE1D_ARRAY     = 3,
    TEXTURE2D           = 4,
    TEXTURE2D_ARRAY     = 5,
    TEXTURE3D           = 8,
}

D3D11Usage :: enum u32 {
    DEFAULT = 0x0,
    IMMUTABLE = 0x1,
    DYNAMIC = 0x2,
    STAGING = 0x3,
}

D3D11DepthWriteMask :: enum u32 {
    ZERO    = 0,
    ALL     = 1,
}

D3D11StencilOp :: enum u32 {
    KEEP                = 1,
    ZERO                = 2,
    REPLACE             = 3,
    INCREMENT_SAT       = 4,
    DECREMENT_SAT       = 5,
    INVERT              = 6,
    INCREMENT           = 7,
    DECREMENT           = 8,
}

D3D11_Buffer_Desc :: struct {
    byte_width: u32,
    usage: D3D11Usage,
    bind_flags: D3D11BindFlag,
    cpu_access_flags: D3D11CPUAccessFlag,
    misc_flags: D3D11ResourceMiscFlag,
    byte_stride: u32,
}

D3D11_Box :: struct {
    left, top, front, right, bottom, back: u32
}

D3D11_Depth_Stencil_Op_Desc :: struct {
    stencil_fail_op: D3D11StencilOp,
    depth_fail_op: D3D11StencilOp,
    stencil_pass_op: D3D11StencilOp,
    stencil_func: D3D11ComparisonFunc,
}

D3D11_Depth_Stencil_Desc :: struct {
    depth_enabled: b32,
    depth_write_mask: D3D11DepthWriteMask,
    depth_func: D3D11ComparisonFunc,
    stencil_enabled: b32,
    stencil_read_mask: u8,
    stencil_write_mask: u8,
    front_face: D3D11_Depth_Stencil_Op_Desc,
    back_face: D3D11_Depth_Stencil_Op_Desc,
}

D3D11_Texture1D_Desc :: struct {
    width, mip_levels, array_size: u32,
    format: DXGIFormat,
    usage: D3D11Usage,
    bind_flags: D3D11BindFlag,
    cpu_access_flags: D3D11CPUAccessFlag,
    misc_flags: u32,
}

D3D11_Texture2D_Desc :: struct {
    width, height, mip_levels, array_size: u32,
    format: DXGIFormat,
    sample_desc: DXGI_Sample_Desc,
    usage: D3D11Usage,
    bind_flags: D3D11BindFlag,
    cpu_access_flags: D3D11CPUAccessFlag,
    misc_flags: u32,
}

D3D11_Texture3D_Desc :: struct {
    width, height, depth, mip_levels: u32,
    format: DXGIFormat,
    usage: D3D11Usage,
    bind_flags: D3D11BindFlag,
    cpu_access_flags: D3D11CPUAccessFlag,
    misc_flags: u32,
}

D3D11_Sub_Resource_Data :: struct {
    sys_mem: rawptr,
    mem_pitch: u32,
    mem_slice_pitch: u32,
}

D3D11_Mapped_Sub_Resource :: struct {
    data: rawptr,
    row_pitch: u32,
    depth_pitch: u32,
}

D3D11_Buffer_Shader_Resource_View :: struct {
    struct #raw_union {
        first_element: u32,
        element_offset: u32,
    },
    struct #raw_union {
        num_elements: u32,
        element_width: u32,
    }
}

D3D11_Texture1D_Shader_Resource_View :: struct {
    most_detailed_mip: u32,
    num_mip_levels: u32,
}

D3D11_Texture2D_Shader_Resource_View :: D3D11_Texture1D_Shader_Resource_View;
D3D11_Texture3D_Shader_Resource_View :: D3D11_Texture1D_Shader_Resource_View;
D3D11_Texture_Cube_Shader_Resource_View :: D3D11_Texture1D_Shader_Resource_View;

D3D11_Texture1D_Array_Shader_Resource_View :: struct {
    most_detailed_mip: u32,
    num_mip_levels: u32,
    first_array_slice: u32,
    array_size: u32,
}

D3D11_Texture2D_Multi_Sampled_Shader_Resource_View :: struct {
    unused: u32,
}

D3D11_Texture2D_Array_Multi_Sampled_Shader_Resource_View :: struct {
    first_array_slice: u32,
    array_size: u32,
}

D3D11_Texture_Cube_Array_Shader_Resource_View :: struct {
    most_detailed_mip: u32,
    num_mip_levels: u32,
    first_array_face_idx: u32,
    num_cubes: u32,
}

D3D11_Texture2D_Array_Shader_Resource_View :: D3D11_Texture1D_Array_Shader_Resource_View;

D3D11_Shader_Resource_View_Desc :: struct {
    format: DXGIFormat,
    view_dimension: D3D11ShaderResourceViewDimension,
    using srv: struct #raw_union {
        buffer: D3D11_Buffer_Shader_Resource_View,
        texture_1d: D3D11_Texture1D_Shader_Resource_View,
        texture_arr_1d: D3D11_Texture1D_Array_Shader_Resource_View,
        texture_2d: D3D11_Texture2D_Shader_Resource_View,
        texture_arr_2d: D3D11_Texture1D_Array_Shader_Resource_View,
        texture_multi_samp_2d: D3D11_Texture2D_Multi_Sampled_Shader_Resource_View,
        texture_arr_multi_samp_2d: D3D11_Texture2D_Array_Multi_Sampled_Shader_Resource_View,
        texture_3d: D3D11_Texture3D_Shader_Resource_View, D3D11_Texture_Cube_Shader_Resource_View,
        texture_cube: D3D11_Texture_Cube_Shader_Resource_View,
        texture_arr_cube: D3D11_Texture_Cube_Array_Shader_Resource_View,
    },
}

D3D11_Buffer_Unordered_Access_View :: struct {
    first_element: u32,
    num_elements: u32,
    flags: u32,
}

D3D11_Tex1D_Unordered_Access_View :: struct {
    mip_slice: u32,
}

D3D11_Tex2D_Unordered_Access_View :: D3D11_Tex1D_Unordered_Access_View;

D3D11_Tex1D_Array_Unordered_Access_View :: struct {
    mip_slice: u32,
    first_array_slice: u32,
    array_size: u32,
}

D3D11_Tex2D_Array_Unordered_Access_View :: D3D11_Tex1D_Array_Unordered_Access_View;

D3D11_Tex3D_Unordered_Access_View :: struct {
    mip_slice: u32,
    first_wslice: u32,
    wsize: u32,
}

D3D11_Unordered_Access_View_Desc :: struct {
    format: DXGIFormat,
    view_dimension: D3D11_Unordered_Access_View_Dimension,
    using uav: struct #raw_union {
        buffer: D3D11_Buffer_Unordered_Access_View,
        texture_1d: D3D11_Tex1D_Unordered_Access_View,
        texture_1d_array: D3D11_Tex1D_Array_Unordered_Access_View,
        texture_2d: D3D11_Tex2D_Unordered_Access_View,
        texture_2d_array: D3D11_Tex2D_Array_Unordered_Access_View,
        texture_3d: D3D11_Tex3D_Unordered_Access_View,
    }
}

D3D11_Buffer_Render_Target_View :: struct {
    using _ : struct #raw_union {
        first_element: u32,
        element_offset: u32,
    },
    using _ : struct #raw_union {
        num_elements: u32,
        element_width: u32,
    },
}

D3D11_Tex1D_Render_Target_View :: struct {
    mip_slice: u32,
}

D3D11_Tex2D_Render_Target_View :: D3D11_Tex1D_Render_Target_View;

D3D11_Tex1D_Array_Render_Target_View :: struct {
    mip_slice: u32,
    first_array_slice: u32,
    array_size: u32,
}

D3D11_Tex2D_Array_Render_Target_View :: D3D11_Tex1D_Array_Render_Target_View;

D3D11_Tex2D_Multi_Sampled_Render_Target_View :: struct {
    _ : u32,
}

D3D11_Tex2D_Array_Multi_Sampled_Render_Target_View :: struct {
    first_array_slice: u32,
    array_size: u32,
}

D3D11_Tex3D_Render_Target_View :: struct {
    mip_slice: u32,
    first_wslice: u32,
    wsize: u32,
}

D3D11_Render_Target_View_Desc :: struct {
    format: DXGIFormat,
    view_dimension: D3D11RenderTargetViewDimension,
    using _ : struct #raw_union {
        buffer: D3D11_Buffer_Render_Target_View,
        texture_1d: D3D11_Tex1D_Render_Target_View,
        texture_1d_array: D3D11_Tex1D_Array_Render_Target_View,
        texture_2d: D3D11_Tex2D_Render_Target_View,
        texture_2d_array: D3D11_Tex2D_Array_Render_Target_View,
        texture_2d_multi_sampled: D3D11_Tex2D_Multi_Sampled_Render_Target_View,
        texture_2d_array_multi_sampled: D3D11_Tex2D_Array_Multi_Sampled_Render_Target_View,
        texture_3d: D3D11_Tex3D_Render_Target_View,
    },
}

D3D11_Tex1D_Depth_Stencil_View :: struct {
    mip_slice: u32,
}

D3D11_Tex2D_Depth_Stencil_View :: D3D11_Tex1D_Depth_Stencil_View;

D3D11_Tex1D_Array_Depth_Stencil_View :: struct {
    mip_slice: u32,
    first_array_slice: u32,
    array_size: u32,
}

D3D11_Tex2D_Array_Depth_Stencil_View :: D3D11_Tex1D_Array_Depth_Stencil_View;

D3D11_Tex2D_Multi_Sampled_Depth_Stencil_View :: struct {
    _ : u32,
}

D3D11_Tex2D_Array_Multi_Sampled_Depth_Stencil_View :: struct {
    first_array_slice: u32,
    array_size: u32,
}

D3D11_Depth_Stencil_View_Flag :: enum u32 {
    READ_ONLY           = 0x0,
    READ_ONLY_DEPTH     = 0x1,
    READ_ONLY_STENCIL   = 0x2,
}

D3D11_Depth_Stencil_View_Desc :: struct {
    format: DXGIFormat,
    view_dimension: D3D11DepthStencilViewDimension,
    flags: D3D11_Depth_Stencil_View_Flag,
    using _ : struct #raw_union {
        texture_1d: D3D11_Tex1D_Depth_Stencil_View,
        texture_1d_array: D3D11_Tex1D_Array_Depth_Stencil_View,
        texture_2d: D3D11_Tex2D_Depth_Stencil_View,
        texture_2d_array: D3D11_Tex2D_Array_Depth_Stencil_View,
        texture_2d_multi_sampled: D3D11_Tex2D_Multi_Sampled_Depth_Stencil_View,
        texture_2d_array_multi_sampled: D3D11_Tex2D_Array_Multi_Sampled_Depth_Stencil_View,
    },
}

D3D11CullMode :: enum u32 {
    NONE        = 1,
    FRONT       = 2,
    BACK        = 3,
}

D3D11FillMode :: enum u32 {
    WIREFRAME       = 2,
    SOLID           = 3,
}

D3D11InputClassification :: enum u32 {
    PER_VERTEX_DATA         = 0,
    PER_INSTANCE_DATA       = 1,
}

D3D11_Input_Element_Desc :: struct {
    semantic_name: cstring,
    semantic_index: u32,
    format: DXGIFormat,
    input_slot: u32,
    aligned_byte_offset: u32,
    input_slot_class: D3D11InputClassification,
    instance_data_step_rate: u32,
}

D3D11_Viewport :: struct {
    top_left_x, top_left_y: f32,
    width, height: f32,
    min_depth, max_depth: f32,
}

D3D11_Draw_Instanced_Indirect_Args :: struct {
    vertex_count_per_instance: u32,
    instance_count: u32,
    start_vertex_location: u32,
    start_instance_location: u32,
}

D3D11_Draw_Indexed_Instanced_Indirect_Args :: struct {
    vertex_count_per_instance: u32,
    instance_count: u32,
    start_index_location: u32,
    base_vertex_location: i32,
    start_instance_location: u32,
}

D3D11BlendType :: enum u32 {
    ZERO                = 1,
    ONE                 = 2,
    SRC_COLOR           = 3,
    INV_SRC_COLOR       = 4,
    SRC_ALPHA           = 5,
    INV_SRC_ALPHA       = 6,
    DEST_ALPHA          = 7,
    INV_DEST_ALPHA      = 8,
    DEST_COLOR          = 9,
    INV_DEST_COLOR      = 10,
    SRC_ALPHA_SAT       = 11, //idk what an SAT is
    // no 12 or 13?
    BLEND_FACTOR        = 14,
    INV_BLEND_FACTOR    = 15,
    SRC1_COLOR          = 16,
    INV_SRC1_COLOR      = 17,
    SRC1_ALPHA          = 18,
    INV_SRC1_ALPHA      = 19,
}

D3D11BlendOpType :: enum u32 {
    ADD             = 1,
    SUBTRACT        = 2,
    REV_SUBTRACT    = 3,
    MIN             = 4,
    MAX             = 5,
}

D3D11ColorWriteEnable :: enum u32 {
    RED         = 0x1,
    GREEN       = 0x2,
    BLUE        = 0x4,
    ALPHA       = 0x8,
    ALL         = RED | GREEN | BLUE | ALPHA,
}

D3D11_Render_Target_Blend_Desc :: struct {
    blend_enabled: b32,
    src_blend_type: D3D11BlendType,
    dest_blend_type: D3D11BlendType,
    blend_op: D3D11BlendOpType,
    src_blend_alpha: D3D11BlendType,
    dest_blend_alpha: D3D11BlendType,
    blend_op_alpha: D3D11BlendOpType,
    render_target_write_mask: u8,
}

D3D11_Blend_Desc :: struct {
    alpha_to_coverage_enabled: b32,
    independent_blend_enabled: b32,
    render_targets: [8]D3D11_Render_Target_Blend_Desc,
}

ID3D11_Blend_State_Vtbl :: struct {
    using dev_child_vtbl: ID3D11_Device_Child_Vtbl(ID3D11_Blend_State),
    get_desc: proc "std" (this: ^ID3D11_Blend_State, out_desc: ^D3D11_Blend_Desc),
}

ID3D11_Blend_State :: struct {
    using vtbl: ^ID3D11_Blend_State_Vtbl,
}

ID3D11_Device_Child :: struct {
    using vtbl: ^ID3D11_Device_Child_Vtbl(ID3D11_Device_Child),
}

ID3D11_Device_Child_Vtbl :: struct(T: typeid) {
    using base: win32.I_Unknown_Vtbl(T),
    get_device: proc (this: ^T, device: ^^ID3D11_Device),
    get_private_data: proc (this: ^T, guid: ^win32.Guid, data_size: ^u32, out_data: rawptr) -> win32.Hresult,
    set_private_data: proc (this: ^T, guid: ^win32.Guid, size: u32, data: rawptr) -> win32.Hresult,
    set_private_data_interface: proc (this: ^T, guid: ^win32.Guid, data: rawptr) -> win32.Hresult,
}

ID3D11_Resource_Vtbl :: struct(T: typeid) {
    using dev_child_vtbl: ID3D11_Device_Child_Vtbl(T),
    get_type: proc (out_res: ^D3D11_Resource_Dimension),
    set_eviction_priority: proc (eviction_priority: u32),
    get_eviction_priority: proc () -> u32,
}

ID3D11_Resource :: struct {
    using vtbl: ^ID3D11_Resource_Vtbl(ID3D11_Resource),
}

ID3D11_Texture1D_Vtbl :: struct {
    using resource_vtbl: ID3D11_Resource_Vtbl(ID3D11_Texture1D),
    get_desc: proc "std" (this: ^ID3D11_Texture1D, out_desc: ^D3D11_Texture1D_Desc),
}

ID3D11_Texture1D :: struct {
    using vtbl: ^ID3D11_Texture1D_Vtbl,
}

ID3D11_Texture2D_Vtbl :: struct {
    using resource_vtbl: ID3D11_Resource_Vtbl(ID3D11_Texture2D),
    get_desc: proc "std" (this: ^ID3D11_Texture2D, out_desc: ^D3D11_Texture2D_Desc),
}

ID3D11_Texture2D :: struct {
    using vtbl: ^ID3D11_Texture2D_Vtbl,
}

ID3D11_Texture3D_Vtbl :: struct {
    using resource_vtbl: ID3D11_Resource_Vtbl(ID3D11_Texture3D),
    get_desc: proc "std" (this: ^ID3D11_Texture3D, out_desc: ^D3D11_Texture3D_Desc),
}

ID3D11_Texture3D :: struct {
    using vtbl: ^ID3D11_Texture3D_Vtbl,
}

ID3D11_Buffer_Vtbl :: struct {
    using res_vtbl: ID3D11_Resource_Vtbl(ID3D11_Buffer),
    get_desc: proc (out_desc: ^D3D11_Buffer_Desc),
}

ID3D11_Buffer :: struct {
    using vtbl: ^ID3D11_Buffer_Vtbl,
}

ID3D11_View_Vtbl :: struct(T: typeid) {
    using dev_child_vtbl: ^ID3D11_Device_Child_Vtbl(T),
    get_resource: proc "std" (out_resources: ^^ID3D11_Resource),
}

ID3D11_View :: struct {
    using vtbl: ^ID3D11_View_Vtbl(ID3D11_View),
}

ID3D11_Shader_Resource_View_Vtbl :: struct {
    using view_vtbl: ^ID3D11_View_Vtbl(ID3D11_Shader_Resource_View),
    get_desc: proc "std" (out_desc: ^D3D11_Shader_Resource_View_Desc),
}

ID3D11_Shader_Resource_View :: struct {
    using vtbl: ^ID3D11_Shader_Resource_View_Vtbl,
}

ID3D11_Class_Linkage_Vtbl :: struct {
    get_class_instance: proc "std" (name: cstring, index: u32, out_instance: ^^ID3D11_Class_Instance) -> win32.Hresult,
    create_class_instance: proc "std" (name: cstring, buffer_offset: u32, vector_offset: u32,
        texture_offset: u32, sampler_offset: u32, out_instance: ^^ID3D11_Class_Instance) -> win32.Hresult,
}

ID3D11_Class_Linkage :: struct {
    using vtbl: ^ID3D11_Class_Linkage_Vtbl,
}

D3D11_Class_Instance_Desc :: struct {
    instance_id, instance_index, type_id, constant_buffer: u32,
    base_constant_buffer_offset, base_texture, base_sampler: u32,
    is_created: b32,
}

ID3D11_Class_Instance_Vtbl :: struct {
    using dev_child_vtbl: ID3D11_Device_Child_Vtbl(ID3D11_Class_Instance),
    get_class_linkage: proc "std" (out_class_linkage: ^^ID3D11_Class_Linkage),
    get_desc: proc "std" (out_desc: ^D3D11_Class_Instance_Desc),
    get_instance_name: proc "std" (out_name: ^cstring, in_out_len: ^uint),
    get_type_name: proc "std" (out_name: ^cstring, in_out_len: ^uint),
}

ID3D11_Class_Instance :: struct {
    using vtbl: ^ID3D11_Class_Instance_Vtbl,
}

ID3D11_Depth_Stencil_State_Vtbl :: struct {
    using dev_child_vtbl: ID3D11_Device_Child_Vtbl(ID3D11_Depth_Stencil_State),
    get_desc: proc "std" (out_desc: ^D3D11_Depth_Stencil_Desc),
}

ID3D11_Depth_Stencil_State :: struct {
    using vtbl: ^ID3D11_Depth_Stencil_State_Vtbl,
}

ID3D11_Depth_Stencil_View_Vtbl :: struct {
    using view_vtbl: ID3D11_View_Vtbl(ID3D11_Depth_Stencil_View),
    get_desc: proc "std" (out_desc: ^D3D11_Depth_Stencil_View_Desc),
}

ID3D11_Depth_Stencil_View :: struct {
    using vtbl: ^ID3D11_Depth_Stencil_View_Vtbl,
}

ID3D11_Geometry_Shader_Vtbl :: struct {
    using dev_child_vtbl: ID3D11_Device_Child_Vtbl(ID3D11_Geometry_Shader),
}

ID3D11_Geometry_Shader :: struct {
    using vtbl: ^ID3D11_Geometry_Shader_Vtbl,
}

ID3D11_Input_Layout_Vtbl :: struct {
    using dev_child_vtbl: ID3D11_Device_Child_Vtbl(ID3D11_Input_Layout), 
}

ID3D11_Input_Layout :: struct {
    using vtbl: ^ID3D11_Input_Layout_Vtbl,
}

ID3D11_Vertex_Shader_Vtbl :: struct {
    using dev_child_vtbl: ID3D11_Device_Child_Vtbl(ID3D11_Vertex_Shader),
}

ID3D11_Vertex_Shader :: struct {
    using vtbl: ^ID3D11_Vertex_Shader_Vtbl,
}

ID3D11_Pixel_Shader_Vtbl :: struct {
    using dev_child_vtbl: ID3D11_Device_Child_Vtbl(ID3D11_Pixel_Shader),
}

ID3D11_Pixel_Shader :: struct {
    using vtbl: ^ID3D11_Pixel_Shader_Vtbl,
}

ID3D11_Hull_Shader_Vtbl :: struct {
    using dev_child_vtbl: ID3D11_Device_Child_Vtbl(ID3D11_Hull_Shader),
}

ID3D11_Hull_Shader :: struct {
    using vtbl: ^ID3D11_Hull_Shader_Vtbl,
}

ID3D11_Domain_Shader_Vtbl :: struct {
    using dev_child_vtbl: ID3D11_Device_Child_Vtbl(ID3D11_Domain_Shader),
}

ID3D11_Domain_Shader :: struct {
    using vtbl: ^ID3D11_Domain_Shader_Vtbl,
}

ID3D11_Compute_Shader_Vtbl :: struct {
    using dev_child_vtbl: ID3D11_Device_Child_Vtbl(ID3D11_Compute_Shader),
}

ID3D11_Compute_Shader :: struct {
    using vtbl: ^ID3D11_Compute_Shader_Vtbl,
}

ID3D11_Unordered_Access_View_Vtbl :: struct {
    using view_vtbl: ID3D11_View_Vtbl(ID3D11_Unordered_Access_View),
    get_desc: proc "std" (out_desc: ^D3D11_Unordered_Access_View_Desc),
}

ID3D11_Unordered_Access_View :: struct {
    using vtbl: ^ID3D11_Unordered_Access_View_Vtbl,
}

//Description of a vertex element in a vertex buffer in an output slot.
D3D11_Stream_Declaration_Entry :: struct {
    stream: u32,
    semantic_name: cstring,
    semantic_index: u32,
    start_component: byte,
    component_count: byte,
    output_slot: byte,
}

D3D11_Rasterizer_Desc :: struct {
    fill_mode: D3D11FillMode,
    cull_mode: D3D11CullMode,
    is_front_counter_clockwise: b32,
    depth_bias: i32,
    depth_bias_clamp: f32,
    slope_scaled_depth_bias: f32,
    depth_clip_enabled: b32,
    scissor_enabled: b32,
    multisample_enabled: b32,
    antialiased_line_enabled: b32,
}

ID3D11_Rasterizer_State_Vtbl :: struct {
    using dev_child_vtbl: ID3D11_Device_Child_Vtbl(ID3D11_Rasterizer_State),
    get_desc: proc "std" (this: ^ID3D11_Rasterizer_State, out_desc: ^D3D11_Rasterizer_Desc),
}

ID3D11_Rasterizer_State :: struct {
    using vtbl: ^ID3D11_Rasterizer_State_Vtbl,
}

D3D11Filter :: enum u32 {
    MIN_MAG_MIP_POINT                               = 0x0,
    MIN_MAG_POINT_MIP_LINEAR                        = 0x1,
    MIN_POINT_MAG_LINEAR_MIP_POINT                  = 0x4,
    MIN_POINT_MAG_MIP_LINEAR                        = 0x5,

    MIN_LINEAR_MAG_MIP_POINT                        = 0x10,
    MIN_LINEAR_MAG_POINT_MIP_LINEAR                 = 0x11,
    MIN_MAG_LINEAR_MIP_POINT                        = 0x14,
    MIN_MAG_MIP_LINEAR                              = 0x15,

    ANISOTROPIC                                     = 0x55,

    COMPARISON_MIN_MAG_MIP_POINT                    = 0x80,
    COMPARISON_MIN_MAG_POINT_MIP_LINEAR             = 0x81,
    COMPARISON_MIN_POINT_MAG_LINEAR_MIP_POINT       = 0x84,
    COMPARISON_MIN_POINT_MAG_MIP_LINEAR             = 0x85,

    COMPARISON_MIN_LINEAR_MAG_MIP_POINT             = 0x90,
    COMPARISON_MIN_LINEAR_MAG_POINT_MIP_LINEAR      = 0x91,
    COMPARISON_MIN_MAG_LINEAR_MIP_POINT             = 0x94,
    COMPARISON_MIN_MAG_MIP_LINEAR                   = 0x95,

    COMPARISON_ANISOTROPIC                          = 0xd5,

    MINIMUM_MIN_MAG_MIP_POINT                       = 0x100,
    MINIMUM_MIN_MAG_POINT_MIP_LINEAR                = 0x101,
    MINIMUM_MIN_POINT_MAG_LINEAR_MIP_POINT          = 0x104,
    MINIMUM_MIN_POINT_MAG_MIP_LINEAR                = 0x105,

    MINIMUM_MIN_LINEAR_MAG_MIP_POINT                = 0x110,
    MINIMUM_MIN_LINEAR_MAG_POINT_MIP_LINEAR         = 0x111,
    MINIMUM_MIN_MAG_LINEAR_MIP_POINT                = 0x114,
    MINIMUM_MIN_MAG_MIP_LINEAR                      = 0x115,

    MINIMUM_ANISOTROPIC                             = 0x155,

    MAXIMUM_MIN_MAG_MIP_POINT                       = 0x180,
    MAXIMUM_MIN_MAG_POINT_MIP_LINEAR                = 0x181,
    MAXIMUM_MIN_POINT_MAG_LINEAR_MIP_POINT          = 0x184,
    MAXIMUM_MIN_POINT_MAG_MIP_LINEAR                = 0x185,

    MAXIMUM_MIN_LINEAR_MAG_MIP_POINT                = 0x190,
    MAXIMUM_MIN_LINEAR_MAG_POINT_MIP_LINEAR         = 0x191,
    MAXIMUM_MIN_MAG_LINEAR_MIP_POINT                = 0x194,
    MAXIMUM_MIN_MAG_MIP_LINEAR                      = 0x195,

    MAXIMUM_ANISOTROPIC                             = 0x1d5,
}

D3D11FilterType :: enum u32 {
    POINT           = 0,
    LINEAR          = 1,
}

D3D11Filter_Reduction_Type :: enum u32 {
    STANDARD        = 0,
    COMPARISON      = 1,
    MINIMUM         = 2,
    MAXIMUM         = 3,
}

D3D11TextureAddressMode :: enum u32 {
    WRAP            = 1,
    MIRROR          = 2,
    CLAMP           = 3,
    BORDER          = 4,
    MIRROR_ONCE     = 5,
}

D3D11_Sampler_Desc :: struct {
    filter: D3D11Filter,
    address_u: D3D11TextureAddressMode, 
    address_v: D3D11TextureAddressMode, 
    address_w: D3D11TextureAddressMode,
    mip_lod_bias: f32,
    max_anisotropy: u32,
    comparison_func: D3D11ComparisonFunc,
    border_color: [4]f32,
    min_lod: f32,
    max_lod: f32,
}

ID3D11_Sampler_State_Vtbl :: struct {
    using dev_child_vtbl: ID3D11_Device_Child_Vtbl(ID3D11_Sampler_State),
    out_desc: proc "std" (this: ^ID3D11_Sampler_State, out_desc: ^D3D11_Sampler_Desc),
}

ID3D11_Sampler_State :: struct {
    using vtbl: ^ID3D11_Sampler_State_Vtbl,
}

D3D11_Format_Support :: enum u32 {
    BUFFER                          = 0x1,
    IA_VERTEX_BUFFER                = 0x2,
    IA_INDEX_BUFFER                 = 0x4,
    STREAM_OUTPUT_BUFFER            = 0x8,
    TEXTURE1D                       = 0x10,
    TEXTURE2D                       = 0x20,
    TEXTURE3D                       = 0x40,
    TEXTURE_CUBE                    = 0x80,
    SHADER_LOAD                     = 0x100,
    SHADER_SAMPLE                   = 0x200,
    SHADER_SAMPLE_COMPARISON        = 0x400,
    SHADER_SAMPLE_MONO_TEXT         = 0x800,
    MIP                             = 0x1000,
    MIP_AUTOGEN                     = 0x2000,
    RENDER_TARGET                   = 0x4000,
    BLENDABLE                       = 0x8000,
    DEPTH_STENCIL                   = 0x10000,
    CPU_LOCKABLE                    = 0x20000,
    MULTISAMPLE_RESOLVE             = 0x40000,
    DISPLAY                         = 0x80000,
    CAST_WITHIN_BIT_LAYOUT          = 0x100000,
    MULTISAMPLE_RENDER_TARGET       = 0x200000,
    MULTISAMPLE_LOAD                = 0x400000,
    SHADER_GATHER                   = 0x800000,
    BACK_BUFFER_CAST                = 0x1000000,
    TYPED_UNORDERED_ACCESS_VIEW     = 0x2000000,
    SHADER_GATHER_COMPARISON        = 0x4000000,
    DECODER_OUTPUT                  = 0x8000000,
    VIDEO_PROCESSOR_OUTPUT          = 0x10000000,
    VIDEO_PROCESSOR_INPUT           = 0x20000000,
    VIDEO_ENCODER                   = 0x40000000,
}

D3D11_Format_Support2 :: enum u32 {
    UNORDERED_ACCESS_VIEW_ATOMIC_ADD                                    = 0x1,
    UNORDERED_ACCESS_VIEW_ATOMIC_BITWISE_OPS                            = 0x2,
    UNORDERED_ACCESS_VIEW_ATOMIC_COMPARE_STORE_OR_COMPARE_EXCHANGE      = 0x4,
    UNORDERED_ACCESS_VIEW_ATOMIC_EXCHANGE                               = 0x8,
    UNORDERED_ACCESS_VIEW_SIGNED_MIN_OR_MAX                             = 0x10,
    UNORDERED_ACCESS_VIEW_UNSIGNED_MIN_OR_MAX                           = 0x20,
    UNORDERED_ACCESS_VIEW_TYPED_LOAD                                    = 0x40,
    UNORDERED_ACCESS_VIEW_TYPED_STORE                                   = 0x80,
    OUTPUT_MERGER_LOGIC_OP                                              = 0x100,
    TILED                                                               = 0x200,
    SHARABLE                                                            = 0x400,
    MULTIPLANE_OVERLAY                                                  = 0x4000,
}

ID3D11_Asynchronous :: struct {
    using vtbl: ^ID3D11_Asynchronous_Vtbl(ID3D11_Asynchronous),
}

ID3D11_Asynchronous_Vtbl :: struct(T: typeid) {
    using dev_child_vtbl: ID3D11_Device_Child_Vtbl(T),
    get_data_size: proc "std" (this: ^T) -> u32,
}

D3D11_Async_Get_Data_Flag :: enum u32 {
    DO_NOT_FLUSH = 0x1,
}

D3D11_Query :: enum u32 {
    EVENT                                       = 0,
    OCCLUSION                                   = EVENT + 1,
    TIMESTAMP                                   = OCCLUSION + 1,
    TIMESTAMP_DISJOINT                          = TIMESTAMP + 1,
    PIPELINE_STATISTICS                         = TIMESTAMP_DISJOINT + 1,
    OCCLUSION_PREDICATE                         = PIPELINE_STATISTICS + 1,
    STREAM_OUTPUT_STATISTICS                    = OCCLUSION_PREDICATE + 1,
    STREAM_OUTPUT_OVERFLOW_PREDICATE            = STREAM_OUTPUT_STATISTICS + 1,
    STREAM_OUTPUT_STATISTICS_STREAM0            = STREAM_OUTPUT_OVERFLOW_PREDICATE,
    STREAM_OUTPUT_OVERFLOW_PREDICATE_STREAM0    = STREAM_OUTPUT_STATISTICS_STREAM0,
    STREAM_OUTPUT_STATISTICS_STREAM1            = STREAM_OUTPUT_OVERFLOW_PREDICATE_STREAM0,
    STREAM_OUTPUT_OVERFLOW_PREDICATE_STREAM1    = STREAM_OUTPUT_STATISTICS_STREAM1,
    STREAM_OUTPUT_STATISTICS_STREAM2            = STREAM_OUTPUT_OVERFLOW_PREDICATE_STREAM1,
    STREAM_OUTPUT_OVERFLOW_PREDICATE_STREAM2    = STREAM_OUTPUT_STATISTICS_STREAM2,
    STREAM_OUTPUT_STATISTICS_STREAM3            = STREAM_OUTPUT_OVERFLOW_PREDICATE_STREAM2,
    STREAM_OUTPUT_OVERFLOW_PREDICATE_STREAM3    = STREAM_OUTPUT_STATISTICS_STREAM3,
}

D3D11_Query_Misc_Flag :: enum u32 {
    PREDICATE_HINT = 0x1,
}

D3D11_Query_Desc :: struct {
    query: D3D11_Query,
    misc_flags: u32,
}

ID3D11_Query_Vtbl :: struct(T: typeid) {
    using async_vtbl: ID3D11_Asynchronous_Vtbl(T),
    get_desc: proc "std" (this: ^T, out_desc: ^D3D11_Query_Desc),
}

ID3D11_Query :: struct {
    using vtbl: ^ID3D11_Query_Vtbl(ID3D11_Query),
}

ID3D11_Predicate_Vtbl :: struct {
    using query_vtbl: ID3D11_Query_Vtbl(ID3D11_Predicate),
}

ID3D11_Predicate :: struct {
    using vtbl: ^ID3D11_Predicate_Vtbl,
}

D3D11_Query_Data_Timestamp_Disjoint :: struct {
    frequency: u64,
    is_disjoint: b32,
}

D3D11_Query_Data_Pipeline_Statistics :: struct {
    ia_vertices: u64,
    ia_primitives: u64,
    vs_invocations: u64,
    gs_invocations: u64,
    gs_primitives: u64,
    c_invocations: u64,
    c_primitives: u64,
    ps_invocations: u64,
    hs_invocations: u64,
    ds_invocations: u64,
    cs_invocations: u64,
}

D3D11_Query_Data_Stream_Output_Statistics :: struct {
    num_primitives_written: u64,
    size_primitive_storage_needed: u64,
}

D3D11_Counter :: enum u32 {
    DEVICE_DEPENDENT0 = 0x40000000,
}

D3D11_Counter_Type :: enum u32 {
    FLOAT32         = 0,
    UINT16          = FLOAT32 + 1,
    UINT32          = UINT16 + 1,
    UINT64          = UINT32 + 1,
}

D3D11_Counter_Desc :: struct {
    counter: D3D11_Counter,
    misc_flags: u32,
}

D3D11_Counter_Info :: struct {
    last_device_dependent_counter: D3D11_Counter,
    num_simultaneous_counters: u32,
    num_detectable_parallel_units: u8,
}

ID3D11_Counter_Vtbl :: struct {
    using async_vtbl: ID3D11_Asynchronous_Vtbl(ID3D11_Counter),
    get_desc: proc "std" (this:^ ID3D11_Counter, out_desc: ^D3D11_Counter_Desc),
}

ID3D11_Counter :: struct {
    using vtbl: ^ID3D11_Counter_Vtbl,
}

D3D11_Feature :: enum u32 {
    THREADING                       = 0,
    DOUBLES                         = THREADING + 1,
    FORMAT_SUPPORT                  = DOUBLES + 1,
    FORMAT_SUPPORT2                 = FORMAT_SUPPORT + 1,
    D3D10_X_HARDWARE_OPTIONS        = FORMAT_SUPPORT2 + 1,
    D3D11_OPTIONS                   = D3D10_X_HARDWARE_OPTIONS + 1,
    ARCHITECTURE_INFO               = D3D11_OPTIONS + 1,
    D3D9_OPTIONS                    = ARCHITECTURE_INFO + 1,
    SHADER_MIN_PRECISION_SUPPORT    = D3D9_OPTIONS + 1,
    D3D9_SHADOW_SUPPORT             = SHADER_MIN_PRECISION_SUPPORT + 1,
    D3D11_OPTIONS1                  = D3D9_SHADOW_SUPPORT + 1,
    D3D9_SIMPLE_INSTANCING_SUPPORT  = D3D11_OPTIONS1 + 1,
    MARKER_SUPPORT                  = D3D9_SIMPLE_INSTANCING_SUPPORT + 1,
    D3D9_OPTIONS1                   = MARKER_SUPPORT + 1,
    D3D11_OPTIONS2                  = D3D9_OPTIONS1 + 1,
    D3D11_OPTIONS3                  = D3D11_OPTIONS2 + 1,
    GPU_VIRTUAL_ADDRESS_SUPPORT     = D3D11_OPTIONS3 + 1,
    D3D11_OPTIONS4                  = GPU_VIRTUAL_ADDRESS_SUPPORT + 1,
    SHADER_CACHE                    = D3D11_OPTIONS4 + 1,
    D3D11_OPTIONS5                  = SHADER_CACHE + 1,
}

D3D11_Feature_Data_Threading :: struct {
    driver_concurrent_creates: b32,
    driver_command_lists: b32,
}

D3D11_Feature_Data_Doubles :: struct {
    double_precision_float_shader_ops: b32,
}

D3D11_Feature_Data_Format_Support :: struct {
    format: DXGIFormat,
    out_format_supported: u32,
}

D3D11_Feature_Data_Format_Support2 :: struct {
    format: DXGIFormat,
    out_format_supported: u32,
}

// =============================================================================
// In the D3D11_FEATURE_DATA_D3D11_OPTIONS struct below, 
// the following groupings of capabilities will always be set identically. 
// That is, all the BOOLs in a grouping will be TRUE or FALSE together. 
//  
// Group: DiscardAPIsSeenByDriver, FlagsForUpdateAndCopySeenByDriver 
//  
// Group: ClearView, CopyWithOverlap, ConstantBufferPartialUpdate 
//        ConstantBufferOffsetting, MapNoOverwriteOnDynamicConstantBuffer 
//  
// Group: MapNoOverwriteOnDynamicBufferSRV, 
//        MultisampleRTVWithForcedSampleCountOne 
//  
D3D11_Feature_Data_D3D10_X_Hardware_Options :: struct {
    output_merger_logic_op: b32,
    uav_only_rendering_forced_sample_count: b32,
    discard_apis_seen_by_driver: b32,
    flags_for_update_and_copy_seen_by_driver: b32,
    clear_view: b32,
    copy_with_overlap: b32,
    constant_buffer_partial_update: b32,
    constant_buffer_offsetting: b32,
    map_no_overwrite_on_dynamic_constant_buffer: b32,
    map_no_overwrite_on_dynamic_buffer_srv: b32,
    multisample_rtv_with_forced_sample_count_one: b32,
    sad4_shader_instructions: b32,
    extended_double_shader_instructions: b32,
    extended_resource_sharing: b32,
}

D3D11_Feature_Data_Architecture_Info :: struct {
    tile_based_deferred_rendering: b32,
}

D3D11_Feature_Data_D3D9_Options :: struct {
    full_non_pow2_texture_support: b32,
}

D3D11_Feature_Data_D3D9_Shadow_Support :: struct {
    support_depth_as_texture_with_less_equal_comparison_filter: b32,
}

D3D11_Shader_Min_Precision_Support :: enum u32 {
    TEN_BIT = 0x1,
    SIXTEEN_BIT = 0x2,
}

D3D11_Feature_Data_Shader_Min_Precision_Support :: struct {
    pixel_shader_min_precision: u32,
    all_other_shader_stages_min_precision: u32,
}

D3D11_Tiled_Resources_Tier :: enum u32 {
    NOT_SUPPORTED       = 0,
    TIER_ONE            = 1,
    TIER_TWO            = 2,
    TIER_THREE          = 3,
}

D3D11_Feature_Data_D3D11_Options1 :: struct {
    tiled_resources_tier: D3D11_Tiled_Resources_Tier,
    min_max_filtering: b32,
    clear_view_also_supports_depth_only_formats: b32,
    map_on_default_buffers: b32,
}

D3D11_Feature_Data_D3D9_Simple_Instancing_Support :: struct {
    simple_instancing_support: b32,
}

D3D11_Feature_Data_Marker_Support :: struct {
    profile: b32,
}

D3D11_Feature_Data_D3D9_Options1 :: struct {
    full_non_pow2_texture_supported: b32,
    support_depth_as_texture_with_less_equal_comparison_filter_supported: b32,
    simple_instancing_supported: b32,
    texture_cube_face_render_target_with_non_cube_depth_stencil_supported: b32,
}

D3D11_Conservative_Rasterization_Tier :: enum u32 {
    NOT_SUPPORTED       = 0,
    TIER_ONE            = 1,
    TIER_TWO            = 2,
    TIER_THREE          = 3,
}

D3D11_Feature_Data_D3D11_Options2 :: struct {
    ps_specified_stencil_ref_supported: b32,
    typed_uav_load_additional_formats: b32,
    rovs_supported: b32,
    conservative_rasterization_tier: D3D11_Conservative_Rasterization_Tier,
    tiled_resources_tier: D3D11_Tiled_Resources_Tier,
    map_on_default_textures: b32,
    standard_swizzle: b32,
    unified_memory_architecture: b32,
}

D3D11_Feature_Data_D3D11_Options3 :: struct {
    vp_and_rt_array_index_from_any_shader_feeding_rasterizer: b32,
}

D3D11_Feature_Data_GPU_Virtual_Address_Support :: struct {
    max_gpu_virtual_address_bits_per_resouce: u32,
    max_gpu_virtual_address_bits_per_process: u32,
}

D3D11_Shader_Cache_Support_Flags :: enum u32 {
    NONE                        = 0x0,
    AUTOMATIC_INPROC_CACHE      = 0x1,
    AUTOMATIC_DISK_CACHE        = 0x2,
}

D3D11_Feature_Data_Shader_Cache :: struct {
    support_flags: u32,
}

D3D11_Shared_Resouce_Tier :: enum u32 {
    TIER_ZERO       = 0,
    TIER_ONE        = TIER_ZERO + 1,
    TIER_TWO        = TIER_ONE + 1,
    TIER_THREE      = TIER_TWO + 1,
}

D3D11_Feature_Data_D3D11_Options5 :: struct {
    shared_resource_tier: D3D11_Shared_Resouce_Tier,
}

ID3D11_Command_List_Vtbl :: struct {
    using dev_child_vtbl: ID3D11_Device_Child_Vtbl(ID3D11_Command_List),
    get_context_flags: proc "std" (this: ^ID3D11_Command_List) -> u32,
}

ID3D11_Command_List :: struct {
    using vtbl: ^ID3D11_Command_List_Vtbl,
}

ID3D11_Render_Target_View_Vtbl :: struct {
    using view_vtbl: ^ID3D11_View_Vtbl(ID3D11_Render_Target_View),
    get_desc: proc "std" (this: ^ID3D11_Render_Target_View, out_desc: ^D3D11_Render_Target_View_Desc),
}

ID3D11_Render_Target_View :: struct {
    using vtbl: ^ID3D11_Render_Target_View_Vtbl,
}

D3D11StandardMultiSampleQualityLevels :: enum u32 {
    STANDARD_MULTISAMPLE_PATTERN    = 0xFFFFFFFF,
    CENTER_MULTISAMPLE_PATTERN      = 0xFFFFFFFE,
}

ID3D11_Device_Vtbl :: struct {
    using base: win32.I_Unknown_Vtbl(ID3D11_Device),
    create_buffer: proc "std" (this: ^ID3D11_Device, desc: ^D3D11_Buffer_Desc, init_data: ^D3D11_Sub_Resource_Data,
        out_buffer: ^^ID3D11_Buffer) -> win32.Hresult,
    create_texture_1d: proc "std" (this: ^ID3D11_Device, desc: ^D3D11_Texture1D_Desc, init_data: ^D3D11_Sub_Resource_Data, 
        out_texture: ^^ID3D11_Texture1D) -> win32.Hresult,
    create_texture_2d: proc "std" (this: ^ID3D11_Device, desc: ^D3D11_Texture2D_Desc, init_data: ^D3D11_Sub_Resource_Data,
        out_texture: ^^ID3D11_Texture2D) -> win32.Hresult,
    create_texture_3d: proc "std" (this: ^ID3D11_Device, desc: ^D3D11_Texture3D_Desc, init_data: ^D3D11_Sub_Resource_Data,
        out_texture: ^^ID3D11_Texture3D) -> win32.Hresult,
    create_shader_resource_view: proc "std" (this: ^ID3D11_Device, resource: ^ID3D11_Resource,
        desc: ^D3D11_Shader_Resource_View_Desc, out_srv: ^^ID3D11_Shader_Resource_View) -> win32.Hresult,
    create_unordered_access_view: proc "std" (this: ^ID3D11_Device, resource: ^ID3D11_Resource,
        desc: ^D3D11_Unordered_Access_View_Desc, out_uav: ^^ID3D11_Unordered_Access_View) -> win32.Hresult,
    create_render_target_view: proc "std" (this: ^ID3D11_Device, resource: ^ID3D11_Resource,
        desc: ^D3D11_Render_Target_View_Desc, out_rtv: ^^ID3D11_Render_Target_View) -> win32.Hresult,
    create_depth_stencil_view: proc "std" (this: ^ID3D11_Device, resource: ^ID3D11_Resource,
        desc: ^D3D11_Depth_Stencil_View_Desc, out_dsv: ^^ID3D11_Depth_Stencil_View) -> win32.Hresult,
    create_input_layout: proc "std" (this: ^ID3D11_Device, desc: ^D3D11_Input_Element_Desc, num_elements: u32,
        shader_bytecode: rawptr, bytecode_len: uint, out_il: ^^ID3D11_Input_Layout) -> win32.Hresult,
    create_vertex_shader: proc "std" (this: ^ID3D11_Device, shader_bytecode: rawptr, bytecode_len: uint, opt_linkage: ^ID3D11_Class_Linkage,
        out_vertex_shader: ^^ID3D11_Vertex_Shader) -> win32.Hresult,
    create_geometry_shader: proc "std" (this: ^ID3D11_Device, shader_bytecode: rawptr, bytecode_len: uint, opt_linkage: ^ID3D11_Class_Linkage,
        out_geometry_shader: ^^ID3D11_Geometry_Shader) -> win32.Hresult,
    create_geometry_shader_with_stream_output: proc "std" (this: ^ID3D11_Device, shader_bytecode: rawptr,
        bytecode_len: uint, stream_decls: ^D3D11_Stream_Declaration_Entry, num_entries: u32,
        buffer_strides: ^u32, num_strides: u32, rasterized_stream: u32, opt_linkage: ^ID3D11_Class_Linkage,
        out_geometry_shader: ^^ID3D11_Geometry_Shader) -> win32.Hresult,
    create_pixel_shader: proc "std" (this: ^ID3D11_Device, shader_bytecode: rawptr, bytecode_len: uint,
        opt_linkage: ^ID3D11_Class_Linkage, out_pixel_shader: ^^ID3D11_Pixel_Shader) -> win32.Hresult,
    create_hull_shader: proc "std" (this: ^ID3D11_Device, shader_bytecode: rawptr, bytecode_len: uint,
        opt_linkage: ^ID3D11_Class_Linkage, out_hull_shader: ^^ID3D11_Hull_Shader) -> win32.Hresult,
    create_domain_shader: proc "std" (this: ^ID3D11_Device, shader_bytecode: rawptr, bytecode_len: uint,
        opt_linkage: ^ID3D11_Class_Linkage, out_domain_shader: ^^ID3D11_Domain_Shader) -> win32.Hresult,
    create_compute_shader: proc "std" (this: ^ID3D11_Device, shader_bytecode: rawptr, bytecode_len: uint,
        opt_linkage: ^ID3D11_Class_Linkage, out_compute_shader: ^^ID3D11_Compute_Shader) -> win32.Hresult,
    create_class_linkage: proc "std" (this: ^ID3D11_Device, out_class_linkage: ^^ID3D11_Class_Linkage) -> win32.Hresult,
    create_blend_state: proc "std" (this: ^ID3D11_Device, desc: ^D3D11_Blend_Desc, 
        out_blend_state: ^^ID3D11_Blend_State) -> win32.Hresult,
    create_depth_stencil_state: proc "std" (this: ^ID3D11_Device, desc: ^D3D11_Depth_Stencil_Desc,
        out_depth_stencil_state: ^^ID3D11_Depth_Stencil_State) -> win32.Hresult,
    create_rasterizer_state: proc "std" (this: ^ID3D11_Device, desc: ^D3D11_Rasterizer_Desc,
        out_rasterizer_state: ^^ID3D11_Rasterizer_State) -> win32.Hresult,
    create_sampler_state: proc "std" (this: ^ID3D11_Device, desc: ^D3D11_Sampler_Desc, 
        out_sampler_state: ^^ID3D11_Sampler_State) -> win32.Hresult,
    create_query: proc "std" (this: ^ID3D11_Device, desc: ^D3D11_Query_Desc, out_query: ^^ID3D11_Query) -> win32.Hresult,
    create_predicate: proc "std" (this: ^ID3D11_Device, desc: ^D3D11_Query_Desc, out_pred: ^^ID3D11_Predicate) -> win32.Hresult,
    create_counter: proc "std" (this: ^ID3D11_Device, desc: ^D3D11_Counter_Desc, out_counter: ^^ID3D11_Counter) -> win32.Hresult,
    create_deferred_context: proc "std" (this: ^ID3D11_Device, context_flags: u32 /* must be zero */, out_ctx: ^^ID3D11_Device_Context) -> win32.Hresult,
    open_shared_resource: proc "std" (this: ^ID3D11_Device, handle: win32.Handle, iid: ^win32.Iid, out_res: rawptr) -> win32.Hresult,
    check_format_support: proc "std" (this: ^ID3D11_Device, format: DXGIFormat, out_supported: ^u32) -> win32.Hresult,
    check_multisample_quality_levels: proc "std" (this: ^ID3D11_Device, format: DXGIFormat, sample_count: u32, out_quality_levels: ^u32) -> win32.Hresult,
    check_counter_info: proc "std" (this: ^ID3D11_Device, out_counter_info: ^D3D11_Counter_Info) -> win32.Hresult,
    check_counter: proc "std" (this: ^ID3D11_Device, desc: ^D3D11_Counter_Desc, out_counter_type: ^D3D11_Counter_Type, 
        out_active_counters: ^u32, out_name: ^cstring, out_name_length: ^u32, out_units_name: ^cstring, out_units_length: ^u32,
        out_description_name: ^cstring, out_description_length: ^u32) -> win32.Hresult,
    check_feature_support: proc "std" (this: ^ID3D11_Device, feature: D3D11_Feature, out_feature_data: rawptr, buf_size: u32) -> win32.Hresult,
    get_private_data: proc "std" (this: ^ID3D11_Device, name: ^win32.Guid, size: ^u32, buffer: rawptr) -> win32.Hresult,
    set_private_data: proc "std" (this: ^ID3D11_Device, name: ^win32.Guid, size: u32, data: rawptr) -> win32.Hresult,
    set_private_data_interface: proc "std" (this: ^ID3D11_Device, name: ^win32.Guid, interface: ^win32.I_Unknown) -> win32.Hresult,
    get_feature_level: proc "std" (this: ^ID3D11_Device) -> D3DFeatureLevel,
    get_creation_flags: proc "std" (this: ^ID3D11_Device) -> D3D11CreateDeviceFlag,
    get_device_removed_reason: proc "std" (this: ^ID3D11_Device) -> win32.Hresult,
    get_immediate_context: proc "std" (this: ^ID3D11_Device, out_dev_ctx: ^^ID3D11_Device_Context),
    set_exception_mode: proc "std" (this: ^ID3D11_Device, raise_flags: u32) -> win32.Hresult,
    get_exception_mode: proc "std" (this: ^ID3D11_Device) -> u32,
}

ID3D11_Device :: struct {
    using vtbl: ^ID3D11_Device_Vtbl,
}


D3D11DeviceContextType :: enum u32 {
    IMMEDIATE = 0,
    DEFERRED = IMMEDIATE + 1,
}

ID3D11_Device_Context_Vtbl :: struct {
    using dev_child_vtbl: ID3D11_Device_Child_Vtbl(ID3D11_Device_Context),
    vs_set_constant_buffers: proc "std" (this: ^ID3D11_Device_Context, start_slot: u32, num_buffers: u32, buffers: ^^ID3D11_Buffer),
    ps_set_shader_resources: proc "std" (this: ^ID3D11_Device_Context, start_slot: u32, num_views: u32, srvs: ^^ID3D11_Shader_Resource_View),
    ps_set_shader: proc "std" (this: ^ID3D11_Device_Context, opt_pixel_shader: ^ID3D11_Pixel_Shader, 
        opt_class_instances: ^^ID3D11_Class_Instance, num_class_instances: u32),
    ps_set_samplers: proc "std" (this: ^ID3D11_Device_Context, start_slot: u32, num_samplers: u32, opt_samplers: ^^ID3D11_Sampler_State),
    vs_set_shader: proc "std" (this: ^ID3D11_Device_Context, opt_vertex_shader: ^ID3D11_Vertex_Shader,
        opt_class_instances: ^^ID3D11_Class_Instance, num_class_instances: u32),
    draw_indexed: proc "std" (this: ^ID3D11_Device_Context, vertex_count: u32, start_vertex_location: u32, base_vertex_location: i32),
    draw: proc "std" (this: ^ID3D11_Device_Context, vertex_count: u32, start_vertex_location: u32),
    map_resource: proc "std" (this: ^ID3D11_Device_Context, resource: ^ID3D11_Resource, sub_resource_idx: u32,
        map_type: D3D11Map, map_flags: u32, out_mapped_resouce: ^D3D11_Mapped_Sub_Resource) -> win32.Hresult,
    unmap_resource: proc "std" (this: ^ID3D11_Device_Context, mapped_resource: ^ID3D11_Resource, sub_resource_idx: u32),
    ps_set_constant_buffers: proc "std" (this: ^ID3D11_Device_Context, start_slot: u32, num_buffers: u32, opt_constant_buffers: ^^ID3D11_Buffer),
    ia_set_input_layout: proc "std" (this: ^ID3D11_Device_Context, opt_input_layout: ^ID3D11_Input_Layout),
    ia_set_vertex_buffers: proc "std" (this: ^ID3D11_Device_Context, start_slot: u32, num_buffers: u32, opt_vertex_buffers: ^^ID3D11_Buffer,
        opt_strides: ^u32, opt_offsets: ^u32),
    ia_set_index_buffer: proc "std" (this: ^ID3D11_Device_Context, opt_index_buffer: ^ID3D11_Buffer, format: DXGIFormat, offset: u32),
    draw_indexed_instanced: proc "std" (this: ^ID3D11_Device_Context, index_count_per_instance: u32, instance_count: u32,
        start_index_location: u32, base_vertex_location: u32, start_instance_location: u32),
    draw_instanced: proc "std" (this: ^ID3D11_Device_Context, vertex_count_per_instance: u32, instance_count: u32, 
        start_vertex_location: u32, start_instance_location: u32),
    gs_set_constant_buffers: proc "std" (this: ^ID3D11_Device_Context, start_slot: u32, num_buffers: u32, opt_constant_buffers: ^^ID3D11_Buffer),
    gs_set_shader: proc "std" (this: ^ID3D11_Device_Context, geometry_shader: ^ID3D11_Geometry_Shader, opt_class_instances: ^^ID3D11_Class_Instance,
        num_class_instances: u32 ),
    ia_set_primitive_topology: proc "std" (this: ^ID3D11_Device_Context, topology: D3D11PrimitiveTopology),
    vs_set_shader_resources: proc "std" (this: ^ID3D11_Device_Context, start_slot: u32, num_views: u32, opt_srvs: ^^ID3D11_Shader_Resource_View),
    vs_set_samplers: proc "std" (this: ^ID3D11_Device_Context, start_slot: u32, num_samplers: u32, opt_samplers: ^^ID3D11_Sampler_State),
    begin: proc "std" (this: ^ID3D11_Device_Context, async: ^ID3D11_Asynchronous),
    end: proc "std" (this: ^ID3D11_Device_Context, async: ^ID3D11_Asynchronous),
    get_data: proc "std" (this: ^ID3D11_Device_Context, async: ^ID3D11_Asynchronous, out_data: rawptr, data_size: u32, flags: u32),
    set_prediction: proc "std" (this: ^ID3D11_Device_Context, opt_predicate: ^ID3D11_Predicate, predicate_value: u32),
    gs_set_shader_resources: proc "std" (this: ^ID3D11_Device_Context, start_slot: u32, num_views: u32, opt_srvs: ^^ID3D11_Shader_Resource_View),
    gs_set_samplers: proc "std" (this: ^ID3D11_Device_Context, start_slot: u32, num_samplers: u32, opt_samplers: ^^ID3D11_Sampler_State),
    om_set_render_targets: proc "std" (this: ^ID3D11_Device_Context, num_views: u32, opt_rtvs: ^^ID3D11_Render_Target_View, opt_ds: ^ID3D11_Depth_Stencil_View),
    om_set_render_target_and_unordered_access_views: proc "std" (this: ^ID3D11_Device_Context, num_rtvs: u32, opt_rtvs: ^^ID3D11_Render_Target_View,
        opt_dsv: ^ID3D11_Depth_Stencil_View, uav_start_slot: u32, num_uavs: u32, opt_uavs: ^^ID3D11_Unordered_Access_View, opt_num_uavs: ^u32),
    om_set_blend_state: proc "std" (this: ^ID3D11_Device_Context, opt_blend_state: ^ID3D11_Blend_State, opt_blend_factor: ^f32, sample_mask: u32),
    om_set_depth_stencil_state: proc "std" (this: ^ID3D11_Device_Context, opt_dss: ^ID3D11_Depth_Stencil_State, stencil_idx: u32),
    so_set_targets: proc "std" (this: ^ID3D11_Device_Context, num_buffers: u32, opt_targets: ^^ID3D11_Buffer, opt_offsets: ^u32),
    draw_auto: proc "std" (this: ^ID3D11_Device_Context),
    draw_indexed_instanced_indirect: proc "std" (this: ^ID3D11_Device_Context, buffer_for_args: ^ID3D11_Buffer, aligned_byte_offset: u32),
    draw_instanced_indirect: proc "std" (this: ^ID3D11_Device_Context, buffer_for_args: ^ID3D11_Buffer, aligned_byte_offset: u32),
    dispatch: proc "std" (this: ^ID3D11_Device_Context, count_x, count_y, count_z: u32),
    dispatch_indirect: proc "std" (this: ^ID3D11_Device_Context, buffer_for_args: ^ID3D11_Buffer, aligned_byte_offset: u32),
    rs_set_state: proc "std" (this: ^ID3D11_Device_Context, opt_raster_state: ^ID3D11_Rasterizer_State),
    rs_set_viewports: proc "std" (this: ^ID3D11_Device_Context, num_viewports: u32, opt_viewports: ^D3D11_Viewport),
    rs_set_scissor_rects: proc "std" (this: ^ID3D11_Device_Context, num_rects: u32, opt_rects: ^D3D11_Rect),
    copy_sub_resource_region: proc "std" (this: ^ID3D11_Device_Context, dest_resource: ^ID3D11_Resource, dest_sub_res_idx: u32,
        dest_x, dest_y, dest_z: u32, src_resource: ^ID3D11_Resource, src_sub_resource_idx: u32, opt_box: ^D3D11_Box),
    copy_resource: proc "std" (this: ^ID3D11_Device_Context, dest_resource, src_resource: ^ID3D11_Resource),
    update_sub_resource: proc "std" (this: ^ID3D11_Device_Context, dest_resource: ^ID3D11_Resource, dest_sub_res_idx: u32, opt_dest_box: ^D3D11_Box,
        src_data: rawptr, src_row_pitch: u32, src_depth_pitch: u32),
    copy_structure_count: proc "std" (this: ^ID3D11_Device_Context, dest_buffer: ^ID3D11_Buffer, aligned_byte_offset: u32,
        src_view: ^ID3D11_Unordered_Access_View),
    clear_render_target_view: proc "std" (this: ^ID3D11_Device_Context, rtv: ^ID3D11_Render_Target_View, clear_color: ^f32),
    clear_unordered_access_view_uint: proc "std" (this: ^ID3D11_Device_Context, uav: ^ID3D11_Unordered_Access_View, values: [4]u32),
    clear_unordered_access_view_float: proc "std" (this: ^ID3D11_Device_Context, uav: ^ID3D11_Unordered_Access_View, values: [4]f32),
    clear_depth_stencil_view: proc "std" (this: ^ID3D11_Device_Context, dsv: ^ID3D11_Depth_Stencil_View, clear_flags: bit_set[D3D11ClearFlag; u32], depth: f32, stencil: u8),
    generate_mips: proc "std" (this: ^ID3D11_Device_Context, srv: ^ID3D11_Shader_Resource_View),
    set_resource_min_lod: proc "std" (this: ^ID3D11_Device_Context, res: ^ID3D11_Resource, min_lod: f32),
    get_resource_min_lod: proc "std" (this: ^ID3D11_Device_Context, res: ^ID3D11_Resource),
    resolve_sub_resource: proc "std" (this: ^ID3D11_Device_Context, dest_resource: ^ID3D11_Resource, dest_sub_res_idx: u32,
        src_resource: ^ID3D11_Resource, src_sub_resource_idx: u32, format: DXGIFormat),
    exec_command_list: proc "std" (this: ^ID3D11_Device_Context, command_list: ID3D11_Command_List, restore_context_state: b32),
    hs_set_shader_resources: proc "std" (this: ^ID3D11_Device_Context, start_slot: u32, num_views: u32, opt_srvs: ^^ID3D11_Shader_Resource_View),
    hs_set_shader: proc "std" (this: ^ID3D11_Device_Context, opt_hull_shader: ^ID3D11_Hull_Shader, 
        opt_class_instances: ^^ID3D11_Class_Instance, num_class_instances: u32),
    hs_set_samplers: proc "std" (this: ^ID3D11_Device_Context, start_slot: u32, num_samplers: u32, opt_samplers: ^^ID3D11_Sampler_State),
    hs_set_constant_buffers: proc "std" (this: ^ID3D11_Device_Context, start_slot: u32, num_buffers: u32, opt_constant_buffers: ^^ID3D11_Buffer),
    ds_set_shader_resources: proc "std" (this: ^ID3D11_Device_Context, start_slot: u32, num_views: u32, opt_srvs: ^^ID3D11_Shader_Resource_View),
    ds_set_shader: proc "std" (this: ^ID3D11_Device_Context, opt_domain_shader: ^ID3D11_Domain_Shader, 
        opt_class_instances: ^^ID3D11_Class_Instance, num_class_instances: u32),
    ds_set_samplers: proc "std" (this: ^ID3D11_Device_Context, start_slot: u32, num_samplers: u32, opt_samplers: ^^ID3D11_Sampler_State),
    ds_set_constant_buffers: proc "std" (this: ^ID3D11_Device_Context, start_slot: u32, num_buffers: u32, opt_constant_buffers: ^^ID3D11_Buffer),
    cs_set_shader_resources: proc "std" (this: ^ID3D11_Device_Context, start_slot: u32, num_views: u32, opt_srvs: ^^ID3D11_Shader_Resource_View),
    cs_set_shader: proc "std" (this: ^ID3D11_Device_Context, opt_compute_shader: ^ID3D11_Compute_Shader, 
        opt_class_instances: ^^ID3D11_Class_Instance, num_class_instances: u32),
    cs_set_unordered_access_view: proc "std" (this: ^ID3D11_Device_Context, start_slot: u32, num_uavs: u32, opt_uavs: ^^ID3D11_Unordered_Access_View,
        uav_initial_counts: ^u32),
    cs_set_samplers: proc "std" (this: ^ID3D11_Device_Context, start_slot: u32, num_samplers: u32, opt_samplers: ^^ID3D11_Sampler_State),
    cs_set_constant_buffers: proc "std" (this: ^ID3D11_Device_Context, start_slot: u32, num_buffers: u32, opt_constant_buffers: ^^ID3D11_Buffer),
    vs_get_constant_buffers: proc "std" (this: ^ID3D11_Device_Context, start_slot: u32, num_buffers: u32, out_constant_buffers: ^^ID3D11_Buffer),
    ps_get_shader_resources: proc "std" (start_slot: u32, num_views: u32, out_srvs: ^^ID3D11_Shader_Resource_View),
    ps_get_shader: proc "std" (this: ^ID3D11_Device_Context, out_pixel_shader: ^^ID3D11_Pixel_Shader, 
        out_opt_class_instances: ^^ID3D11_Class_Instance, out_num_class_instances: ^u32),
    ps_get_samplers: proc "std" (this: ^ID3D11_Device_Context, start_slot: u32, num_samplers: u32, out_samplers: ^^ID3D11_Sampler_State),
    vs_get_shader: proc "std" (this: ^ID3D11_Device_Context, out_vertex_shader: ^^ID3D11_Vertex_Shader, 
        out_opt_class_instances: ^^ID3D11_Class_Instance, out_num_class_instances: ^u32),
    ps_get_constant_buffers: proc "std" (this: ^ID3D11_Device_Context, start_slot: u32, num_buffers: u32, out_constant_buffers: ^^ID3D11_Buffer),
    ia_get_input_layout: proc "std" (this: ^ID3D11_Device_Context, out_input_layout: ^^ID3D11_Input_Layout),
    ia_get_vertex_buffers: proc "std" (this: ^ID3D11_Device_Context, start_slot: u32, num_buffers: u32, out_buffers: ^^ID3D11_Buffer, out_strides: ^u32, out_offsets: ^u32),
    ia_get_index_buffer: proc "std" (this: ^ID3D11_Device_Context, out_opt_format: DXGIFormat, out_opt_offset: ^u32),
    gs_get_constant_buffers: proc "std" (this: ^ID3D11_Device_Context, start_slot: u32, num_buffers: u32, out_buffers: ^^ID3D11_Buffer),
    gs_get_shader: proc "std" (this: ^ID3D11_Device_Context, out_geometry_shader: ^^ID3D11_Geometry_Shader, 
        out_opt_class_instances: ^^ID3D11_Class_Instance, out_num_class_instances: ^u32),
    ia_get_primitive_topology: proc "std" (this: ^ID3D11_Device_Context, out_top: ^D3D11PrimitiveTopology),
    vs_get_shader_resources: proc "std" (this: ^ID3D11_Device_Context, start_slot: u32, num_views: u32, out_srvs: ^^ID3D11_Shader_Resource_View),
    vs_get_samplers: proc "std" (this: ^ID3D11_Device_Context, start_slot: u32, num_samplers: u32, out_samplers: ^^ID3D11_Sampler_State),
    get_predication: proc "std" (this: ^ID3D11_Device_Context, out_pred: ^^ID3D11_Predicate, out_value: ^b32),
    gs_get_shader_resources: proc "std" (this: ^ID3D11_Device_Context, start_slot: u32, num_views: u32, out_srvs: ^^ID3D11_Shader_Resource_View),
    gs_get_samplers: proc "std" (this: ^ID3D11_Device_Context, start_slot: u32, num_samplers: u32, out_samplers: ^^ID3D11_Sampler_State),
    om_get_render_targets: proc "std" (this: ^ID3D11_Device_Context, num_views: u32, out_rtvs: ^^ID3D11_Render_Target_View, out_dsv: ^^ID3D11_Depth_Stencil_View),
    om_get_render_targets_and_unordered_access_views: proc "std" (this: ^ID3D11_Device_Context, num_rtvs: u32, out_rtvs: ^^ID3D11_Render_Target_View,
        out_dsv: ^^ID3D11_Depth_Stencil_View, uav_start_slot: u32, num_uavs: u32, out_uavs: ^^ID3D11_Unordered_Access_View),
    om_get_blend_state: proc "std" (this: ^ID3D11_Device_Context, out_blend_state: ^^ID3D11_Blend_State, out_blend_factor: ^^[4]f32, out_sample_mask: ^u32),
    om_get_depth_stencil_state: proc "std" (this: ^ID3D11_Device_Context, out_dsv: ^^ID3D11_Depth_Stencil_State, out_stencil_ref: ^u32),
    so_get_targets: proc "std" (this: ^ID3D11_Device_Context, num_buffers: u32, out_buffers: ^^ID3D11_Buffer),
    rs_get_state: proc "std" (this: ^ID3D11_Device_Context, out_rasterizer_state: ^^ID3D11_Rasterizer_State),
    rs_get_viewports: proc "std" (this: ^ID3D11_Device_Context, in_out_num_viewports: ^u32, out_viewports: ^D3D11_Viewport),
    rs_get_scissor_rects: proc "std" (this: ^ID3D11_Device_Context, in_out_num_rects: ^u32, out_rects: ^D3D11_Rect),
    hs_get_shader_resources: proc "std" (this: ^ID3D11_Device_Context, start_slot: u32, num_views: u32, out_srvs: ^^ID3D11_Shader_Resource_View),
    hs_get_shader: proc "std" (this: ^ID3D11_Device_Context, out_hull_shader: ^^ID3D11_Hull_Shader, out_opt_class_instances: ^^ID3D11_Class_Instance,
        in_out_num_class_instances: ^u32),
    hs_get_samplers: proc "std" (this: ^ID3D11_Device_Context, start_slot: u32, num_samplers: u32, out_samplers: ^^ID3D11_Sampler_State),
    hs_get_constant_buffers: proc "std" (this: ^ID3D11_Device_Context, start_slot: u32, num_buffers: u32, out_constant_buffers: ^^ID3D11_Buffer),
    ds_get_shader_resources: proc "std" (this: ^ID3D11_Device_Context, start_slot: u32, num_views: u32, out_srvs: ^^ID3D11_Shader_Resource_View),
    ds_get_shader: proc "std" (this: ^ID3D11_Device_Context, out_hull_shader: ^^ID3D11_Domain_Shader, out_opt_class_instances: ^^ID3D11_Class_Instance,
        in_out_num_class_instances: ^u32),
    ds_get_samplers: proc "std" (this: ^ID3D11_Device_Context, start_slot: u32, num_samplers: u32, out_samplers: ^^ID3D11_Sampler_State),
    ds_get_constant_buffers: proc "std" (this: ^ID3D11_Device_Context, start_slot: u32, num_buffers: u32, out_constant_buffers: ^^ID3D11_Buffer),
    cs_get_shader_resources: proc "std" (this: ^ID3D11_Device_Context, start_slot: u32, num_views: u32, out_srvs: ^^ID3D11_Shader_Resource_View),
    cs_get_unordered_access_views: proc "std" (this: ^ID3D11_Device_Context, start_slot: u32, num_uavs: u32, out_uavs: ^^ID3D11_Unordered_Access_View),
    cs_get_shader: proc "std" (this: ^ID3D11_Device_Context, out_hull_shader: ^^ID3D11_Compute_Shader, out_opt_class_instances: ^^ID3D11_Class_Instance,
        in_out_num_class_instances: ^u32),
    cs_get_samplers: proc "std" (this: ^ID3D11_Device_Context, start_slot: u32, num_samplers: u32, out_samplers: ^^ID3D11_Sampler_State),
    cs_get_constant_buffers: proc "std" (this: ^ID3D11_Device_Context, start_slot: u32, num_buffers: u32, out_constant_buffers: ^^ID3D11_Buffer),
    clear_state: proc "std" (this: ^ID3D11_Device_Context),
    flush: proc "std" (this: ^ID3D11_Device_Context),
    get_type: proc "std" (this: ^ID3D11_Device_Context) -> D3D11DeviceContextType,
    get_context_flags: proc "std" (this: ^ID3D11_Device_Context),
    finish_command_list: proc "std" (this: ^ID3D11_Device_Context, restore_deferred_context_state: b32, out_command_list: ^^ID3D11_Command_List), 
}

ID3D11_Device_Context :: struct {
    using vtbl: ^ID3D11_Device_Context_Vtbl,
}

D3D11_Report_Live_Device_Object_Flags :: enum u32 {
    SUMMARY         = 0x1,
    DETAIL          = 0x2,
    IGNORE_INTERNAL = 0x4,
}

ID3D11_Debug_Vtbl :: struct {
    using base: win32.I_Unknown_Vtbl(ID3D11_Debug),
    set_feature_mask: proc "std" (mask: u32),
    get_feature_mask: proc "std" () -> u32,
    set_present_per_render_op_delay: proc "std" (milliseconds: u32) -> win32.Hresult,
    get_present_per_render_op_delay: proc "std" () -> u32,
    set_swap_chain: proc "std" (swap_chain: ^IDXGI_Swap_Chain) -> win32.Hresult,
    get_swap_chain: proc "std" (out_swap_chain: ^^IDXGI_Swap_Chain) -> win32.Hresult,
    validate_context: proc "std" (dev_ctx: ^ID3D11_Device_Context) -> win32.Hresult,
    report_live_device_objects: proc "std" (flags: D3D11_Report_Live_Device_Object_Flags) -> win32.Hresult,
    validate_context_for_dispatch: proc "std" (dev_ctx: ^ID3D11_Device_Context) -> win32.Hresult,
}

ID3D11_Debug :: struct {
    using vtbl: ^ID3D11_Debug_Vtbl,
}

D3D11MessageId :: enum u32 {
    UNKNOWN    = 0,
    DEVICE_IASETVERTEXBUFFERS_HAZARD   = ( UNKNOWN + 1 ) ,
    DEVICE_IASETINDEXBUFFER_HAZARD = ( DEVICE_IASETVERTEXBUFFERS_HAZARD + 1 ) ,
    DEVICE_VSSETSHADERRESOURCES_HAZARD = ( DEVICE_IASETINDEXBUFFER_HAZARD + 1 ) ,
    DEVICE_VSSETCONSTANTBUFFERS_HAZARD = ( DEVICE_VSSETSHADERRESOURCES_HAZARD + 1 ) ,
    DEVICE_GSSETSHADERRESOURCES_HAZARD = ( DEVICE_VSSETCONSTANTBUFFERS_HAZARD + 1 ) ,
    DEVICE_GSSETCONSTANTBUFFERS_HAZARD = ( DEVICE_GSSETSHADERRESOURCES_HAZARD + 1 ) ,
    DEVICE_PSSETSHADERRESOURCES_HAZARD = ( DEVICE_GSSETCONSTANTBUFFERS_HAZARD + 1 ) ,
    DEVICE_PSSETCONSTANTBUFFERS_HAZARD = ( DEVICE_PSSETSHADERRESOURCES_HAZARD + 1 ) ,
    DEVICE_OMSETRENDERTARGETS_HAZARD   = ( DEVICE_PSSETCONSTANTBUFFERS_HAZARD + 1 ) ,
    DEVICE_SOSETTARGETS_HAZARD = ( DEVICE_OMSETRENDERTARGETS_HAZARD + 1 ) ,
    STRING_FROM_APPLICATION    = ( DEVICE_SOSETTARGETS_HAZARD + 1 ) ,
    CORRUPTED_THIS = ( STRING_FROM_APPLICATION + 1 ) ,
    CORRUPTED_PARAMETER1   = ( CORRUPTED_THIS + 1 ) ,
    CORRUPTED_PARAMETER2   = ( CORRUPTED_PARAMETER1 + 1 ) ,
    CORRUPTED_PARAMETER3   = ( CORRUPTED_PARAMETER2 + 1 ) ,
    CORRUPTED_PARAMETER4   = ( CORRUPTED_PARAMETER3 + 1 ) ,
    CORRUPTED_PARAMETER5   = ( CORRUPTED_PARAMETER4 + 1 ) ,
    CORRUPTED_PARAMETER6   = ( CORRUPTED_PARAMETER5 + 1 ) ,
    CORRUPTED_PARAMETER7   = ( CORRUPTED_PARAMETER6 + 1 ) ,
    CORRUPTED_PARAMETER8   = ( CORRUPTED_PARAMETER7 + 1 ) ,
    CORRUPTED_PARAMETER9   = ( CORRUPTED_PARAMETER8 + 1 ) ,
    CORRUPTED_PARAMETER10  = ( CORRUPTED_PARAMETER9 + 1 ) ,
    CORRUPTED_PARAMETER11  = ( CORRUPTED_PARAMETER10 + 1 ) ,
    CORRUPTED_PARAMETER12  = ( CORRUPTED_PARAMETER11 + 1 ) ,
    CORRUPTED_PARAMETER13  = ( CORRUPTED_PARAMETER12 + 1 ) ,
    CORRUPTED_PARAMETER14  = ( CORRUPTED_PARAMETER13 + 1 ) ,
    CORRUPTED_PARAMETER15  = ( CORRUPTED_PARAMETER14 + 1 ) ,
    CORRUPTED_MULTITHREADING   = ( CORRUPTED_PARAMETER15 + 1 ) ,
    MESSAGE_REPORTING_OUTOFMEMORY  = ( CORRUPTED_MULTITHREADING + 1 ) ,
    IASETINPUTLAYOUT_UNBINDDELETINGOBJECT  = ( MESSAGE_REPORTING_OUTOFMEMORY + 1 ) ,
    IASETVERTEXBUFFERS_UNBINDDELETINGOBJECT    = ( IASETINPUTLAYOUT_UNBINDDELETINGOBJECT + 1 ) ,
    IASETINDEXBUFFER_UNBINDDELETINGOBJECT  = ( IASETVERTEXBUFFERS_UNBINDDELETINGOBJECT + 1 ) ,
    VSSETSHADER_UNBINDDELETINGOBJECT   = ( IASETINDEXBUFFER_UNBINDDELETINGOBJECT + 1 ) ,
    VSSETSHADERRESOURCES_UNBINDDELETINGOBJECT  = ( VSSETSHADER_UNBINDDELETINGOBJECT + 1 ) ,
    VSSETCONSTANTBUFFERS_UNBINDDELETINGOBJECT  = ( VSSETSHADERRESOURCES_UNBINDDELETINGOBJECT + 1 ) ,
    VSSETSAMPLERS_UNBINDDELETINGOBJECT = ( VSSETCONSTANTBUFFERS_UNBINDDELETINGOBJECT + 1 ) ,
    GSSETSHADER_UNBINDDELETINGOBJECT   = ( VSSETSAMPLERS_UNBINDDELETINGOBJECT + 1 ) ,
    GSSETSHADERRESOURCES_UNBINDDELETINGOBJECT  = ( GSSETSHADER_UNBINDDELETINGOBJECT + 1 ) ,
    GSSETCONSTANTBUFFERS_UNBINDDELETINGOBJECT  = ( GSSETSHADERRESOURCES_UNBINDDELETINGOBJECT + 1 ) ,
    GSSETSAMPLERS_UNBINDDELETINGOBJECT = ( GSSETCONSTANTBUFFERS_UNBINDDELETINGOBJECT + 1 ) ,
    SOSETTARGETS_UNBINDDELETINGOBJECT  = ( GSSETSAMPLERS_UNBINDDELETINGOBJECT + 1 ) ,
    PSSETSHADER_UNBINDDELETINGOBJECT   = ( SOSETTARGETS_UNBINDDELETINGOBJECT + 1 ) ,
    PSSETSHADERRESOURCES_UNBINDDELETINGOBJECT  = ( PSSETSHADER_UNBINDDELETINGOBJECT + 1 ) ,
    PSSETCONSTANTBUFFERS_UNBINDDELETINGOBJECT  = ( PSSETSHADERRESOURCES_UNBINDDELETINGOBJECT + 1 ) ,
    PSSETSAMPLERS_UNBINDDELETINGOBJECT = ( PSSETCONSTANTBUFFERS_UNBINDDELETINGOBJECT + 1 ) ,
    RSSETSTATE_UNBINDDELETINGOBJECT    = ( PSSETSAMPLERS_UNBINDDELETINGOBJECT + 1 ) ,
    OMSETBLENDSTATE_UNBINDDELETINGOBJECT   = ( RSSETSTATE_UNBINDDELETINGOBJECT + 1 ) ,
    OMSETDEPTHSTENCILSTATE_UNBINDDELETINGOBJECT    = ( OMSETBLENDSTATE_UNBINDDELETINGOBJECT + 1 ) ,
    OMSETRENDERTARGETS_UNBINDDELETINGOBJECT    = ( OMSETDEPTHSTENCILSTATE_UNBINDDELETINGOBJECT + 1 ) ,
    SETPREDICATION_UNBINDDELETINGOBJECT    = ( OMSETRENDERTARGETS_UNBINDDELETINGOBJECT + 1 ) ,
    GETPRIVATEDATA_MOREDATA    = ( SETPREDICATION_UNBINDDELETINGOBJECT + 1 ) ,
    SETPRIVATEDATA_INVALIDFREEDATA = ( GETPRIVATEDATA_MOREDATA + 1 ) ,
    SETPRIVATEDATA_INVALIDIUNKNOWN = ( SETPRIVATEDATA_INVALIDFREEDATA + 1 ) ,
    SETPRIVATEDATA_INVALIDFLAGS    = ( SETPRIVATEDATA_INVALIDIUNKNOWN + 1 ) ,
    SETPRIVATEDATA_CHANGINGPARAMS  = ( SETPRIVATEDATA_INVALIDFLAGS + 1 ) ,
    SETPRIVATEDATA_OUTOFMEMORY = ( SETPRIVATEDATA_CHANGINGPARAMS + 1 ) ,
    CREATEBUFFER_UNRECOGNIZEDFORMAT    = ( SETPRIVATEDATA_OUTOFMEMORY + 1 ) ,
    CREATEBUFFER_INVALIDSAMPLES    = ( CREATEBUFFER_UNRECOGNIZEDFORMAT + 1 ) ,
    CREATEBUFFER_UNRECOGNIZEDUSAGE = ( CREATEBUFFER_INVALIDSAMPLES + 1 ) ,
    CREATEBUFFER_UNRECOGNIZEDBINDFLAGS = ( CREATEBUFFER_UNRECOGNIZEDUSAGE + 1 ) ,
    CREATEBUFFER_UNRECOGNIZEDCPUACCESSFLAGS    = ( CREATEBUFFER_UNRECOGNIZEDBINDFLAGS + 1 ) ,
    CREATEBUFFER_UNRECOGNIZEDMISCFLAGS = ( CREATEBUFFER_UNRECOGNIZEDCPUACCESSFLAGS + 1 ) ,
    CREATEBUFFER_INVALIDCPUACCESSFLAGS = ( CREATEBUFFER_UNRECOGNIZEDMISCFLAGS + 1 ) ,
    CREATEBUFFER_INVALIDBINDFLAGS  = ( CREATEBUFFER_INVALIDCPUACCESSFLAGS + 1 ) ,
    CREATEBUFFER_INVALIDINITIALDATA    = ( CREATEBUFFER_INVALIDBINDFLAGS + 1 ) ,
    CREATEBUFFER_INVALIDDIMENSIONS = ( CREATEBUFFER_INVALIDINITIALDATA + 1 ) ,
    CREATEBUFFER_INVALIDMIPLEVELS  = ( CREATEBUFFER_INVALIDDIMENSIONS + 1 ) ,
    CREATEBUFFER_INVALIDMISCFLAGS  = ( CREATEBUFFER_INVALIDMIPLEVELS + 1 ) ,
    CREATEBUFFER_INVALIDARG_RETURN = ( CREATEBUFFER_INVALIDMISCFLAGS + 1 ) ,
    CREATEBUFFER_OUTOFMEMORY_RETURN    = ( CREATEBUFFER_INVALIDARG_RETURN + 1 ) ,
    CREATEBUFFER_NULLDESC  = ( CREATEBUFFER_OUTOFMEMORY_RETURN + 1 ) ,
    CREATEBUFFER_INVALIDCONSTANTBUFFERBINDINGS = ( CREATEBUFFER_NULLDESC + 1 ) ,
    CREATEBUFFER_LARGEALLOCATION   = ( CREATEBUFFER_INVALIDCONSTANTBUFFERBINDINGS + 1 ) ,
    CREATETEXTURE1D_UNRECOGNIZEDFORMAT = ( CREATEBUFFER_LARGEALLOCATION + 1 ) ,
    CREATETEXTURE1D_UNSUPPORTEDFORMAT  = ( CREATETEXTURE1D_UNRECOGNIZEDFORMAT + 1 ) ,
    CREATETEXTURE1D_INVALIDSAMPLES = ( CREATETEXTURE1D_UNSUPPORTEDFORMAT + 1 ) ,
    CREATETEXTURE1D_UNRECOGNIZEDUSAGE  = ( CREATETEXTURE1D_INVALIDSAMPLES + 1 ) ,
    CREATETEXTURE1D_UNRECOGNIZEDBINDFLAGS  = ( CREATETEXTURE1D_UNRECOGNIZEDUSAGE + 1 ) ,
    CREATETEXTURE1D_UNRECOGNIZEDCPUACCESSFLAGS = ( CREATETEXTURE1D_UNRECOGNIZEDBINDFLAGS + 1 ) ,
    CREATETEXTURE1D_UNRECOGNIZEDMISCFLAGS  = ( CREATETEXTURE1D_UNRECOGNIZEDCPUACCESSFLAGS + 1 ) ,
    CREATETEXTURE1D_INVALIDCPUACCESSFLAGS  = ( CREATETEXTURE1D_UNRECOGNIZEDMISCFLAGS + 1 ) ,
    CREATETEXTURE1D_INVALIDBINDFLAGS   = ( CREATETEXTURE1D_INVALIDCPUACCESSFLAGS + 1 ) ,
    CREATETEXTURE1D_INVALIDINITIALDATA = ( CREATETEXTURE1D_INVALIDBINDFLAGS + 1 ) ,
    CREATETEXTURE1D_INVALIDDIMENSIONS  = ( CREATETEXTURE1D_INVALIDINITIALDATA + 1 ) ,
    CREATETEXTURE1D_INVALIDMIPLEVELS   = ( CREATETEXTURE1D_INVALIDDIMENSIONS + 1 ) ,
    CREATETEXTURE1D_INVALIDMISCFLAGS   = ( CREATETEXTURE1D_INVALIDMIPLEVELS + 1 ) ,
    CREATETEXTURE1D_INVALIDARG_RETURN  = ( CREATETEXTURE1D_INVALIDMISCFLAGS + 1 ) ,
    CREATETEXTURE1D_OUTOFMEMORY_RETURN = ( CREATETEXTURE1D_INVALIDARG_RETURN + 1 ) ,
    CREATETEXTURE1D_NULLDESC   = ( CREATETEXTURE1D_OUTOFMEMORY_RETURN + 1 ) ,
    CREATETEXTURE1D_LARGEALLOCATION    = ( CREATETEXTURE1D_NULLDESC + 1 ) ,
    CREATETEXTURE2D_UNRECOGNIZEDFORMAT = ( CREATETEXTURE1D_LARGEALLOCATION + 1 ) ,
    CREATETEXTURE2D_UNSUPPORTEDFORMAT  = ( CREATETEXTURE2D_UNRECOGNIZEDFORMAT + 1 ) ,
    CREATETEXTURE2D_INVALIDSAMPLES = ( CREATETEXTURE2D_UNSUPPORTEDFORMAT + 1 ) ,
    CREATETEXTURE2D_UNRECOGNIZEDUSAGE  = ( CREATETEXTURE2D_INVALIDSAMPLES + 1 ) ,
    CREATETEXTURE2D_UNRECOGNIZEDBINDFLAGS  = ( CREATETEXTURE2D_UNRECOGNIZEDUSAGE + 1 ) ,
    CREATETEXTURE2D_UNRECOGNIZEDCPUACCESSFLAGS = ( CREATETEXTURE2D_UNRECOGNIZEDBINDFLAGS + 1 ) ,
    CREATETEXTURE2D_UNRECOGNIZEDMISCFLAGS  = ( CREATETEXTURE2D_UNRECOGNIZEDCPUACCESSFLAGS + 1 ) ,
    CREATETEXTURE2D_INVALIDCPUACCESSFLAGS  = ( CREATETEXTURE2D_UNRECOGNIZEDMISCFLAGS + 1 ) ,
    CREATETEXTURE2D_INVALIDBINDFLAGS   = ( CREATETEXTURE2D_INVALIDCPUACCESSFLAGS + 1 ) ,
    CREATETEXTURE2D_INVALIDINITIALDATA = ( CREATETEXTURE2D_INVALIDBINDFLAGS + 1 ) ,
    CREATETEXTURE2D_INVALIDDIMENSIONS  = ( CREATETEXTURE2D_INVALIDINITIALDATA + 1 ) ,
    CREATETEXTURE2D_INVALIDMIPLEVELS   = ( CREATETEXTURE2D_INVALIDDIMENSIONS + 1 ) ,
    CREATETEXTURE2D_INVALIDMISCFLAGS   = ( CREATETEXTURE2D_INVALIDMIPLEVELS + 1 ) ,
    CREATETEXTURE2D_INVALIDARG_RETURN  = ( CREATETEXTURE2D_INVALIDMISCFLAGS + 1 ) ,
    CREATETEXTURE2D_OUTOFMEMORY_RETURN = ( CREATETEXTURE2D_INVALIDARG_RETURN + 1 ) ,
    CREATETEXTURE2D_NULLDESC   = ( CREATETEXTURE2D_OUTOFMEMORY_RETURN + 1 ) ,
    CREATETEXTURE2D_LARGEALLOCATION    = ( CREATETEXTURE2D_NULLDESC + 1 ) ,
    CREATETEXTURE3D_UNRECOGNIZEDFORMAT = ( CREATETEXTURE2D_LARGEALLOCATION + 1 ) ,
    CREATETEXTURE3D_UNSUPPORTEDFORMAT  = ( CREATETEXTURE3D_UNRECOGNIZEDFORMAT + 1 ) ,
    CREATETEXTURE3D_INVALIDSAMPLES = ( CREATETEXTURE3D_UNSUPPORTEDFORMAT + 1 ) ,
    CREATETEXTURE3D_UNRECOGNIZEDUSAGE  = ( CREATETEXTURE3D_INVALIDSAMPLES + 1 ) ,
    CREATETEXTURE3D_UNRECOGNIZEDBINDFLAGS  = ( CREATETEXTURE3D_UNRECOGNIZEDUSAGE + 1 ) ,
    CREATETEXTURE3D_UNRECOGNIZEDCPUACCESSFLAGS = ( CREATETEXTURE3D_UNRECOGNIZEDBINDFLAGS + 1 ) ,
    CREATETEXTURE3D_UNRECOGNIZEDMISCFLAGS  = ( CREATETEXTURE3D_UNRECOGNIZEDCPUACCESSFLAGS + 1 ) ,
    CREATETEXTURE3D_INVALIDCPUACCESSFLAGS  = ( CREATETEXTURE3D_UNRECOGNIZEDMISCFLAGS + 1 ) ,
    CREATETEXTURE3D_INVALIDBINDFLAGS   = ( CREATETEXTURE3D_INVALIDCPUACCESSFLAGS + 1 ) ,
    CREATETEXTURE3D_INVALIDINITIALDATA = ( CREATETEXTURE3D_INVALIDBINDFLAGS + 1 ) ,
    CREATETEXTURE3D_INVALIDDIMENSIONS  = ( CREATETEXTURE3D_INVALIDINITIALDATA + 1 ) ,
    CREATETEXTURE3D_INVALIDMIPLEVELS   = ( CREATETEXTURE3D_INVALIDDIMENSIONS + 1 ) ,
    CREATETEXTURE3D_INVALIDMISCFLAGS   = ( CREATETEXTURE3D_INVALIDMIPLEVELS + 1 ) ,
    CREATETEXTURE3D_INVALIDARG_RETURN  = ( CREATETEXTURE3D_INVALIDMISCFLAGS + 1 ) ,
    CREATETEXTURE3D_OUTOFMEMORY_RETURN = ( CREATETEXTURE3D_INVALIDARG_RETURN + 1 ) ,
    CREATETEXTURE3D_NULLDESC   = ( CREATETEXTURE3D_OUTOFMEMORY_RETURN + 1 ) ,
    CREATETEXTURE3D_LARGEALLOCATION    = ( CREATETEXTURE3D_NULLDESC + 1 ) ,
    CREATESHADERRESOURCEVIEW_UNRECOGNIZEDFORMAT    = ( CREATETEXTURE3D_LARGEALLOCATION + 1 ) ,
    CREATESHADERRESOURCEVIEW_INVALIDDESC   = ( CREATESHADERRESOURCEVIEW_UNRECOGNIZEDFORMAT + 1 ) ,
    CREATESHADERRESOURCEVIEW_INVALIDFORMAT = ( CREATESHADERRESOURCEVIEW_INVALIDDESC + 1 ) ,
    CREATESHADERRESOURCEVIEW_INVALIDDIMENSIONS = ( CREATESHADERRESOURCEVIEW_INVALIDFORMAT + 1 ) ,
    CREATESHADERRESOURCEVIEW_INVALIDRESOURCE   = ( CREATESHADERRESOURCEVIEW_INVALIDDIMENSIONS + 1 ) ,
    CREATESHADERRESOURCEVIEW_TOOMANYOBJECTS    = ( CREATESHADERRESOURCEVIEW_INVALIDRESOURCE + 1 ) ,
    CREATESHADERRESOURCEVIEW_INVALIDARG_RETURN = ( CREATESHADERRESOURCEVIEW_TOOMANYOBJECTS + 1 ) ,
    CREATESHADERRESOURCEVIEW_OUTOFMEMORY_RETURN    = ( CREATESHADERRESOURCEVIEW_INVALIDARG_RETURN + 1 ) ,
    CREATERENDERTARGETVIEW_UNRECOGNIZEDFORMAT  = ( CREATESHADERRESOURCEVIEW_OUTOFMEMORY_RETURN + 1 ) ,
    CREATERENDERTARGETVIEW_UNSUPPORTEDFORMAT   = ( CREATERENDERTARGETVIEW_UNRECOGNIZEDFORMAT + 1 ) ,
    CREATERENDERTARGETVIEW_INVALIDDESC = ( CREATERENDERTARGETVIEW_UNSUPPORTEDFORMAT + 1 ) ,
    CREATERENDERTARGETVIEW_INVALIDFORMAT   = ( CREATERENDERTARGETVIEW_INVALIDDESC + 1 ) ,
    CREATERENDERTARGETVIEW_INVALIDDIMENSIONS   = ( CREATERENDERTARGETVIEW_INVALIDFORMAT + 1 ) ,
    CREATERENDERTARGETVIEW_INVALIDRESOURCE = ( CREATERENDERTARGETVIEW_INVALIDDIMENSIONS + 1 ) ,
    CREATERENDERTARGETVIEW_TOOMANYOBJECTS  = ( CREATERENDERTARGETVIEW_INVALIDRESOURCE + 1 ) ,
    CREATERENDERTARGETVIEW_INVALIDARG_RETURN   = ( CREATERENDERTARGETVIEW_TOOMANYOBJECTS + 1 ) ,
    CREATERENDERTARGETVIEW_OUTOFMEMORY_RETURN  = ( CREATERENDERTARGETVIEW_INVALIDARG_RETURN + 1 ) ,
    CREATEDEPTHSTENCILVIEW_UNRECOGNIZEDFORMAT  = ( CREATERENDERTARGETVIEW_OUTOFMEMORY_RETURN + 1 ) ,
    CREATEDEPTHSTENCILVIEW_INVALIDDESC = ( CREATEDEPTHSTENCILVIEW_UNRECOGNIZEDFORMAT + 1 ) ,
    CREATEDEPTHSTENCILVIEW_INVALIDFORMAT   = ( CREATEDEPTHSTENCILVIEW_INVALIDDESC + 1 ) ,
    CREATEDEPTHSTENCILVIEW_INVALIDDIMENSIONS   = ( CREATEDEPTHSTENCILVIEW_INVALIDFORMAT + 1 ) ,
    CREATEDEPTHSTENCILVIEW_INVALIDRESOURCE = ( CREATEDEPTHSTENCILVIEW_INVALIDDIMENSIONS + 1 ) ,
    CREATEDEPTHSTENCILVIEW_TOOMANYOBJECTS  = ( CREATEDEPTHSTENCILVIEW_INVALIDRESOURCE + 1 ) ,
    CREATEDEPTHSTENCILVIEW_INVALIDARG_RETURN   = ( CREATEDEPTHSTENCILVIEW_TOOMANYOBJECTS + 1 ) ,
    CREATEDEPTHSTENCILVIEW_OUTOFMEMORY_RETURN  = ( CREATEDEPTHSTENCILVIEW_INVALIDARG_RETURN + 1 ) ,
    CREATEINPUTLAYOUT_OUTOFMEMORY  = ( CREATEDEPTHSTENCILVIEW_OUTOFMEMORY_RETURN + 1 ) ,
    CREATEINPUTLAYOUT_TOOMANYELEMENTS  = ( CREATEINPUTLAYOUT_OUTOFMEMORY + 1 ) ,
    CREATEINPUTLAYOUT_INVALIDFORMAT    = ( CREATEINPUTLAYOUT_TOOMANYELEMENTS + 1 ) ,
    CREATEINPUTLAYOUT_INCOMPATIBLEFORMAT   = ( CREATEINPUTLAYOUT_INVALIDFORMAT + 1 ) ,
    CREATEINPUTLAYOUT_INVALIDSLOT  = ( CREATEINPUTLAYOUT_INCOMPATIBLEFORMAT + 1 ) ,
    CREATEINPUTLAYOUT_INVALIDINPUTSLOTCLASS    = ( CREATEINPUTLAYOUT_INVALIDSLOT + 1 ) ,
    CREATEINPUTLAYOUT_STEPRATESLOTCLASSMISMATCH    = ( CREATEINPUTLAYOUT_INVALIDINPUTSLOTCLASS + 1 ) ,
    CREATEINPUTLAYOUT_INVALIDSLOTCLASSCHANGE   = ( CREATEINPUTLAYOUT_STEPRATESLOTCLASSMISMATCH + 1 ) ,
    CREATEINPUTLAYOUT_INVALIDSTEPRATECHANGE    = ( CREATEINPUTLAYOUT_INVALIDSLOTCLASSCHANGE + 1 ) ,
    CREATEINPUTLAYOUT_INVALIDALIGNMENT = ( CREATEINPUTLAYOUT_INVALIDSTEPRATECHANGE + 1 ) ,
    CREATEINPUTLAYOUT_DUPLICATESEMANTIC    = ( CREATEINPUTLAYOUT_INVALIDALIGNMENT + 1 ) ,
    CREATEINPUTLAYOUT_UNPARSEABLEINPUTSIGNATURE    = ( CREATEINPUTLAYOUT_DUPLICATESEMANTIC + 1 ) ,
    CREATEINPUTLAYOUT_NULLSEMANTIC = ( CREATEINPUTLAYOUT_UNPARSEABLEINPUTSIGNATURE + 1 ) ,
    CREATEINPUTLAYOUT_MISSINGELEMENT   = ( CREATEINPUTLAYOUT_NULLSEMANTIC + 1 ) ,
    CREATEINPUTLAYOUT_NULLDESC = ( CREATEINPUTLAYOUT_MISSINGELEMENT + 1 ) ,
    CREATEVERTEXSHADER_OUTOFMEMORY = ( CREATEINPUTLAYOUT_NULLDESC + 1 ) ,
    CREATEVERTEXSHADER_INVALIDSHADERBYTECODE   = ( CREATEVERTEXSHADER_OUTOFMEMORY + 1 ) ,
    CREATEVERTEXSHADER_INVALIDSHADERTYPE   = ( CREATEVERTEXSHADER_INVALIDSHADERBYTECODE + 1 ) ,
    CREATEGEOMETRYSHADER_OUTOFMEMORY   = ( CREATEVERTEXSHADER_INVALIDSHADERTYPE + 1 ) ,
    CREATEGEOMETRYSHADER_INVALIDSHADERBYTECODE = ( CREATEGEOMETRYSHADER_OUTOFMEMORY + 1 ) ,
    CREATEGEOMETRYSHADER_INVALIDSHADERTYPE = ( CREATEGEOMETRYSHADER_INVALIDSHADERBYTECODE + 1 ) ,
    CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_OUTOFMEMORY   = ( CREATEGEOMETRYSHADER_INVALIDSHADERTYPE + 1 ) ,
    CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_INVALIDSHADERBYTECODE = ( CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_OUTOFMEMORY + 1 ) ,
    CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_INVALIDSHADERTYPE = ( CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_INVALIDSHADERBYTECODE + 1 ) ,
    CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_INVALIDNUMENTRIES = ( CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_INVALIDSHADERTYPE + 1 ) ,
    CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_OUTPUTSTREAMSTRIDEUNUSED  = ( CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_INVALIDNUMENTRIES + 1 ) ,
    CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_UNEXPECTEDDECL    = ( CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_OUTPUTSTREAMSTRIDEUNUSED + 1 ) ,
    CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_EXPECTEDDECL  = ( CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_UNEXPECTEDDECL + 1 ) ,
    CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_OUTPUTSLOT0EXPECTED   = ( CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_EXPECTEDDECL + 1 ) ,
    CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_INVALIDOUTPUTSLOT = ( CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_OUTPUTSLOT0EXPECTED + 1 ) ,
    CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_ONLYONEELEMENTPERSLOT = ( CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_INVALIDOUTPUTSLOT + 1 ) ,
    CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_INVALIDCOMPONENTCOUNT = ( CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_ONLYONEELEMENTPERSLOT + 1 ) ,
    CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_INVALIDSTARTCOMPONENTANDCOMPONENTCOUNT    = ( CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_INVALIDCOMPONENTCOUNT + 1 ) ,
    CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_INVALIDGAPDEFINITION  = ( CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_INVALIDSTARTCOMPONENTANDCOMPONENTCOUNT + 1 ) ,
    CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_REPEATEDOUTPUT    = ( CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_INVALIDGAPDEFINITION + 1 ) ,
    CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_INVALIDOUTPUTSTREAMSTRIDE = ( CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_REPEATEDOUTPUT + 1 ) ,
    CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_MISSINGSEMANTIC   = ( CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_INVALIDOUTPUTSTREAMSTRIDE + 1 ) ,
    CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_MASKMISMATCH  = ( CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_MISSINGSEMANTIC + 1 ) ,
    CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_CANTHAVEONLYGAPS  = ( CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_MASKMISMATCH + 1 ) ,
    CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_DECLTOOCOMPLEX    = ( CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_CANTHAVEONLYGAPS + 1 ) ,
    CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_MISSINGOUTPUTSIGNATURE    = ( CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_DECLTOOCOMPLEX + 1 ) ,
    CREATEPIXELSHADER_OUTOFMEMORY  = ( CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_MISSINGOUTPUTSIGNATURE + 1 ) ,
    CREATEPIXELSHADER_INVALIDSHADERBYTECODE    = ( CREATEPIXELSHADER_OUTOFMEMORY + 1 ) ,
    CREATEPIXELSHADER_INVALIDSHADERTYPE    = ( CREATEPIXELSHADER_INVALIDSHADERBYTECODE + 1 ) ,
    CREATERASTERIZERSTATE_INVALIDFILLMODE  = ( CREATEPIXELSHADER_INVALIDSHADERTYPE + 1 ) ,
    CREATERASTERIZERSTATE_INVALIDCULLMODE  = ( CREATERASTERIZERSTATE_INVALIDFILLMODE + 1 ) ,
    CREATERASTERIZERSTATE_INVALIDDEPTHBIASCLAMP    = ( CREATERASTERIZERSTATE_INVALIDCULLMODE + 1 ) ,
    CREATERASTERIZERSTATE_INVALIDSLOPESCALEDDEPTHBIAS  = ( CREATERASTERIZERSTATE_INVALIDDEPTHBIASCLAMP + 1 ) ,
    CREATERASTERIZERSTATE_TOOMANYOBJECTS   = ( CREATERASTERIZERSTATE_INVALIDSLOPESCALEDDEPTHBIAS + 1 ) ,
    CREATERASTERIZERSTATE_NULLDESC = ( CREATERASTERIZERSTATE_TOOMANYOBJECTS + 1 ) ,
    CREATEDEPTHSTENCILSTATE_INVALIDDEPTHWRITEMASK  = ( CREATERASTERIZERSTATE_NULLDESC + 1 ) ,
    CREATEDEPTHSTENCILSTATE_INVALIDDEPTHFUNC   = ( CREATEDEPTHSTENCILSTATE_INVALIDDEPTHWRITEMASK + 1 ) ,
    CREATEDEPTHSTENCILSTATE_INVALIDFRONTFACESTENCILFAILOP  = ( CREATEDEPTHSTENCILSTATE_INVALIDDEPTHFUNC + 1 ) ,
    CREATEDEPTHSTENCILSTATE_INVALIDFRONTFACESTENCILZFAILOP = ( CREATEDEPTHSTENCILSTATE_INVALIDFRONTFACESTENCILFAILOP + 1 ) ,
    CREATEDEPTHSTENCILSTATE_INVALIDFRONTFACESTENCILPASSOP  = ( CREATEDEPTHSTENCILSTATE_INVALIDFRONTFACESTENCILZFAILOP + 1 ) ,
    CREATEDEPTHSTENCILSTATE_INVALIDFRONTFACESTENCILFUNC    = ( CREATEDEPTHSTENCILSTATE_INVALIDFRONTFACESTENCILPASSOP + 1 ) ,
    CREATEDEPTHSTENCILSTATE_INVALIDBACKFACESTENCILFAILOP   = ( CREATEDEPTHSTENCILSTATE_INVALIDFRONTFACESTENCILFUNC + 1 ) ,
    CREATEDEPTHSTENCILSTATE_INVALIDBACKFACESTENCILZFAILOP  = ( CREATEDEPTHSTENCILSTATE_INVALIDBACKFACESTENCILFAILOP + 1 ) ,
    CREATEDEPTHSTENCILSTATE_INVALIDBACKFACESTENCILPASSOP   = ( CREATEDEPTHSTENCILSTATE_INVALIDBACKFACESTENCILZFAILOP + 1 ) ,
    CREATEDEPTHSTENCILSTATE_INVALIDBACKFACESTENCILFUNC = ( CREATEDEPTHSTENCILSTATE_INVALIDBACKFACESTENCILPASSOP + 1 ) ,
    CREATEDEPTHSTENCILSTATE_TOOMANYOBJECTS = ( CREATEDEPTHSTENCILSTATE_INVALIDBACKFACESTENCILFUNC + 1 ) ,
    CREATEDEPTHSTENCILSTATE_NULLDESC   = ( CREATEDEPTHSTENCILSTATE_TOOMANYOBJECTS + 1 ) ,
    CREATEBLENDSTATE_INVALIDSRCBLEND   = ( CREATEDEPTHSTENCILSTATE_NULLDESC + 1 ) ,
    CREATEBLENDSTATE_INVALIDDESTBLEND  = ( CREATEBLENDSTATE_INVALIDSRCBLEND + 1 ) ,
    CREATEBLENDSTATE_INVALIDBLENDOP    = ( CREATEBLENDSTATE_INVALIDDESTBLEND + 1 ) ,
    CREATEBLENDSTATE_INVALIDSRCBLENDALPHA  = ( CREATEBLENDSTATE_INVALIDBLENDOP + 1 ) ,
    CREATEBLENDSTATE_INVALIDDESTBLENDALPHA = ( CREATEBLENDSTATE_INVALIDSRCBLENDALPHA + 1 ) ,
    CREATEBLENDSTATE_INVALIDBLENDOPALPHA   = ( CREATEBLENDSTATE_INVALIDDESTBLENDALPHA + 1 ) ,
    CREATEBLENDSTATE_INVALIDRENDERTARGETWRITEMASK  = ( CREATEBLENDSTATE_INVALIDBLENDOPALPHA + 1 ) ,
    CREATEBLENDSTATE_TOOMANYOBJECTS    = ( CREATEBLENDSTATE_INVALIDRENDERTARGETWRITEMASK + 1 ) ,
    CREATEBLENDSTATE_NULLDESC  = ( CREATEBLENDSTATE_TOOMANYOBJECTS + 1 ) ,
    CREATESAMPLERSTATE_INVALIDFILTER   = ( CREATEBLENDSTATE_NULLDESC + 1 ) ,
    CREATESAMPLERSTATE_INVALIDADDRESSU = ( CREATESAMPLERSTATE_INVALIDFILTER + 1 ) ,
    CREATESAMPLERSTATE_INVALIDADDRESSV = ( CREATESAMPLERSTATE_INVALIDADDRESSU + 1 ) ,
    CREATESAMPLERSTATE_INVALIDADDRESSW = ( CREATESAMPLERSTATE_INVALIDADDRESSV + 1 ) ,
    CREATESAMPLERSTATE_INVALIDMIPLODBIAS   = ( CREATESAMPLERSTATE_INVALIDADDRESSW + 1 ) ,
    CREATESAMPLERSTATE_INVALIDMAXANISOTROPY    = ( CREATESAMPLERSTATE_INVALIDMIPLODBIAS + 1 ) ,
    CREATESAMPLERSTATE_INVALIDCOMPARISONFUNC   = ( CREATESAMPLERSTATE_INVALIDMAXANISOTROPY + 1 ) ,
    CREATESAMPLERSTATE_INVALIDMINLOD   = ( CREATESAMPLERSTATE_INVALIDCOMPARISONFUNC + 1 ) ,
    CREATESAMPLERSTATE_INVALIDMAXLOD   = ( CREATESAMPLERSTATE_INVALIDMINLOD + 1 ) ,
    CREATESAMPLERSTATE_TOOMANYOBJECTS  = ( CREATESAMPLERSTATE_INVALIDMAXLOD + 1 ) ,
    CREATESAMPLERSTATE_NULLDESC    = ( CREATESAMPLERSTATE_TOOMANYOBJECTS + 1 ) ,
    CREATEQUERYORPREDICATE_INVALIDQUERY    = ( CREATESAMPLERSTATE_NULLDESC + 1 ) ,
    CREATEQUERYORPREDICATE_INVALIDMISCFLAGS    = ( CREATEQUERYORPREDICATE_INVALIDQUERY + 1 ) ,
    CREATEQUERYORPREDICATE_UNEXPECTEDMISCFLAG  = ( CREATEQUERYORPREDICATE_INVALIDMISCFLAGS + 1 ) ,
    CREATEQUERYORPREDICATE_NULLDESC    = ( CREATEQUERYORPREDICATE_UNEXPECTEDMISCFLAG + 1 ) ,
    DEVICE_IASETPRIMITIVETOPOLOGY_TOPOLOGY_UNRECOGNIZED    = ( CREATEQUERYORPREDICATE_NULLDESC + 1 ) ,
    DEVICE_IASETPRIMITIVETOPOLOGY_TOPOLOGY_UNDEFINED   = ( DEVICE_IASETPRIMITIVETOPOLOGY_TOPOLOGY_UNRECOGNIZED + 1 ) ,
    IASETVERTEXBUFFERS_INVALIDBUFFER   = ( DEVICE_IASETPRIMITIVETOPOLOGY_TOPOLOGY_UNDEFINED + 1 ) ,
    DEVICE_IASETVERTEXBUFFERS_OFFSET_TOO_LARGE = ( IASETVERTEXBUFFERS_INVALIDBUFFER + 1 ) ,
    DEVICE_IASETVERTEXBUFFERS_BUFFERS_EMPTY    = ( DEVICE_IASETVERTEXBUFFERS_OFFSET_TOO_LARGE + 1 ) ,
    IASETINDEXBUFFER_INVALIDBUFFER = ( DEVICE_IASETVERTEXBUFFERS_BUFFERS_EMPTY + 1 ) ,
    DEVICE_IASETINDEXBUFFER_FORMAT_INVALID = ( IASETINDEXBUFFER_INVALIDBUFFER + 1 ) ,
    DEVICE_IASETINDEXBUFFER_OFFSET_TOO_LARGE   = ( DEVICE_IASETINDEXBUFFER_FORMAT_INVALID + 1 ) ,
    DEVICE_IASETINDEXBUFFER_OFFSET_UNALIGNED   = ( DEVICE_IASETINDEXBUFFER_OFFSET_TOO_LARGE + 1 ) ,
    DEVICE_VSSETSHADERRESOURCES_VIEWS_EMPTY    = ( DEVICE_IASETINDEXBUFFER_OFFSET_UNALIGNED + 1 ) ,
    VSSETCONSTANTBUFFERS_INVALIDBUFFER = ( DEVICE_VSSETSHADERRESOURCES_VIEWS_EMPTY + 1 ) ,
    DEVICE_VSSETCONSTANTBUFFERS_BUFFERS_EMPTY  = ( VSSETCONSTANTBUFFERS_INVALIDBUFFER + 1 ) ,
    DEVICE_VSSETSAMPLERS_SAMPLERS_EMPTY    = ( DEVICE_VSSETCONSTANTBUFFERS_BUFFERS_EMPTY + 1 ) ,
    DEVICE_GSSETSHADERRESOURCES_VIEWS_EMPTY    = ( DEVICE_VSSETSAMPLERS_SAMPLERS_EMPTY + 1 ) ,
    GSSETCONSTANTBUFFERS_INVALIDBUFFER = ( DEVICE_GSSETSHADERRESOURCES_VIEWS_EMPTY + 1 ) ,
    DEVICE_GSSETCONSTANTBUFFERS_BUFFERS_EMPTY  = ( GSSETCONSTANTBUFFERS_INVALIDBUFFER + 1 ) ,
    DEVICE_GSSETSAMPLERS_SAMPLERS_EMPTY    = ( DEVICE_GSSETCONSTANTBUFFERS_BUFFERS_EMPTY + 1 ) ,
    SOSETTARGETS_INVALIDBUFFER = ( DEVICE_GSSETSAMPLERS_SAMPLERS_EMPTY + 1 ) ,
    DEVICE_SOSETTARGETS_OFFSET_UNALIGNED   = ( SOSETTARGETS_INVALIDBUFFER + 1 ) ,
    DEVICE_PSSETSHADERRESOURCES_VIEWS_EMPTY    = ( DEVICE_SOSETTARGETS_OFFSET_UNALIGNED + 1 ) ,
    PSSETCONSTANTBUFFERS_INVALIDBUFFER = ( DEVICE_PSSETSHADERRESOURCES_VIEWS_EMPTY + 1 ) ,
    DEVICE_PSSETCONSTANTBUFFERS_BUFFERS_EMPTY  = ( PSSETCONSTANTBUFFERS_INVALIDBUFFER + 1 ) ,
    DEVICE_PSSETSAMPLERS_SAMPLERS_EMPTY    = ( DEVICE_PSSETCONSTANTBUFFERS_BUFFERS_EMPTY + 1 ) ,
    DEVICE_RSSETVIEWPORTS_INVALIDVIEWPORT  = ( DEVICE_PSSETSAMPLERS_SAMPLERS_EMPTY + 1 ) ,
    DEVICE_RSSETSCISSORRECTS_INVALIDSCISSOR    = ( DEVICE_RSSETVIEWPORTS_INVALIDVIEWPORT + 1 ) ,
    CLEARRENDERTARGETVIEW_DENORMFLUSH  = ( DEVICE_RSSETSCISSORRECTS_INVALIDSCISSOR + 1 ) ,
    CLEARDEPTHSTENCILVIEW_DENORMFLUSH  = ( CLEARRENDERTARGETVIEW_DENORMFLUSH + 1 ) ,
    CLEARDEPTHSTENCILVIEW_INVALID  = ( CLEARDEPTHSTENCILVIEW_DENORMFLUSH + 1 ) ,
    DEVICE_IAGETVERTEXBUFFERS_BUFFERS_EMPTY    = ( CLEARDEPTHSTENCILVIEW_INVALID + 1 ) ,
    DEVICE_VSGETSHADERRESOURCES_VIEWS_EMPTY    = ( DEVICE_IAGETVERTEXBUFFERS_BUFFERS_EMPTY + 1 ) ,
    DEVICE_VSGETCONSTANTBUFFERS_BUFFERS_EMPTY  = ( DEVICE_VSGETSHADERRESOURCES_VIEWS_EMPTY + 1 ) ,
    DEVICE_VSGETSAMPLERS_SAMPLERS_EMPTY    = ( DEVICE_VSGETCONSTANTBUFFERS_BUFFERS_EMPTY + 1 ) ,
    DEVICE_GSGETSHADERRESOURCES_VIEWS_EMPTY    = ( DEVICE_VSGETSAMPLERS_SAMPLERS_EMPTY + 1 ) ,
    DEVICE_GSGETCONSTANTBUFFERS_BUFFERS_EMPTY  = ( DEVICE_GSGETSHADERRESOURCES_VIEWS_EMPTY + 1 ) ,
    DEVICE_GSGETSAMPLERS_SAMPLERS_EMPTY    = ( DEVICE_GSGETCONSTANTBUFFERS_BUFFERS_EMPTY + 1 ) ,
    DEVICE_SOGETTARGETS_BUFFERS_EMPTY  = ( DEVICE_GSGETSAMPLERS_SAMPLERS_EMPTY + 1 ) ,
    DEVICE_PSGETSHADERRESOURCES_VIEWS_EMPTY    = ( DEVICE_SOGETTARGETS_BUFFERS_EMPTY + 1 ) ,
    DEVICE_PSGETCONSTANTBUFFERS_BUFFERS_EMPTY  = ( DEVICE_PSGETSHADERRESOURCES_VIEWS_EMPTY + 1 ) ,
    DEVICE_PSGETSAMPLERS_SAMPLERS_EMPTY    = ( DEVICE_PSGETCONSTANTBUFFERS_BUFFERS_EMPTY + 1 ) ,
    DEVICE_RSGETVIEWPORTS_VIEWPORTS_EMPTY  = ( DEVICE_PSGETSAMPLERS_SAMPLERS_EMPTY + 1 ) ,
    DEVICE_RSGETSCISSORRECTS_RECTS_EMPTY   = ( DEVICE_RSGETVIEWPORTS_VIEWPORTS_EMPTY + 1 ) ,
    DEVICE_GENERATEMIPS_RESOURCE_INVALID   = ( DEVICE_RSGETSCISSORRECTS_RECTS_EMPTY + 1 ) ,
    COPYSUBRESOURCEREGION_INVALIDDESTINATIONSUBRESOURCE    = ( DEVICE_GENERATEMIPS_RESOURCE_INVALID + 1 ) ,
    COPYSUBRESOURCEREGION_INVALIDSOURCESUBRESOURCE = ( COPYSUBRESOURCEREGION_INVALIDDESTINATIONSUBRESOURCE + 1 ) ,
    COPYSUBRESOURCEREGION_INVALIDSOURCEBOX = ( COPYSUBRESOURCEREGION_INVALIDSOURCESUBRESOURCE + 1 ) ,
    COPYSUBRESOURCEREGION_INVALIDSOURCE    = ( COPYSUBRESOURCEREGION_INVALIDSOURCEBOX + 1 ) ,
    COPYSUBRESOURCEREGION_INVALIDDESTINATIONSTATE  = ( COPYSUBRESOURCEREGION_INVALIDSOURCE + 1 ) ,
    COPYSUBRESOURCEREGION_INVALIDSOURCESTATE   = ( COPYSUBRESOURCEREGION_INVALIDDESTINATIONSTATE + 1 ) ,
    COPYRESOURCE_INVALIDSOURCE = ( COPYSUBRESOURCEREGION_INVALIDSOURCESTATE + 1 ) ,
    COPYRESOURCE_INVALIDDESTINATIONSTATE   = ( COPYRESOURCE_INVALIDSOURCE + 1 ) ,
    COPYRESOURCE_INVALIDSOURCESTATE    = ( COPYRESOURCE_INVALIDDESTINATIONSTATE + 1 ) ,
    UPDATESUBRESOURCE_INVALIDDESTINATIONSUBRESOURCE    = ( COPYRESOURCE_INVALIDSOURCESTATE + 1 ) ,
    UPDATESUBRESOURCE_INVALIDDESTINATIONBOX    = ( UPDATESUBRESOURCE_INVALIDDESTINATIONSUBRESOURCE + 1 ) ,
    UPDATESUBRESOURCE_INVALIDDESTINATIONSTATE  = ( UPDATESUBRESOURCE_INVALIDDESTINATIONBOX + 1 ) ,
    DEVICE_RESOLVESUBRESOURCE_DESTINATION_INVALID  = ( UPDATESUBRESOURCE_INVALIDDESTINATIONSTATE + 1 ) ,
    DEVICE_RESOLVESUBRESOURCE_DESTINATION_SUBRESOURCE_INVALID  = ( DEVICE_RESOLVESUBRESOURCE_DESTINATION_INVALID + 1 ) ,
    DEVICE_RESOLVESUBRESOURCE_SOURCE_INVALID   = ( DEVICE_RESOLVESUBRESOURCE_DESTINATION_SUBRESOURCE_INVALID + 1 ) ,
    DEVICE_RESOLVESUBRESOURCE_SOURCE_SUBRESOURCE_INVALID   = ( DEVICE_RESOLVESUBRESOURCE_SOURCE_INVALID + 1 ) ,
    DEVICE_RESOLVESUBRESOURCE_FORMAT_INVALID   = ( DEVICE_RESOLVESUBRESOURCE_SOURCE_SUBRESOURCE_INVALID + 1 ) ,
    BUFFER_MAP_INVALIDMAPTYPE  = ( DEVICE_RESOLVESUBRESOURCE_FORMAT_INVALID + 1 ) ,
    BUFFER_MAP_INVALIDFLAGS    = ( BUFFER_MAP_INVALIDMAPTYPE + 1 ) ,
    BUFFER_MAP_ALREADYMAPPED   = ( BUFFER_MAP_INVALIDFLAGS + 1 ) ,
    BUFFER_MAP_DEVICEREMOVED_RETURN    = ( BUFFER_MAP_ALREADYMAPPED + 1 ) ,
    BUFFER_UNMAP_NOTMAPPED = ( BUFFER_MAP_DEVICEREMOVED_RETURN + 1 ) ,
    TEXTURE1D_MAP_INVALIDMAPTYPE   = ( BUFFER_UNMAP_NOTMAPPED + 1 ) ,
    TEXTURE1D_MAP_INVALIDSUBRESOURCE   = ( TEXTURE1D_MAP_INVALIDMAPTYPE + 1 ) ,
    TEXTURE1D_MAP_INVALIDFLAGS = ( TEXTURE1D_MAP_INVALIDSUBRESOURCE + 1 ) ,
    TEXTURE1D_MAP_ALREADYMAPPED    = ( TEXTURE1D_MAP_INVALIDFLAGS + 1 ) ,
    TEXTURE1D_MAP_DEVICEREMOVED_RETURN = ( TEXTURE1D_MAP_ALREADYMAPPED + 1 ) ,
    TEXTURE1D_UNMAP_INVALIDSUBRESOURCE = ( TEXTURE1D_MAP_DEVICEREMOVED_RETURN + 1 ) ,
    TEXTURE1D_UNMAP_NOTMAPPED  = ( TEXTURE1D_UNMAP_INVALIDSUBRESOURCE + 1 ) ,
    TEXTURE2D_MAP_INVALIDMAPTYPE   = ( TEXTURE1D_UNMAP_NOTMAPPED + 1 ) ,
    TEXTURE2D_MAP_INVALIDSUBRESOURCE   = ( TEXTURE2D_MAP_INVALIDMAPTYPE + 1 ) ,
    TEXTURE2D_MAP_INVALIDFLAGS = ( TEXTURE2D_MAP_INVALIDSUBRESOURCE + 1 ) ,
    TEXTURE2D_MAP_ALREADYMAPPED    = ( TEXTURE2D_MAP_INVALIDFLAGS + 1 ) ,
    TEXTURE2D_MAP_DEVICEREMOVED_RETURN = ( TEXTURE2D_MAP_ALREADYMAPPED + 1 ) ,
    TEXTURE2D_UNMAP_INVALIDSUBRESOURCE = ( TEXTURE2D_MAP_DEVICEREMOVED_RETURN + 1 ) ,
    TEXTURE2D_UNMAP_NOTMAPPED  = ( TEXTURE2D_UNMAP_INVALIDSUBRESOURCE + 1 ) ,
    TEXTURE3D_MAP_INVALIDMAPTYPE   = ( TEXTURE2D_UNMAP_NOTMAPPED + 1 ) ,
    TEXTURE3D_MAP_INVALIDSUBRESOURCE   = ( TEXTURE3D_MAP_INVALIDMAPTYPE + 1 ) ,
    TEXTURE3D_MAP_INVALIDFLAGS = ( TEXTURE3D_MAP_INVALIDSUBRESOURCE + 1 ) ,
    TEXTURE3D_MAP_ALREADYMAPPED    = ( TEXTURE3D_MAP_INVALIDFLAGS + 1 ) ,
    TEXTURE3D_MAP_DEVICEREMOVED_RETURN = ( TEXTURE3D_MAP_ALREADYMAPPED + 1 ) ,
    TEXTURE3D_UNMAP_INVALIDSUBRESOURCE = ( TEXTURE3D_MAP_DEVICEREMOVED_RETURN + 1 ) ,
    TEXTURE3D_UNMAP_NOTMAPPED  = ( TEXTURE3D_UNMAP_INVALIDSUBRESOURCE + 1 ) ,
    CHECKFORMATSUPPORT_FORMAT_DEPRECATED   = ( TEXTURE3D_UNMAP_NOTMAPPED + 1 ) ,
    CHECKMULTISAMPLEQUALITYLEVELS_FORMAT_DEPRECATED    = ( CHECKFORMATSUPPORT_FORMAT_DEPRECATED + 1 ) ,
    SETEXCEPTIONMODE_UNRECOGNIZEDFLAGS = ( CHECKMULTISAMPLEQUALITYLEVELS_FORMAT_DEPRECATED + 1 ) ,
    SETEXCEPTIONMODE_INVALIDARG_RETURN = ( SETEXCEPTIONMODE_UNRECOGNIZEDFLAGS + 1 ) ,
    SETEXCEPTIONMODE_DEVICEREMOVED_RETURN  = ( SETEXCEPTIONMODE_INVALIDARG_RETURN + 1 ) ,
    REF_SIMULATING_INFINITELY_FAST_HARDWARE    = ( SETEXCEPTIONMODE_DEVICEREMOVED_RETURN + 1 ) ,
    REF_THREADING_MODE = ( REF_SIMULATING_INFINITELY_FAST_HARDWARE + 1 ) ,
    REF_UMDRIVER_EXCEPTION = ( REF_THREADING_MODE + 1 ) ,
    REF_KMDRIVER_EXCEPTION = ( REF_UMDRIVER_EXCEPTION + 1 ) ,
    REF_HARDWARE_EXCEPTION = ( REF_KMDRIVER_EXCEPTION + 1 ) ,
    REF_ACCESSING_INDEXABLE_TEMP_OUT_OF_RANGE  = ( REF_HARDWARE_EXCEPTION + 1 ) ,
    REF_PROBLEM_PARSING_SHADER = ( REF_ACCESSING_INDEXABLE_TEMP_OUT_OF_RANGE + 1 ) ,
    REF_OUT_OF_MEMORY  = ( REF_PROBLEM_PARSING_SHADER + 1 ) ,
    REF_INFO   = ( REF_OUT_OF_MEMORY + 1 ) ,
    DEVICE_DRAW_VERTEXPOS_OVERFLOW = ( REF_INFO + 1 ) ,
    DEVICE_DRAWINDEXED_INDEXPOS_OVERFLOW   = ( DEVICE_DRAW_VERTEXPOS_OVERFLOW + 1 ) ,
    DEVICE_DRAWINSTANCED_VERTEXPOS_OVERFLOW    = ( DEVICE_DRAWINDEXED_INDEXPOS_OVERFLOW + 1 ) ,
    DEVICE_DRAWINSTANCED_INSTANCEPOS_OVERFLOW  = ( DEVICE_DRAWINSTANCED_VERTEXPOS_OVERFLOW + 1 ) ,
    DEVICE_DRAWINDEXEDINSTANCED_INSTANCEPOS_OVERFLOW   = ( DEVICE_DRAWINSTANCED_INSTANCEPOS_OVERFLOW + 1 ) ,
    DEVICE_DRAWINDEXEDINSTANCED_INDEXPOS_OVERFLOW  = ( DEVICE_DRAWINDEXEDINSTANCED_INSTANCEPOS_OVERFLOW + 1 ) ,
    DEVICE_DRAW_VERTEX_SHADER_NOT_SET  = ( DEVICE_DRAWINDEXEDINSTANCED_INDEXPOS_OVERFLOW + 1 ) ,
    DEVICE_SHADER_LINKAGE_SEMANTICNAME_NOT_FOUND   = ( DEVICE_DRAW_VERTEX_SHADER_NOT_SET + 1 ) ,
    DEVICE_SHADER_LINKAGE_REGISTERINDEX    = ( DEVICE_SHADER_LINKAGE_SEMANTICNAME_NOT_FOUND + 1 ) ,
    DEVICE_SHADER_LINKAGE_COMPONENTTYPE    = ( DEVICE_SHADER_LINKAGE_REGISTERINDEX + 1 ) ,
    DEVICE_SHADER_LINKAGE_REGISTERMASK = ( DEVICE_SHADER_LINKAGE_COMPONENTTYPE + 1 ) ,
    DEVICE_SHADER_LINKAGE_SYSTEMVALUE  = ( DEVICE_SHADER_LINKAGE_REGISTERMASK + 1 ) ,
    DEVICE_SHADER_LINKAGE_NEVERWRITTEN_ALWAYSREADS = ( DEVICE_SHADER_LINKAGE_SYSTEMVALUE + 1 ) ,
    DEVICE_DRAW_VERTEX_BUFFER_NOT_SET  = ( DEVICE_SHADER_LINKAGE_NEVERWRITTEN_ALWAYSREADS + 1 ) ,
    DEVICE_DRAW_INPUTLAYOUT_NOT_SET    = ( DEVICE_DRAW_VERTEX_BUFFER_NOT_SET + 1 ) ,
    DEVICE_DRAW_CONSTANT_BUFFER_NOT_SET    = ( DEVICE_DRAW_INPUTLAYOUT_NOT_SET + 1 ) ,
    DEVICE_DRAW_CONSTANT_BUFFER_TOO_SMALL  = ( DEVICE_DRAW_CONSTANT_BUFFER_NOT_SET + 1 ) ,
    DEVICE_DRAW_SAMPLER_NOT_SET    = ( DEVICE_DRAW_CONSTANT_BUFFER_TOO_SMALL + 1 ) ,
    DEVICE_DRAW_SHADERRESOURCEVIEW_NOT_SET = ( DEVICE_DRAW_SAMPLER_NOT_SET + 1 ) ,
    DEVICE_DRAW_VIEW_DIMENSION_MISMATCH    = ( DEVICE_DRAW_SHADERRESOURCEVIEW_NOT_SET + 1 ) ,
    DEVICE_DRAW_VERTEX_BUFFER_STRIDE_TOO_SMALL = ( DEVICE_DRAW_VIEW_DIMENSION_MISMATCH + 1 ) ,
    DEVICE_DRAW_VERTEX_BUFFER_TOO_SMALL    = ( DEVICE_DRAW_VERTEX_BUFFER_STRIDE_TOO_SMALL + 1 ) ,
    DEVICE_DRAW_INDEX_BUFFER_NOT_SET   = ( DEVICE_DRAW_VERTEX_BUFFER_TOO_SMALL + 1 ) ,
    DEVICE_DRAW_INDEX_BUFFER_FORMAT_INVALID    = ( DEVICE_DRAW_INDEX_BUFFER_NOT_SET + 1 ) ,
    DEVICE_DRAW_INDEX_BUFFER_TOO_SMALL = ( DEVICE_DRAW_INDEX_BUFFER_FORMAT_INVALID + 1 ) ,
    DEVICE_DRAW_GS_INPUT_PRIMITIVE_MISMATCH    = ( DEVICE_DRAW_INDEX_BUFFER_TOO_SMALL + 1 ) ,
    DEVICE_DRAW_RESOURCE_RETURN_TYPE_MISMATCH  = ( DEVICE_DRAW_GS_INPUT_PRIMITIVE_MISMATCH + 1 ) ,
    DEVICE_DRAW_POSITION_NOT_PRESENT   = ( DEVICE_DRAW_RESOURCE_RETURN_TYPE_MISMATCH + 1 ) ,
    DEVICE_DRAW_OUTPUT_STREAM_NOT_SET  = ( DEVICE_DRAW_POSITION_NOT_PRESENT + 1 ) ,
    DEVICE_DRAW_BOUND_RESOURCE_MAPPED  = ( DEVICE_DRAW_OUTPUT_STREAM_NOT_SET + 1 ) ,
    DEVICE_DRAW_INVALID_PRIMITIVETOPOLOGY  = ( DEVICE_DRAW_BOUND_RESOURCE_MAPPED + 1 ) ,
    DEVICE_DRAW_VERTEX_OFFSET_UNALIGNED    = ( DEVICE_DRAW_INVALID_PRIMITIVETOPOLOGY + 1 ) ,
    DEVICE_DRAW_VERTEX_STRIDE_UNALIGNED    = ( DEVICE_DRAW_VERTEX_OFFSET_UNALIGNED + 1 ) ,
    DEVICE_DRAW_INDEX_OFFSET_UNALIGNED = ( DEVICE_DRAW_VERTEX_STRIDE_UNALIGNED + 1 ) ,
    DEVICE_DRAW_OUTPUT_STREAM_OFFSET_UNALIGNED = ( DEVICE_DRAW_INDEX_OFFSET_UNALIGNED + 1 ) ,
    DEVICE_DRAW_RESOURCE_FORMAT_LD_UNSUPPORTED = ( DEVICE_DRAW_OUTPUT_STREAM_OFFSET_UNALIGNED + 1 ) ,
    DEVICE_DRAW_RESOURCE_FORMAT_SAMPLE_UNSUPPORTED = ( DEVICE_DRAW_RESOURCE_FORMAT_LD_UNSUPPORTED + 1 ) ,
    DEVICE_DRAW_RESOURCE_FORMAT_SAMPLE_C_UNSUPPORTED   = ( DEVICE_DRAW_RESOURCE_FORMAT_SAMPLE_UNSUPPORTED + 1 ) ,
    DEVICE_DRAW_RESOURCE_MULTISAMPLE_UNSUPPORTED   = ( DEVICE_DRAW_RESOURCE_FORMAT_SAMPLE_C_UNSUPPORTED + 1 ) ,
    DEVICE_DRAW_SO_TARGETS_BOUND_WITHOUT_SOURCE    = ( DEVICE_DRAW_RESOURCE_MULTISAMPLE_UNSUPPORTED + 1 ) ,
    DEVICE_DRAW_SO_STRIDE_LARGER_THAN_BUFFER   = ( DEVICE_DRAW_SO_TARGETS_BOUND_WITHOUT_SOURCE + 1 ) ,
    DEVICE_DRAW_OM_RENDER_TARGET_DOES_NOT_SUPPORT_BLENDING = ( DEVICE_DRAW_SO_STRIDE_LARGER_THAN_BUFFER + 1 ) ,
    DEVICE_DRAW_OM_DUAL_SOURCE_BLENDING_CAN_ONLY_HAVE_RENDER_TARGET_0  = ( DEVICE_DRAW_OM_RENDER_TARGET_DOES_NOT_SUPPORT_BLENDING + 1 ) ,
    DEVICE_REMOVAL_PROCESS_AT_FAULT    = ( DEVICE_DRAW_OM_DUAL_SOURCE_BLENDING_CAN_ONLY_HAVE_RENDER_TARGET_0 + 1 ) ,
    DEVICE_REMOVAL_PROCESS_POSSIBLY_AT_FAULT   = ( DEVICE_REMOVAL_PROCESS_AT_FAULT + 1 ) ,
    DEVICE_REMOVAL_PROCESS_NOT_AT_FAULT    = ( DEVICE_REMOVAL_PROCESS_POSSIBLY_AT_FAULT + 1 ) ,
    DEVICE_OPEN_SHARED_RESOURCE_INVALIDARG_RETURN  = ( DEVICE_REMOVAL_PROCESS_NOT_AT_FAULT + 1 ) ,
    DEVICE_OPEN_SHARED_RESOURCE_OUTOFMEMORY_RETURN = ( DEVICE_OPEN_SHARED_RESOURCE_INVALIDARG_RETURN + 1 ) ,
    DEVICE_OPEN_SHARED_RESOURCE_BADINTERFACE_RETURN    = ( DEVICE_OPEN_SHARED_RESOURCE_OUTOFMEMORY_RETURN + 1 ) ,
    DEVICE_DRAW_VIEWPORT_NOT_SET   = ( DEVICE_OPEN_SHARED_RESOURCE_BADINTERFACE_RETURN + 1 ) ,
    CREATEINPUTLAYOUT_TRAILING_DIGIT_IN_SEMANTIC   = ( DEVICE_DRAW_VIEWPORT_NOT_SET + 1 ) ,
    CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_TRAILING_DIGIT_IN_SEMANTIC    = ( CREATEINPUTLAYOUT_TRAILING_DIGIT_IN_SEMANTIC + 1 ) ,
    DEVICE_RSSETVIEWPORTS_DENORMFLUSH  = ( CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_TRAILING_DIGIT_IN_SEMANTIC + 1 ) ,
    OMSETRENDERTARGETS_INVALIDVIEW = ( DEVICE_RSSETVIEWPORTS_DENORMFLUSH + 1 ) ,
    DEVICE_SETTEXTFILTERSIZE_INVALIDDIMENSIONS = ( OMSETRENDERTARGETS_INVALIDVIEW + 1 ) ,
    DEVICE_DRAW_SAMPLER_MISMATCH   = ( DEVICE_SETTEXTFILTERSIZE_INVALIDDIMENSIONS + 1 ) ,
    CREATEINPUTLAYOUT_TYPE_MISMATCH    = ( DEVICE_DRAW_SAMPLER_MISMATCH + 1 ) ,
    BLENDSTATE_GETDESC_LEGACY  = ( CREATEINPUTLAYOUT_TYPE_MISMATCH + 1 ) ,
    SHADERRESOURCEVIEW_GETDESC_LEGACY  = ( BLENDSTATE_GETDESC_LEGACY + 1 ) ,
    CREATEQUERY_OUTOFMEMORY_RETURN = ( SHADERRESOURCEVIEW_GETDESC_LEGACY + 1 ) ,
    CREATEPREDICATE_OUTOFMEMORY_RETURN = ( CREATEQUERY_OUTOFMEMORY_RETURN + 1 ) ,
    CREATECOUNTER_OUTOFRANGE_COUNTER   = ( CREATEPREDICATE_OUTOFMEMORY_RETURN + 1 ) ,
    CREATECOUNTER_SIMULTANEOUS_ACTIVE_COUNTERS_EXHAUSTED   = ( CREATECOUNTER_OUTOFRANGE_COUNTER + 1 ) ,
    CREATECOUNTER_UNSUPPORTED_WELLKNOWN_COUNTER    = ( CREATECOUNTER_SIMULTANEOUS_ACTIVE_COUNTERS_EXHAUSTED + 1 ) ,
    CREATECOUNTER_OUTOFMEMORY_RETURN   = ( CREATECOUNTER_UNSUPPORTED_WELLKNOWN_COUNTER + 1 ) ,
    CREATECOUNTER_NONEXCLUSIVE_RETURN  = ( CREATECOUNTER_OUTOFMEMORY_RETURN + 1 ) ,
    CREATECOUNTER_NULLDESC = ( CREATECOUNTER_NONEXCLUSIVE_RETURN + 1 ) ,
    CHECKCOUNTER_OUTOFRANGE_COUNTER    = ( CREATECOUNTER_NULLDESC + 1 ) ,
    CHECKCOUNTER_UNSUPPORTED_WELLKNOWN_COUNTER = ( CHECKCOUNTER_OUTOFRANGE_COUNTER + 1 ) ,
    SETPREDICATION_INVALID_PREDICATE_STATE = ( CHECKCOUNTER_UNSUPPORTED_WELLKNOWN_COUNTER + 1 ) ,
    QUERY_BEGIN_UNSUPPORTED    = ( SETPREDICATION_INVALID_PREDICATE_STATE + 1 ) ,
    PREDICATE_BEGIN_DURING_PREDICATION = ( QUERY_BEGIN_UNSUPPORTED + 1 ) ,
    QUERY_BEGIN_DUPLICATE  = ( PREDICATE_BEGIN_DURING_PREDICATION + 1 ) ,
    QUERY_BEGIN_ABANDONING_PREVIOUS_RESULTS    = ( QUERY_BEGIN_DUPLICATE + 1 ) ,
    PREDICATE_END_DURING_PREDICATION   = ( QUERY_BEGIN_ABANDONING_PREVIOUS_RESULTS + 1 ) ,
    QUERY_END_ABANDONING_PREVIOUS_RESULTS  = ( PREDICATE_END_DURING_PREDICATION + 1 ) ,
    QUERY_END_WITHOUT_BEGIN    = ( QUERY_END_ABANDONING_PREVIOUS_RESULTS + 1 ) ,
    QUERY_GETDATA_INVALID_DATASIZE = ( QUERY_END_WITHOUT_BEGIN + 1 ) ,
    QUERY_GETDATA_INVALID_FLAGS    = ( QUERY_GETDATA_INVALID_DATASIZE + 1 ) ,
    QUERY_GETDATA_INVALID_CALL = ( QUERY_GETDATA_INVALID_FLAGS + 1 ) ,
    DEVICE_DRAW_PS_OUTPUT_TYPE_MISMATCH    = ( QUERY_GETDATA_INVALID_CALL + 1 ) ,
    DEVICE_DRAW_RESOURCE_FORMAT_GATHER_UNSUPPORTED = ( DEVICE_DRAW_PS_OUTPUT_TYPE_MISMATCH + 1 ) ,
    DEVICE_DRAW_INVALID_USE_OF_CENTER_MULTISAMPLE_PATTERN  = ( DEVICE_DRAW_RESOURCE_FORMAT_GATHER_UNSUPPORTED + 1 ) ,
    DEVICE_IASETVERTEXBUFFERS_STRIDE_TOO_LARGE = ( DEVICE_DRAW_INVALID_USE_OF_CENTER_MULTISAMPLE_PATTERN + 1 ) ,
    DEVICE_IASETVERTEXBUFFERS_INVALIDRANGE = ( DEVICE_IASETVERTEXBUFFERS_STRIDE_TOO_LARGE + 1 ) ,
    CREATEINPUTLAYOUT_EMPTY_LAYOUT = ( DEVICE_IASETVERTEXBUFFERS_INVALIDRANGE + 1 ) ,
    DEVICE_DRAW_RESOURCE_SAMPLE_COUNT_MISMATCH = ( CREATEINPUTLAYOUT_EMPTY_LAYOUT + 1 ) ,
    LIVE_OBJECT_SUMMARY    = ( DEVICE_DRAW_RESOURCE_SAMPLE_COUNT_MISMATCH + 1 ) ,
    LIVE_BUFFER    = ( LIVE_OBJECT_SUMMARY + 1 ) ,
    LIVE_TEXTURE1D = ( LIVE_BUFFER + 1 ) ,
    LIVE_TEXTURE2D = ( LIVE_TEXTURE1D + 1 ) ,
    LIVE_TEXTURE3D = ( LIVE_TEXTURE2D + 1 ) ,
    LIVE_SHADERRESOURCEVIEW    = ( LIVE_TEXTURE3D + 1 ) ,
    LIVE_RENDERTARGETVIEW  = ( LIVE_SHADERRESOURCEVIEW + 1 ) ,
    LIVE_DEPTHSTENCILVIEW  = ( LIVE_RENDERTARGETVIEW + 1 ) ,
    LIVE_VERTEXSHADER  = ( LIVE_DEPTHSTENCILVIEW + 1 ) ,
    LIVE_GEOMETRYSHADER    = ( LIVE_VERTEXSHADER + 1 ) ,
    LIVE_PIXELSHADER   = ( LIVE_GEOMETRYSHADER + 1 ) ,
    LIVE_INPUTLAYOUT   = ( LIVE_PIXELSHADER + 1 ) ,
    LIVE_SAMPLER   = ( LIVE_INPUTLAYOUT + 1 ) ,
    LIVE_BLENDSTATE    = ( LIVE_SAMPLER + 1 ) ,
    LIVE_DEPTHSTENCILSTATE = ( LIVE_BLENDSTATE + 1 ) ,
    LIVE_RASTERIZERSTATE   = ( LIVE_DEPTHSTENCILSTATE + 1 ) ,
    LIVE_QUERY = ( LIVE_RASTERIZERSTATE + 1 ) ,
    LIVE_PREDICATE = ( LIVE_QUERY + 1 ) ,
    LIVE_COUNTER   = ( LIVE_PREDICATE + 1 ) ,
    LIVE_DEVICE    = ( LIVE_COUNTER + 1 ) ,
    LIVE_SWAPCHAIN = ( LIVE_DEVICE + 1 ) ,
    D3D10_MESSAGES_END = ( LIVE_SWAPCHAIN + 1 ) ,
    D3D10L9_MESSAGES_START = 0x100000,
    CREATEDEPTHSTENCILSTATE_STENCIL_NO_TWO_SIDED   = ( D3D10L9_MESSAGES_START + 1 ) ,
    CREATERASTERIZERSTATE_DepthBiasClamp_NOT_SUPPORTED = ( CREATEDEPTHSTENCILSTATE_STENCIL_NO_TWO_SIDED + 1 ) ,
    CREATESAMPLERSTATE_NO_COMPARISON_SUPPORT   = ( CREATERASTERIZERSTATE_DepthBiasClamp_NOT_SUPPORTED + 1 ) ,
    CREATESAMPLERSTATE_EXCESSIVE_ANISOTROPY    = ( CREATESAMPLERSTATE_NO_COMPARISON_SUPPORT + 1 ) ,
    CREATESAMPLERSTATE_BORDER_OUT_OF_RANGE = ( CREATESAMPLERSTATE_EXCESSIVE_ANISOTROPY + 1 ) ,
    VSSETSAMPLERS_NOT_SUPPORTED    = ( CREATESAMPLERSTATE_BORDER_OUT_OF_RANGE + 1 ) ,
    VSSETSAMPLERS_TOO_MANY_SAMPLERS    = ( VSSETSAMPLERS_NOT_SUPPORTED + 1 ) ,
    PSSETSAMPLERS_TOO_MANY_SAMPLERS    = ( VSSETSAMPLERS_TOO_MANY_SAMPLERS + 1 ) ,
    CREATERESOURCE_NO_ARRAYS   = ( PSSETSAMPLERS_TOO_MANY_SAMPLERS + 1 ) ,
    CREATERESOURCE_NO_VB_AND_IB_BIND   = ( CREATERESOURCE_NO_ARRAYS + 1 ) ,
    CREATERESOURCE_NO_TEXTURE_1D   = ( CREATERESOURCE_NO_VB_AND_IB_BIND + 1 ) ,
    CREATERESOURCE_DIMENSION_OUT_OF_RANGE  = ( CREATERESOURCE_NO_TEXTURE_1D + 1 ) ,
    CREATERESOURCE_NOT_BINDABLE_AS_SHADER_RESOURCE = ( CREATERESOURCE_DIMENSION_OUT_OF_RANGE + 1 ) ,
    OMSETRENDERTARGETS_TOO_MANY_RENDER_TARGETS = ( CREATERESOURCE_NOT_BINDABLE_AS_SHADER_RESOURCE + 1 ) ,
    OMSETRENDERTARGETS_NO_DIFFERING_BIT_DEPTHS = ( OMSETRENDERTARGETS_TOO_MANY_RENDER_TARGETS + 1 ) ,
    IASETVERTEXBUFFERS_BAD_BUFFER_INDEX    = ( OMSETRENDERTARGETS_NO_DIFFERING_BIT_DEPTHS + 1 ) ,
    DEVICE_RSSETVIEWPORTS_TOO_MANY_VIEWPORTS   = ( IASETVERTEXBUFFERS_BAD_BUFFER_INDEX + 1 ) ,
    DEVICE_IASETPRIMITIVETOPOLOGY_ADJACENCY_UNSUPPORTED    = ( DEVICE_RSSETVIEWPORTS_TOO_MANY_VIEWPORTS + 1 ) ,
    DEVICE_RSSETSCISSORRECTS_TOO_MANY_SCISSORS = ( DEVICE_IASETPRIMITIVETOPOLOGY_ADJACENCY_UNSUPPORTED + 1 ) ,
    COPYRESOURCE_ONLY_TEXTURE_2D_WITHIN_GPU_MEMORY = ( DEVICE_RSSETSCISSORRECTS_TOO_MANY_SCISSORS + 1 ) ,
    COPYRESOURCE_NO_TEXTURE_3D_READBACK    = ( COPYRESOURCE_ONLY_TEXTURE_2D_WITHIN_GPU_MEMORY + 1 ) ,
    COPYRESOURCE_NO_TEXTURE_ONLY_READBACK  = ( COPYRESOURCE_NO_TEXTURE_3D_READBACK + 1 ) ,
    CREATEINPUTLAYOUT_UNSUPPORTED_FORMAT   = ( COPYRESOURCE_NO_TEXTURE_ONLY_READBACK + 1 ) ,
    CREATEBLENDSTATE_NO_ALPHA_TO_COVERAGE  = ( CREATEINPUTLAYOUT_UNSUPPORTED_FORMAT + 1 ) ,
    CREATERASTERIZERSTATE_DepthClipEnable_MUST_BE_TRUE = ( CREATEBLENDSTATE_NO_ALPHA_TO_COVERAGE + 1 ) ,
    DRAWINDEXED_STARTINDEXLOCATION_MUST_BE_POSITIVE    = ( CREATERASTERIZERSTATE_DepthClipEnable_MUST_BE_TRUE + 1 ) ,
    CREATESHADERRESOURCEVIEW_MUST_USE_LOWEST_LOD   = ( DRAWINDEXED_STARTINDEXLOCATION_MUST_BE_POSITIVE + 1 ) ,
    CREATESAMPLERSTATE_MINLOD_MUST_NOT_BE_FRACTIONAL   = ( CREATESHADERRESOURCEVIEW_MUST_USE_LOWEST_LOD + 1 ) ,
    CREATESAMPLERSTATE_MAXLOD_MUST_BE_FLT_MAX  = ( CREATESAMPLERSTATE_MINLOD_MUST_NOT_BE_FRACTIONAL + 1 ) ,
    CREATESHADERRESOURCEVIEW_FIRSTARRAYSLICE_MUST_BE_ZERO  = ( CREATESAMPLERSTATE_MAXLOD_MUST_BE_FLT_MAX + 1 ) ,
    CREATESHADERRESOURCEVIEW_CUBES_MUST_HAVE_6_SIDES   = ( CREATESHADERRESOURCEVIEW_FIRSTARRAYSLICE_MUST_BE_ZERO + 1 ) ,
    CREATERESOURCE_NOT_BINDABLE_AS_RENDER_TARGET   = ( CREATESHADERRESOURCEVIEW_CUBES_MUST_HAVE_6_SIDES + 1 ) ,
    CREATERESOURCE_NO_DWORD_INDEX_BUFFER   = ( CREATERESOURCE_NOT_BINDABLE_AS_RENDER_TARGET + 1 ) ,
    CREATERESOURCE_MSAA_PRECLUDES_SHADER_RESOURCE  = ( CREATERESOURCE_NO_DWORD_INDEX_BUFFER + 1 ) ,
    CREATERESOURCE_PRESENTATION_PRECLUDES_SHADER_RESOURCE  = ( CREATERESOURCE_MSAA_PRECLUDES_SHADER_RESOURCE + 1 ) ,
    CREATEBLENDSTATE_NO_INDEPENDENT_BLEND_ENABLE   = ( CREATERESOURCE_PRESENTATION_PRECLUDES_SHADER_RESOURCE + 1 ) ,
    CREATEBLENDSTATE_NO_INDEPENDENT_WRITE_MASKS    = ( CREATEBLENDSTATE_NO_INDEPENDENT_BLEND_ENABLE + 1 ) ,
    CREATERESOURCE_NO_STREAM_OUT   = ( CREATEBLENDSTATE_NO_INDEPENDENT_WRITE_MASKS + 1 ) ,
    CREATERESOURCE_ONLY_VB_IB_FOR_BUFFERS  = ( CREATERESOURCE_NO_STREAM_OUT + 1 ) ,
    CREATERESOURCE_NO_AUTOGEN_FOR_VOLUMES  = ( CREATERESOURCE_ONLY_VB_IB_FOR_BUFFERS + 1 ) ,
    CREATERESOURCE_DXGI_FORMAT_R8G8B8A8_CANNOT_BE_SHARED   = ( CREATERESOURCE_NO_AUTOGEN_FOR_VOLUMES + 1 ) ,
    VSSHADERRESOURCES_NOT_SUPPORTED    = ( CREATERESOURCE_DXGI_FORMAT_R8G8B8A8_CANNOT_BE_SHARED + 1 ) ,
    GEOMETRY_SHADER_NOT_SUPPORTED  = ( VSSHADERRESOURCES_NOT_SUPPORTED + 1 ) ,
    STREAM_OUT_NOT_SUPPORTED   = ( GEOMETRY_SHADER_NOT_SUPPORTED + 1 ) ,
    TEXT_FILTER_NOT_SUPPORTED  = ( STREAM_OUT_NOT_SUPPORTED + 1 ) ,
    CREATEBLENDSTATE_NO_SEPARATE_ALPHA_BLEND   = ( TEXT_FILTER_NOT_SUPPORTED + 1 ) ,
    CREATEBLENDSTATE_NO_MRT_BLEND  = ( CREATEBLENDSTATE_NO_SEPARATE_ALPHA_BLEND + 1 ) ,
    CREATEBLENDSTATE_OPERATION_NOT_SUPPORTED   = ( CREATEBLENDSTATE_NO_MRT_BLEND + 1 ) ,
    CREATESAMPLERSTATE_NO_MIRRORONCE   = ( CREATEBLENDSTATE_OPERATION_NOT_SUPPORTED + 1 ) ,
    DRAWINSTANCED_NOT_SUPPORTED    = ( CREATESAMPLERSTATE_NO_MIRRORONCE + 1 ) ,
    DRAWINDEXEDINSTANCED_NOT_SUPPORTED_BELOW_9_3   = ( DRAWINSTANCED_NOT_SUPPORTED + 1 ) ,
    DRAWINDEXED_POINTLIST_UNSUPPORTED  = ( DRAWINDEXEDINSTANCED_NOT_SUPPORTED_BELOW_9_3 + 1 ) ,
    SETBLENDSTATE_SAMPLE_MASK_CANNOT_BE_ZERO   = ( DRAWINDEXED_POINTLIST_UNSUPPORTED + 1 ) ,
    CREATERESOURCE_DIMENSION_EXCEEDS_FEATURE_LEVEL_DEFINITION  = ( SETBLENDSTATE_SAMPLE_MASK_CANNOT_BE_ZERO + 1 ) ,
    CREATERESOURCE_ONLY_SINGLE_MIP_LEVEL_DEPTH_STENCIL_SUPPORTED   = ( CREATERESOURCE_DIMENSION_EXCEEDS_FEATURE_LEVEL_DEFINITION + 1 ) ,
    DEVICE_RSSETSCISSORRECTS_NEGATIVESCISSOR   = ( CREATERESOURCE_ONLY_SINGLE_MIP_LEVEL_DEPTH_STENCIL_SUPPORTED + 1 ) ,
    SLOT_ZERO_MUST_BE_D3D10_INPUT_PER_VERTEX_DATA  = ( DEVICE_RSSETSCISSORRECTS_NEGATIVESCISSOR + 1 ) ,
    CREATERESOURCE_NON_POW_2_MIPMAP    = ( SLOT_ZERO_MUST_BE_D3D10_INPUT_PER_VERTEX_DATA + 1 ) ,
    CREATESAMPLERSTATE_BORDER_NOT_SUPPORTED    = ( CREATERESOURCE_NON_POW_2_MIPMAP + 1 ) ,
    OMSETRENDERTARGETS_NO_SRGB_MRT = ( CREATESAMPLERSTATE_BORDER_NOT_SUPPORTED + 1 ) ,
    COPYRESOURCE_NO_3D_MISMATCHED_UPDATES  = ( OMSETRENDERTARGETS_NO_SRGB_MRT + 1 ) ,
    D3D10L9_MESSAGES_END   = ( COPYRESOURCE_NO_3D_MISMATCHED_UPDATES + 1 ) ,
    D3D11_MESSAGES_START   = 0x200000,
    CREATEDEPTHSTENCILVIEW_INVALIDFLAGS    = ( D3D11_MESSAGES_START + 1 ) ,
    CREATEVERTEXSHADER_INVALIDCLASSLINKAGE = ( CREATEDEPTHSTENCILVIEW_INVALIDFLAGS + 1 ) ,
    CREATEGEOMETRYSHADER_INVALIDCLASSLINKAGE   = ( CREATEVERTEXSHADER_INVALIDCLASSLINKAGE + 1 ) ,
    CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_INVALIDNUMSTREAMS = ( CREATEGEOMETRYSHADER_INVALIDCLASSLINKAGE + 1 ) ,
    CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_INVALIDSTREAMTORASTERIZER = ( CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_INVALIDNUMSTREAMS + 1 ) ,
    CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_UNEXPECTEDSTREAMS = ( CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_INVALIDSTREAMTORASTERIZER + 1 ) ,
    CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_INVALIDCLASSLINKAGE   = ( CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_UNEXPECTEDSTREAMS + 1 ) ,
    CREATEPIXELSHADER_INVALIDCLASSLINKAGE  = ( CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_INVALIDCLASSLINKAGE + 1 ) ,
    CREATEDEFERREDCONTEXT_INVALID_COMMANDLISTFLAGS = ( CREATEPIXELSHADER_INVALIDCLASSLINKAGE + 1 ) ,
    CREATEDEFERREDCONTEXT_SINGLETHREADED   = ( CREATEDEFERREDCONTEXT_INVALID_COMMANDLISTFLAGS + 1 ) ,
    CREATEDEFERREDCONTEXT_INVALIDARG_RETURN    = ( CREATEDEFERREDCONTEXT_SINGLETHREADED + 1 ) ,
    CREATEDEFERREDCONTEXT_INVALID_CALL_RETURN  = ( CREATEDEFERREDCONTEXT_INVALIDARG_RETURN + 1 ) ,
    CREATEDEFERREDCONTEXT_OUTOFMEMORY_RETURN   = ( CREATEDEFERREDCONTEXT_INVALID_CALL_RETURN + 1 ) ,
    FINISHDISPLAYLIST_ONIMMEDIATECONTEXT   = ( CREATEDEFERREDCONTEXT_OUTOFMEMORY_RETURN + 1 ) ,
    FINISHDISPLAYLIST_OUTOFMEMORY_RETURN   = ( FINISHDISPLAYLIST_ONIMMEDIATECONTEXT + 1 ) ,
    FINISHDISPLAYLIST_INVALID_CALL_RETURN  = ( FINISHDISPLAYLIST_OUTOFMEMORY_RETURN + 1 ) ,
    CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_INVALIDSTREAM = ( FINISHDISPLAYLIST_INVALID_CALL_RETURN + 1 ) ,
    CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_UNEXPECTEDENTRIES = ( CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_INVALIDSTREAM + 1 ) ,
    CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_UNEXPECTEDSTRIDES = ( CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_UNEXPECTEDENTRIES + 1 ) ,
    CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_INVALIDNUMSTRIDES = ( CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_UNEXPECTEDSTRIDES + 1 ) ,
    DEVICE_HSSETSHADERRESOURCES_HAZARD = ( CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_INVALIDNUMSTRIDES + 1 ) ,
    DEVICE_HSSETCONSTANTBUFFERS_HAZARD = ( DEVICE_HSSETSHADERRESOURCES_HAZARD + 1 ) ,
    HSSETSHADERRESOURCES_UNBINDDELETINGOBJECT  = ( DEVICE_HSSETCONSTANTBUFFERS_HAZARD + 1 ) ,
    HSSETCONSTANTBUFFERS_UNBINDDELETINGOBJECT  = ( HSSETSHADERRESOURCES_UNBINDDELETINGOBJECT + 1 ) ,
    CREATEHULLSHADER_INVALIDCALL   = ( HSSETCONSTANTBUFFERS_UNBINDDELETINGOBJECT + 1 ) ,
    CREATEHULLSHADER_OUTOFMEMORY   = ( CREATEHULLSHADER_INVALIDCALL + 1 ) ,
    CREATEHULLSHADER_INVALIDSHADERBYTECODE = ( CREATEHULLSHADER_OUTOFMEMORY + 1 ) ,
    CREATEHULLSHADER_INVALIDSHADERTYPE = ( CREATEHULLSHADER_INVALIDSHADERBYTECODE + 1 ) ,
    CREATEHULLSHADER_INVALIDCLASSLINKAGE   = ( CREATEHULLSHADER_INVALIDSHADERTYPE + 1 ) ,
    DEVICE_HSSETSHADERRESOURCES_VIEWS_EMPTY    = ( CREATEHULLSHADER_INVALIDCLASSLINKAGE + 1 ) ,
    HSSETCONSTANTBUFFERS_INVALIDBUFFER = ( DEVICE_HSSETSHADERRESOURCES_VIEWS_EMPTY + 1 ) ,
    DEVICE_HSSETCONSTANTBUFFERS_BUFFERS_EMPTY  = ( HSSETCONSTANTBUFFERS_INVALIDBUFFER + 1 ) ,
    DEVICE_HSSETSAMPLERS_SAMPLERS_EMPTY    = ( DEVICE_HSSETCONSTANTBUFFERS_BUFFERS_EMPTY + 1 ) ,
    DEVICE_HSGETSHADERRESOURCES_VIEWS_EMPTY    = ( DEVICE_HSSETSAMPLERS_SAMPLERS_EMPTY + 1 ) ,
    DEVICE_HSGETCONSTANTBUFFERS_BUFFERS_EMPTY  = ( DEVICE_HSGETSHADERRESOURCES_VIEWS_EMPTY + 1 ) ,
    DEVICE_HSGETSAMPLERS_SAMPLERS_EMPTY    = ( DEVICE_HSGETCONSTANTBUFFERS_BUFFERS_EMPTY + 1 ) ,
    DEVICE_DSSETSHADERRESOURCES_HAZARD = ( DEVICE_HSGETSAMPLERS_SAMPLERS_EMPTY + 1 ) ,
    DEVICE_DSSETCONSTANTBUFFERS_HAZARD = ( DEVICE_DSSETSHADERRESOURCES_HAZARD + 1 ) ,
    DSSETSHADERRESOURCES_UNBINDDELETINGOBJECT  = ( DEVICE_DSSETCONSTANTBUFFERS_HAZARD + 1 ) ,
    DSSETCONSTANTBUFFERS_UNBINDDELETINGOBJECT  = ( DSSETSHADERRESOURCES_UNBINDDELETINGOBJECT + 1 ) ,
    CREATEDOMAINSHADER_INVALIDCALL = ( DSSETCONSTANTBUFFERS_UNBINDDELETINGOBJECT + 1 ) ,
    CREATEDOMAINSHADER_OUTOFMEMORY = ( CREATEDOMAINSHADER_INVALIDCALL + 1 ) ,
    CREATEDOMAINSHADER_INVALIDSHADERBYTECODE   = ( CREATEDOMAINSHADER_OUTOFMEMORY + 1 ) ,
    CREATEDOMAINSHADER_INVALIDSHADERTYPE   = ( CREATEDOMAINSHADER_INVALIDSHADERBYTECODE + 1 ) ,
    CREATEDOMAINSHADER_INVALIDCLASSLINKAGE = ( CREATEDOMAINSHADER_INVALIDSHADERTYPE + 1 ) ,
    DEVICE_DSSETSHADERRESOURCES_VIEWS_EMPTY    = ( CREATEDOMAINSHADER_INVALIDCLASSLINKAGE + 1 ) ,
    DSSETCONSTANTBUFFERS_INVALIDBUFFER = ( DEVICE_DSSETSHADERRESOURCES_VIEWS_EMPTY + 1 ) ,
    DEVICE_DSSETCONSTANTBUFFERS_BUFFERS_EMPTY  = ( DSSETCONSTANTBUFFERS_INVALIDBUFFER + 1 ) ,
    DEVICE_DSSETSAMPLERS_SAMPLERS_EMPTY    = ( DEVICE_DSSETCONSTANTBUFFERS_BUFFERS_EMPTY + 1 ) ,
    DEVICE_DSGETSHADERRESOURCES_VIEWS_EMPTY    = ( DEVICE_DSSETSAMPLERS_SAMPLERS_EMPTY + 1 ) ,
    DEVICE_DSGETCONSTANTBUFFERS_BUFFERS_EMPTY  = ( DEVICE_DSGETSHADERRESOURCES_VIEWS_EMPTY + 1 ) ,
    DEVICE_DSGETSAMPLERS_SAMPLERS_EMPTY    = ( DEVICE_DSGETCONSTANTBUFFERS_BUFFERS_EMPTY + 1 ) ,
    DEVICE_DRAW_HS_XOR_DS_MISMATCH = ( DEVICE_DSGETSAMPLERS_SAMPLERS_EMPTY + 1 ) ,
    DEFERRED_CONTEXT_REMOVAL_PROCESS_AT_FAULT  = ( DEVICE_DRAW_HS_XOR_DS_MISMATCH + 1 ) ,
    DEVICE_DRAWINDIRECT_INVALID_ARG_BUFFER = ( DEFERRED_CONTEXT_REMOVAL_PROCESS_AT_FAULT + 1 ) ,
    DEVICE_DRAWINDIRECT_OFFSET_UNALIGNED   = ( DEVICE_DRAWINDIRECT_INVALID_ARG_BUFFER + 1 ) ,
    DEVICE_DRAWINDIRECT_OFFSET_OVERFLOW    = ( DEVICE_DRAWINDIRECT_OFFSET_UNALIGNED + 1 ) ,
    RESOURCE_MAP_INVALIDMAPTYPE    = ( DEVICE_DRAWINDIRECT_OFFSET_OVERFLOW + 1 ) ,
    RESOURCE_MAP_INVALIDSUBRESOURCE    = ( RESOURCE_MAP_INVALIDMAPTYPE + 1 ) ,
    RESOURCE_MAP_INVALIDFLAGS  = ( RESOURCE_MAP_INVALIDSUBRESOURCE + 1 ) ,
    RESOURCE_MAP_ALREADYMAPPED = ( RESOURCE_MAP_INVALIDFLAGS + 1 ) ,
    RESOURCE_MAP_DEVICEREMOVED_RETURN  = ( RESOURCE_MAP_ALREADYMAPPED + 1 ) ,
    RESOURCE_MAP_OUTOFMEMORY_RETURN    = ( RESOURCE_MAP_DEVICEREMOVED_RETURN + 1 ) ,
    RESOURCE_MAP_WITHOUT_INITIAL_DISCARD   = ( RESOURCE_MAP_OUTOFMEMORY_RETURN + 1 ) ,
    RESOURCE_UNMAP_INVALIDSUBRESOURCE  = ( RESOURCE_MAP_WITHOUT_INITIAL_DISCARD + 1 ) ,
    RESOURCE_UNMAP_NOTMAPPED   = ( RESOURCE_UNMAP_INVALIDSUBRESOURCE + 1 ) ,
    DEVICE_DRAW_RASTERIZING_CONTROL_POINTS = ( RESOURCE_UNMAP_NOTMAPPED + 1 ) ,
    DEVICE_IASETPRIMITIVETOPOLOGY_TOPOLOGY_UNSUPPORTED = ( DEVICE_DRAW_RASTERIZING_CONTROL_POINTS + 1 ) ,
    DEVICE_DRAW_HS_DS_SIGNATURE_MISMATCH   = ( DEVICE_IASETPRIMITIVETOPOLOGY_TOPOLOGY_UNSUPPORTED + 1 ) ,
    DEVICE_DRAW_HULL_SHADER_INPUT_TOPOLOGY_MISMATCH    = ( DEVICE_DRAW_HS_DS_SIGNATURE_MISMATCH + 1 ) ,
    DEVICE_DRAW_HS_DS_CONTROL_POINT_COUNT_MISMATCH = ( DEVICE_DRAW_HULL_SHADER_INPUT_TOPOLOGY_MISMATCH + 1 ) ,
    DEVICE_DRAW_HS_DS_TESSELLATOR_DOMAIN_MISMATCH  = ( DEVICE_DRAW_HS_DS_CONTROL_POINT_COUNT_MISMATCH + 1 ) ,
    CREATE_CONTEXT = ( DEVICE_DRAW_HS_DS_TESSELLATOR_DOMAIN_MISMATCH + 1 ) ,
    LIVE_CONTEXT   = ( CREATE_CONTEXT + 1 ) ,
    DESTROY_CONTEXT    = ( LIVE_CONTEXT + 1 ) ,
    CREATE_BUFFER  = ( DESTROY_CONTEXT + 1 ) ,
    LIVE_BUFFER_WIN7   = ( CREATE_BUFFER + 1 ) ,
    DESTROY_BUFFER = ( LIVE_BUFFER_WIN7 + 1 ) ,
    CREATE_TEXTURE1D   = ( DESTROY_BUFFER + 1 ) ,
    LIVE_TEXTURE1D_WIN7    = ( CREATE_TEXTURE1D + 1 ) ,
    DESTROY_TEXTURE1D  = ( LIVE_TEXTURE1D_WIN7 + 1 ) ,
    CREATE_TEXTURE2D   = ( DESTROY_TEXTURE1D + 1 ) ,
    LIVE_TEXTURE2D_WIN7    = ( CREATE_TEXTURE2D + 1 ) ,
    DESTROY_TEXTURE2D  = ( LIVE_TEXTURE2D_WIN7 + 1 ) ,
    CREATE_TEXTURE3D   = ( DESTROY_TEXTURE2D + 1 ) ,
    LIVE_TEXTURE3D_WIN7    = ( CREATE_TEXTURE3D + 1 ) ,
    DESTROY_TEXTURE3D  = ( LIVE_TEXTURE3D_WIN7 + 1 ) ,
    CREATE_SHADERRESOURCEVIEW  = ( DESTROY_TEXTURE3D + 1 ) ,
    LIVE_SHADERRESOURCEVIEW_WIN7   = ( CREATE_SHADERRESOURCEVIEW + 1 ) ,
    DESTROY_SHADERRESOURCEVIEW = ( LIVE_SHADERRESOURCEVIEW_WIN7 + 1 ) ,
    CREATE_RENDERTARGETVIEW    = ( DESTROY_SHADERRESOURCEVIEW + 1 ) ,
    LIVE_RENDERTARGETVIEW_WIN7 = ( CREATE_RENDERTARGETVIEW + 1 ) ,
    DESTROY_RENDERTARGETVIEW   = ( LIVE_RENDERTARGETVIEW_WIN7 + 1 ) ,
    CREATE_DEPTHSTENCILVIEW    = ( DESTROY_RENDERTARGETVIEW + 1 ) ,
    LIVE_DEPTHSTENCILVIEW_WIN7 = ( CREATE_DEPTHSTENCILVIEW + 1 ) ,
    DESTROY_DEPTHSTENCILVIEW   = ( LIVE_DEPTHSTENCILVIEW_WIN7 + 1 ) ,
    CREATE_VERTEXSHADER    = ( DESTROY_DEPTHSTENCILVIEW + 1 ) ,
    LIVE_VERTEXSHADER_WIN7 = ( CREATE_VERTEXSHADER + 1 ) ,
    DESTROY_VERTEXSHADER   = ( LIVE_VERTEXSHADER_WIN7 + 1 ) ,
    CREATE_HULLSHADER  = ( DESTROY_VERTEXSHADER + 1 ) ,
    LIVE_HULLSHADER    = ( CREATE_HULLSHADER + 1 ) ,
    DESTROY_HULLSHADER = ( LIVE_HULLSHADER + 1 ) ,
    CREATE_DOMAINSHADER    = ( DESTROY_HULLSHADER + 1 ) ,
    LIVE_DOMAINSHADER  = ( CREATE_DOMAINSHADER + 1 ) ,
    DESTROY_DOMAINSHADER   = ( LIVE_DOMAINSHADER + 1 ) ,
    CREATE_GEOMETRYSHADER  = ( DESTROY_DOMAINSHADER + 1 ) ,
    LIVE_GEOMETRYSHADER_WIN7   = ( CREATE_GEOMETRYSHADER + 1 ) ,
    DESTROY_GEOMETRYSHADER = ( LIVE_GEOMETRYSHADER_WIN7 + 1 ) ,
    CREATE_PIXELSHADER = ( DESTROY_GEOMETRYSHADER + 1 ) ,
    LIVE_PIXELSHADER_WIN7  = ( CREATE_PIXELSHADER + 1 ) ,
    DESTROY_PIXELSHADER    = ( LIVE_PIXELSHADER_WIN7 + 1 ) ,
    CREATE_INPUTLAYOUT = ( DESTROY_PIXELSHADER + 1 ) ,
    LIVE_INPUTLAYOUT_WIN7  = ( CREATE_INPUTLAYOUT + 1 ) ,
    DESTROY_INPUTLAYOUT    = ( LIVE_INPUTLAYOUT_WIN7 + 1 ) ,
    CREATE_SAMPLER = ( DESTROY_INPUTLAYOUT + 1 ) ,
    LIVE_SAMPLER_WIN7  = ( CREATE_SAMPLER + 1 ) ,
    DESTROY_SAMPLER    = ( LIVE_SAMPLER_WIN7 + 1 ) ,
    CREATE_BLENDSTATE  = ( DESTROY_SAMPLER + 1 ) ,
    LIVE_BLENDSTATE_WIN7   = ( CREATE_BLENDSTATE + 1 ) ,
    DESTROY_BLENDSTATE = ( LIVE_BLENDSTATE_WIN7 + 1 ) ,
    CREATE_DEPTHSTENCILSTATE   = ( DESTROY_BLENDSTATE + 1 ) ,
    LIVE_DEPTHSTENCILSTATE_WIN7    = ( CREATE_DEPTHSTENCILSTATE + 1 ) ,
    DESTROY_DEPTHSTENCILSTATE  = ( LIVE_DEPTHSTENCILSTATE_WIN7 + 1 ) ,
    CREATE_RASTERIZERSTATE = ( DESTROY_DEPTHSTENCILSTATE + 1 ) ,
    LIVE_RASTERIZERSTATE_WIN7  = ( CREATE_RASTERIZERSTATE + 1 ) ,
    DESTROY_RASTERIZERSTATE    = ( LIVE_RASTERIZERSTATE_WIN7 + 1 ) ,
    CREATE_QUERY   = ( DESTROY_RASTERIZERSTATE + 1 ) ,
    LIVE_QUERY_WIN7    = ( CREATE_QUERY + 1 ) ,
    DESTROY_QUERY  = ( LIVE_QUERY_WIN7 + 1 ) ,
    CREATE_PREDICATE   = ( DESTROY_QUERY + 1 ) ,
    LIVE_PREDICATE_WIN7    = ( CREATE_PREDICATE + 1 ) ,
    DESTROY_PREDICATE  = ( LIVE_PREDICATE_WIN7 + 1 ) ,
    CREATE_COUNTER = ( DESTROY_PREDICATE + 1 ) ,
    DESTROY_COUNTER    = ( CREATE_COUNTER + 1 ) ,
    CREATE_COMMANDLIST = ( DESTROY_COUNTER + 1 ) ,
    LIVE_COMMANDLIST   = ( CREATE_COMMANDLIST + 1 ) ,
    DESTROY_COMMANDLIST    = ( LIVE_COMMANDLIST + 1 ) ,
    CREATE_CLASSINSTANCE   = ( DESTROY_COMMANDLIST + 1 ) ,
    LIVE_CLASSINSTANCE = ( CREATE_CLASSINSTANCE + 1 ) ,
    DESTROY_CLASSINSTANCE  = ( LIVE_CLASSINSTANCE + 1 ) ,
    CREATE_CLASSLINKAGE    = ( DESTROY_CLASSINSTANCE + 1 ) ,
    LIVE_CLASSLINKAGE  = ( CREATE_CLASSLINKAGE + 1 ) ,
    DESTROY_CLASSLINKAGE   = ( LIVE_CLASSLINKAGE + 1 ) ,
    LIVE_DEVICE_WIN7   = ( DESTROY_CLASSLINKAGE + 1 ) ,
    LIVE_OBJECT_SUMMARY_WIN7   = ( LIVE_DEVICE_WIN7 + 1 ) ,
    CREATE_COMPUTESHADER   = ( LIVE_OBJECT_SUMMARY_WIN7 + 1 ) ,
    LIVE_COMPUTESHADER = ( CREATE_COMPUTESHADER + 1 ) ,
    DESTROY_COMPUTESHADER  = ( LIVE_COMPUTESHADER + 1 ) ,
    CREATE_UNORDEREDACCESSVIEW = ( DESTROY_COMPUTESHADER + 1 ) ,
    LIVE_UNORDEREDACCESSVIEW   = ( CREATE_UNORDEREDACCESSVIEW + 1 ) ,
    DESTROY_UNORDEREDACCESSVIEW    = ( LIVE_UNORDEREDACCESSVIEW + 1 ) ,
    DEVICE_SETSHADER_INTERFACES_FEATURELEVEL   = ( DESTROY_UNORDEREDACCESSVIEW + 1 ) ,
    DEVICE_SETSHADER_INTERFACE_COUNT_MISMATCH  = ( DEVICE_SETSHADER_INTERFACES_FEATURELEVEL + 1 ) ,
    DEVICE_SETSHADER_INVALID_INSTANCE  = ( DEVICE_SETSHADER_INTERFACE_COUNT_MISMATCH + 1 ) ,
    DEVICE_SETSHADER_INVALID_INSTANCE_INDEX    = ( DEVICE_SETSHADER_INVALID_INSTANCE + 1 ) ,
    DEVICE_SETSHADER_INVALID_INSTANCE_TYPE = ( DEVICE_SETSHADER_INVALID_INSTANCE_INDEX + 1 ) ,
    DEVICE_SETSHADER_INVALID_INSTANCE_DATA = ( DEVICE_SETSHADER_INVALID_INSTANCE_TYPE + 1 ) ,
    DEVICE_SETSHADER_UNBOUND_INSTANCE_DATA = ( DEVICE_SETSHADER_INVALID_INSTANCE_DATA + 1 ) ,
    DEVICE_SETSHADER_INSTANCE_DATA_BINDINGS    = ( DEVICE_SETSHADER_UNBOUND_INSTANCE_DATA + 1 ) ,
    DEVICE_CREATESHADER_CLASSLINKAGE_FULL  = ( DEVICE_SETSHADER_INSTANCE_DATA_BINDINGS + 1 ) ,
    DEVICE_CHECKFEATURESUPPORT_UNRECOGNIZED_FEATURE    = ( DEVICE_CREATESHADER_CLASSLINKAGE_FULL + 1 ) ,
    DEVICE_CHECKFEATURESUPPORT_MISMATCHED_DATA_SIZE    = ( DEVICE_CHECKFEATURESUPPORT_UNRECOGNIZED_FEATURE + 1 ) ,
    DEVICE_CHECKFEATURESUPPORT_INVALIDARG_RETURN   = ( DEVICE_CHECKFEATURESUPPORT_MISMATCHED_DATA_SIZE + 1 ) ,
    DEVICE_CSSETSHADERRESOURCES_HAZARD = ( DEVICE_CHECKFEATURESUPPORT_INVALIDARG_RETURN + 1 ) ,
    DEVICE_CSSETCONSTANTBUFFERS_HAZARD = ( DEVICE_CSSETSHADERRESOURCES_HAZARD + 1 ) ,
    CSSETSHADERRESOURCES_UNBINDDELETINGOBJECT  = ( DEVICE_CSSETCONSTANTBUFFERS_HAZARD + 1 ) ,
    CSSETCONSTANTBUFFERS_UNBINDDELETINGOBJECT  = ( CSSETSHADERRESOURCES_UNBINDDELETINGOBJECT + 1 ) ,
    CREATECOMPUTESHADER_INVALIDCALL    = ( CSSETCONSTANTBUFFERS_UNBINDDELETINGOBJECT + 1 ) ,
    CREATECOMPUTESHADER_OUTOFMEMORY    = ( CREATECOMPUTESHADER_INVALIDCALL + 1 ) ,
    CREATECOMPUTESHADER_INVALIDSHADERBYTECODE  = ( CREATECOMPUTESHADER_OUTOFMEMORY + 1 ) ,
    CREATECOMPUTESHADER_INVALIDSHADERTYPE  = ( CREATECOMPUTESHADER_INVALIDSHADERBYTECODE + 1 ) ,
    CREATECOMPUTESHADER_INVALIDCLASSLINKAGE    = ( CREATECOMPUTESHADER_INVALIDSHADERTYPE + 1 ) ,
    DEVICE_CSSETSHADERRESOURCES_VIEWS_EMPTY    = ( CREATECOMPUTESHADER_INVALIDCLASSLINKAGE + 1 ) ,
    CSSETCONSTANTBUFFERS_INVALIDBUFFER = ( DEVICE_CSSETSHADERRESOURCES_VIEWS_EMPTY + 1 ) ,
    DEVICE_CSSETCONSTANTBUFFERS_BUFFERS_EMPTY  = ( CSSETCONSTANTBUFFERS_INVALIDBUFFER + 1 ) ,
    DEVICE_CSSETSAMPLERS_SAMPLERS_EMPTY    = ( DEVICE_CSSETCONSTANTBUFFERS_BUFFERS_EMPTY + 1 ) ,
    DEVICE_CSGETSHADERRESOURCES_VIEWS_EMPTY    = ( DEVICE_CSSETSAMPLERS_SAMPLERS_EMPTY + 1 ) ,
    DEVICE_CSGETCONSTANTBUFFERS_BUFFERS_EMPTY  = ( DEVICE_CSGETSHADERRESOURCES_VIEWS_EMPTY + 1 ) ,
    DEVICE_CSGETSAMPLERS_SAMPLERS_EMPTY    = ( DEVICE_CSGETCONSTANTBUFFERS_BUFFERS_EMPTY + 1 ) ,
    DEVICE_CREATEVERTEXSHADER_DOUBLEFLOATOPSNOTSUPPORTED   = ( DEVICE_CSGETSAMPLERS_SAMPLERS_EMPTY + 1 ) ,
    DEVICE_CREATEHULLSHADER_DOUBLEFLOATOPSNOTSUPPORTED = ( DEVICE_CREATEVERTEXSHADER_DOUBLEFLOATOPSNOTSUPPORTED + 1 ) ,
    DEVICE_CREATEDOMAINSHADER_DOUBLEFLOATOPSNOTSUPPORTED   = ( DEVICE_CREATEHULLSHADER_DOUBLEFLOATOPSNOTSUPPORTED + 1 ) ,
    DEVICE_CREATEGEOMETRYSHADER_DOUBLEFLOATOPSNOTSUPPORTED = ( DEVICE_CREATEDOMAINSHADER_DOUBLEFLOATOPSNOTSUPPORTED + 1 ) ,
    DEVICE_CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_DOUBLEFLOATOPSNOTSUPPORTED = ( DEVICE_CREATEGEOMETRYSHADER_DOUBLEFLOATOPSNOTSUPPORTED + 1 ) ,
    DEVICE_CREATEPIXELSHADER_DOUBLEFLOATOPSNOTSUPPORTED    = ( DEVICE_CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_DOUBLEFLOATOPSNOTSUPPORTED + 1 ) ,
    DEVICE_CREATECOMPUTESHADER_DOUBLEFLOATOPSNOTSUPPORTED  = ( DEVICE_CREATEPIXELSHADER_DOUBLEFLOATOPSNOTSUPPORTED + 1 ) ,
    CREATEBUFFER_INVALIDSTRUCTURESTRIDE    = ( DEVICE_CREATECOMPUTESHADER_DOUBLEFLOATOPSNOTSUPPORTED + 1 ) ,
    CREATESHADERRESOURCEVIEW_INVALIDFLAGS  = ( CREATEBUFFER_INVALIDSTRUCTURESTRIDE + 1 ) ,
    CREATEUNORDEREDACCESSVIEW_INVALIDRESOURCE  = ( CREATESHADERRESOURCEVIEW_INVALIDFLAGS + 1 ) ,
    CREATEUNORDEREDACCESSVIEW_INVALIDDESC  = ( CREATEUNORDEREDACCESSVIEW_INVALIDRESOURCE + 1 ) ,
    CREATEUNORDEREDACCESSVIEW_INVALIDFORMAT    = ( CREATEUNORDEREDACCESSVIEW_INVALIDDESC + 1 ) ,
    CREATEUNORDEREDACCESSVIEW_INVALIDDIMENSIONS    = ( CREATEUNORDEREDACCESSVIEW_INVALIDFORMAT + 1 ) ,
    CREATEUNORDEREDACCESSVIEW_UNRECOGNIZEDFORMAT   = ( CREATEUNORDEREDACCESSVIEW_INVALIDDIMENSIONS + 1 ) ,
    DEVICE_OMSETRENDERTARGETSANDUNORDEREDACCESSVIEWS_HAZARD    = ( CREATEUNORDEREDACCESSVIEW_UNRECOGNIZEDFORMAT + 1 ) ,
    DEVICE_OMSETRENDERTARGETSANDUNORDEREDACCESSVIEWS_OVERLAPPING_OLD_SLOTS = ( DEVICE_OMSETRENDERTARGETSANDUNORDEREDACCESSVIEWS_HAZARD + 1 ) ,
    DEVICE_OMSETRENDERTARGETSANDUNORDEREDACCESSVIEWS_NO_OP = ( DEVICE_OMSETRENDERTARGETSANDUNORDEREDACCESSVIEWS_OVERLAPPING_OLD_SLOTS + 1 ) ,
    CSSETUNORDEREDACCESSVIEWS_UNBINDDELETINGOBJECT = ( DEVICE_OMSETRENDERTARGETSANDUNORDEREDACCESSVIEWS_NO_OP + 1 ) ,
    PSSETUNORDEREDACCESSVIEWS_UNBINDDELETINGOBJECT = ( CSSETUNORDEREDACCESSVIEWS_UNBINDDELETINGOBJECT + 1 ) ,
    CREATEUNORDEREDACCESSVIEW_INVALIDARG_RETURN    = ( PSSETUNORDEREDACCESSVIEWS_UNBINDDELETINGOBJECT + 1 ) ,
    CREATEUNORDEREDACCESSVIEW_OUTOFMEMORY_RETURN   = ( CREATEUNORDEREDACCESSVIEW_INVALIDARG_RETURN + 1 ) ,
    CREATEUNORDEREDACCESSVIEW_TOOMANYOBJECTS   = ( CREATEUNORDEREDACCESSVIEW_OUTOFMEMORY_RETURN + 1 ) ,
    DEVICE_CSSETUNORDEREDACCESSVIEWS_HAZARD    = ( CREATEUNORDEREDACCESSVIEW_TOOMANYOBJECTS + 1 ) ,
    CLEARUNORDEREDACCESSVIEW_DENORMFLUSH   = ( DEVICE_CSSETUNORDEREDACCESSVIEWS_HAZARD + 1 ) ,
    DEVICE_CSSETUNORDEREDACCESSS_VIEWS_EMPTY   = ( CLEARUNORDEREDACCESSVIEW_DENORMFLUSH + 1 ) ,
    DEVICE_CSGETUNORDEREDACCESSS_VIEWS_EMPTY   = ( DEVICE_CSSETUNORDEREDACCESSS_VIEWS_EMPTY + 1 ) ,
    CREATEUNORDEREDACCESSVIEW_INVALIDFLAGS = ( DEVICE_CSGETUNORDEREDACCESSS_VIEWS_EMPTY + 1 ) ,
    CREATESHADERRESESOURCEVIEW_TOOMANYOBJECTS  = ( CREATEUNORDEREDACCESSVIEW_INVALIDFLAGS + 1 ) ,
    DEVICE_DISPATCHINDIRECT_INVALID_ARG_BUFFER = ( CREATESHADERRESESOURCEVIEW_TOOMANYOBJECTS + 1 ) ,
    DEVICE_DISPATCHINDIRECT_OFFSET_UNALIGNED   = ( DEVICE_DISPATCHINDIRECT_INVALID_ARG_BUFFER + 1 ) ,
    DEVICE_DISPATCHINDIRECT_OFFSET_OVERFLOW    = ( DEVICE_DISPATCHINDIRECT_OFFSET_UNALIGNED + 1 ) ,
    DEVICE_SETRESOURCEMINLOD_INVALIDCONTEXT    = ( DEVICE_DISPATCHINDIRECT_OFFSET_OVERFLOW + 1 ) ,
    DEVICE_SETRESOURCEMINLOD_INVALIDRESOURCE   = ( DEVICE_SETRESOURCEMINLOD_INVALIDCONTEXT + 1 ) ,
    DEVICE_SETRESOURCEMINLOD_INVALIDMINLOD = ( DEVICE_SETRESOURCEMINLOD_INVALIDRESOURCE + 1 ) ,
    DEVICE_GETRESOURCEMINLOD_INVALIDCONTEXT    = ( DEVICE_SETRESOURCEMINLOD_INVALIDMINLOD + 1 ) ,
    DEVICE_GETRESOURCEMINLOD_INVALIDRESOURCE   = ( DEVICE_GETRESOURCEMINLOD_INVALIDCONTEXT + 1 ) ,
    OMSETDEPTHSTENCIL_UNBINDDELETINGOBJECT = ( DEVICE_GETRESOURCEMINLOD_INVALIDRESOURCE + 1 ) ,
    CLEARDEPTHSTENCILVIEW_DEPTH_READONLY   = ( OMSETDEPTHSTENCIL_UNBINDDELETINGOBJECT + 1 ) ,
    CLEARDEPTHSTENCILVIEW_STENCIL_READONLY = ( CLEARDEPTHSTENCILVIEW_DEPTH_READONLY + 1 ) ,
    CHECKFEATURESUPPORT_FORMAT_DEPRECATED  = ( CLEARDEPTHSTENCILVIEW_STENCIL_READONLY + 1 ) ,
    DEVICE_UNORDEREDACCESSVIEW_RETURN_TYPE_MISMATCH    = ( CHECKFEATURESUPPORT_FORMAT_DEPRECATED + 1 ) ,
    DEVICE_UNORDEREDACCESSVIEW_NOT_SET = ( DEVICE_UNORDEREDACCESSVIEW_RETURN_TYPE_MISMATCH + 1 ) ,
    DEVICE_DRAW_UNORDEREDACCESSVIEW_RENDERTARGETVIEW_OVERLAP   = ( DEVICE_UNORDEREDACCESSVIEW_NOT_SET + 1 ) ,
    DEVICE_UNORDEREDACCESSVIEW_DIMENSION_MISMATCH  = ( DEVICE_DRAW_UNORDEREDACCESSVIEW_RENDERTARGETVIEW_OVERLAP + 1 ) ,
    DEVICE_UNORDEREDACCESSVIEW_APPEND_UNSUPPORTED  = ( DEVICE_UNORDEREDACCESSVIEW_DIMENSION_MISMATCH + 1 ) ,
    DEVICE_UNORDEREDACCESSVIEW_ATOMICS_UNSUPPORTED = ( DEVICE_UNORDEREDACCESSVIEW_APPEND_UNSUPPORTED + 1 ) ,
    DEVICE_UNORDEREDACCESSVIEW_STRUCTURE_STRIDE_MISMATCH   = ( DEVICE_UNORDEREDACCESSVIEW_ATOMICS_UNSUPPORTED + 1 ) ,
    DEVICE_UNORDEREDACCESSVIEW_BUFFER_TYPE_MISMATCH    = ( DEVICE_UNORDEREDACCESSVIEW_STRUCTURE_STRIDE_MISMATCH + 1 ) ,
    DEVICE_UNORDEREDACCESSVIEW_RAW_UNSUPPORTED = ( DEVICE_UNORDEREDACCESSVIEW_BUFFER_TYPE_MISMATCH + 1 ) ,
    DEVICE_UNORDEREDACCESSVIEW_FORMAT_LD_UNSUPPORTED   = ( DEVICE_UNORDEREDACCESSVIEW_RAW_UNSUPPORTED + 1 ) ,
    DEVICE_UNORDEREDACCESSVIEW_FORMAT_STORE_UNSUPPORTED    = ( DEVICE_UNORDEREDACCESSVIEW_FORMAT_LD_UNSUPPORTED + 1 ) ,
    DEVICE_UNORDEREDACCESSVIEW_ATOMIC_ADD_UNSUPPORTED  = ( DEVICE_UNORDEREDACCESSVIEW_FORMAT_STORE_UNSUPPORTED + 1 ) ,
    DEVICE_UNORDEREDACCESSVIEW_ATOMIC_BITWISE_OPS_UNSUPPORTED  = ( DEVICE_UNORDEREDACCESSVIEW_ATOMIC_ADD_UNSUPPORTED + 1 ) ,
    DEVICE_UNORDEREDACCESSVIEW_ATOMIC_CMPSTORE_CMPEXCHANGE_UNSUPPORTED = ( DEVICE_UNORDEREDACCESSVIEW_ATOMIC_BITWISE_OPS_UNSUPPORTED + 1 ) ,
    DEVICE_UNORDEREDACCESSVIEW_ATOMIC_EXCHANGE_UNSUPPORTED = ( DEVICE_UNORDEREDACCESSVIEW_ATOMIC_CMPSTORE_CMPEXCHANGE_UNSUPPORTED + 1 ) ,
    DEVICE_UNORDEREDACCESSVIEW_ATOMIC_SIGNED_MINMAX_UNSUPPORTED    = ( DEVICE_UNORDEREDACCESSVIEW_ATOMIC_EXCHANGE_UNSUPPORTED + 1 ) ,
    DEVICE_UNORDEREDACCESSVIEW_ATOMIC_UNSIGNED_MINMAX_UNSUPPORTED  = ( DEVICE_UNORDEREDACCESSVIEW_ATOMIC_SIGNED_MINMAX_UNSUPPORTED + 1 ) ,
    DEVICE_DISPATCH_BOUND_RESOURCE_MAPPED  = ( DEVICE_UNORDEREDACCESSVIEW_ATOMIC_UNSIGNED_MINMAX_UNSUPPORTED + 1 ) ,
    DEVICE_DISPATCH_THREADGROUPCOUNT_OVERFLOW  = ( DEVICE_DISPATCH_BOUND_RESOURCE_MAPPED + 1 ) ,
    DEVICE_DISPATCH_THREADGROUPCOUNT_ZERO  = ( DEVICE_DISPATCH_THREADGROUPCOUNT_OVERFLOW + 1 ) ,
    DEVICE_SHADERRESOURCEVIEW_STRUCTURE_STRIDE_MISMATCH    = ( DEVICE_DISPATCH_THREADGROUPCOUNT_ZERO + 1 ) ,
    DEVICE_SHADERRESOURCEVIEW_BUFFER_TYPE_MISMATCH = ( DEVICE_SHADERRESOURCEVIEW_STRUCTURE_STRIDE_MISMATCH + 1 ) ,
    DEVICE_SHADERRESOURCEVIEW_RAW_UNSUPPORTED  = ( DEVICE_SHADERRESOURCEVIEW_BUFFER_TYPE_MISMATCH + 1 ) ,
    DEVICE_DISPATCH_UNSUPPORTED    = ( DEVICE_SHADERRESOURCEVIEW_RAW_UNSUPPORTED + 1 ) ,
    DEVICE_DISPATCHINDIRECT_UNSUPPORTED    = ( DEVICE_DISPATCH_UNSUPPORTED + 1 ) ,
    COPYSTRUCTURECOUNT_INVALIDOFFSET   = ( DEVICE_DISPATCHINDIRECT_UNSUPPORTED + 1 ) ,
    COPYSTRUCTURECOUNT_LARGEOFFSET = ( COPYSTRUCTURECOUNT_INVALIDOFFSET + 1 ) ,
    COPYSTRUCTURECOUNT_INVALIDDESTINATIONSTATE = ( COPYSTRUCTURECOUNT_LARGEOFFSET + 1 ) ,
    COPYSTRUCTURECOUNT_INVALIDSOURCESTATE  = ( COPYSTRUCTURECOUNT_INVALIDDESTINATIONSTATE + 1 ) ,
    CHECKFORMATSUPPORT_FORMAT_NOT_SUPPORTED    = ( COPYSTRUCTURECOUNT_INVALIDSOURCESTATE + 1 ) ,
    DEVICE_CSSETUNORDEREDACCESSVIEWS_INVALIDVIEW   = ( CHECKFORMATSUPPORT_FORMAT_NOT_SUPPORTED + 1 ) ,
    DEVICE_CSSETUNORDEREDACCESSVIEWS_INVALIDOFFSET = ( DEVICE_CSSETUNORDEREDACCESSVIEWS_INVALIDVIEW + 1 ) ,
    DEVICE_CSSETUNORDEREDACCESSVIEWS_TOOMANYVIEWS  = ( DEVICE_CSSETUNORDEREDACCESSVIEWS_INVALIDOFFSET + 1 ) ,
    CLEARUNORDEREDACCESSVIEWFLOAT_INVALIDFORMAT    = ( DEVICE_CSSETUNORDEREDACCESSVIEWS_TOOMANYVIEWS + 1 ) ,
    DEVICE_UNORDEREDACCESSVIEW_COUNTER_UNSUPPORTED = ( CLEARUNORDEREDACCESSVIEWFLOAT_INVALIDFORMAT + 1 ) ,
    REF_WARNING    = ( DEVICE_UNORDEREDACCESSVIEW_COUNTER_UNSUPPORTED + 1 ) ,
    DEVICE_DRAW_PIXEL_SHADER_WITHOUT_RTV_OR_DSV    = ( REF_WARNING + 1 ) ,
    SHADER_ABORT   = ( DEVICE_DRAW_PIXEL_SHADER_WITHOUT_RTV_OR_DSV + 1 ) ,
    SHADER_MESSAGE = ( SHADER_ABORT + 1 ) ,
    SHADER_ERROR   = ( SHADER_MESSAGE + 1 ) ,
    OFFERRESOURCES_INVALIDRESOURCE = ( SHADER_ERROR + 1 ) ,
    HSSETSAMPLERS_UNBINDDELETINGOBJECT = ( OFFERRESOURCES_INVALIDRESOURCE + 1 ) ,
    DSSETSAMPLERS_UNBINDDELETINGOBJECT = ( HSSETSAMPLERS_UNBINDDELETINGOBJECT + 1 ) ,
    CSSETSAMPLERS_UNBINDDELETINGOBJECT = ( DSSETSAMPLERS_UNBINDDELETINGOBJECT + 1 ) ,
    HSSETSHADER_UNBINDDELETINGOBJECT   = ( CSSETSAMPLERS_UNBINDDELETINGOBJECT + 1 ) ,
    DSSETSHADER_UNBINDDELETINGOBJECT   = ( HSSETSHADER_UNBINDDELETINGOBJECT + 1 ) ,
    CSSETSHADER_UNBINDDELETINGOBJECT   = ( DSSETSHADER_UNBINDDELETINGOBJECT + 1 ) ,
    ENQUEUESETEVENT_INVALIDARG_RETURN  = ( CSSETSHADER_UNBINDDELETINGOBJECT + 1 ) ,
    ENQUEUESETEVENT_OUTOFMEMORY_RETURN = ( ENQUEUESETEVENT_INVALIDARG_RETURN + 1 ) ,
    ENQUEUESETEVENT_ACCESSDENIED_RETURN    = ( ENQUEUESETEVENT_OUTOFMEMORY_RETURN + 1 ) ,
    DEVICE_OMSETRENDERTARGETSANDUNORDEREDACCESSVIEWS_NUMUAVS_INVALIDRANGE  = ( ENQUEUESETEVENT_ACCESSDENIED_RETURN + 1 ) ,
    USE_OF_ZERO_REFCOUNT_OBJECT    = ( DEVICE_OMSETRENDERTARGETSANDUNORDEREDACCESSVIEWS_NUMUAVS_INVALIDRANGE + 1 ) ,
    D3D11_MESSAGES_END = ( USE_OF_ZERO_REFCOUNT_OBJECT + 1 ) ,
    D3D11_1_MESSAGES_START = 0x300000,
    CREATE_VIDEODECODER    = ( D3D11_1_MESSAGES_START + 1 ) ,
    CREATE_VIDEOPROCESSORENUM  = ( CREATE_VIDEODECODER + 1 ) ,
    CREATE_VIDEOPROCESSOR  = ( CREATE_VIDEOPROCESSORENUM + 1 ) ,
    CREATE_DECODEROUTPUTVIEW   = ( CREATE_VIDEOPROCESSOR + 1 ) ,
    CREATE_PROCESSORINPUTVIEW  = ( CREATE_DECODEROUTPUTVIEW + 1 ) ,
    CREATE_PROCESSOROUTPUTVIEW = ( CREATE_PROCESSORINPUTVIEW + 1 ) ,
    CREATE_DEVICECONTEXTSTATE  = ( CREATE_PROCESSOROUTPUTVIEW + 1 ) ,
    LIVE_VIDEODECODER  = ( CREATE_DEVICECONTEXTSTATE + 1 ) ,
    LIVE_VIDEOPROCESSORENUM    = ( LIVE_VIDEODECODER + 1 ) ,
    LIVE_VIDEOPROCESSOR    = ( LIVE_VIDEOPROCESSORENUM + 1 ) ,
    LIVE_DECODEROUTPUTVIEW = ( LIVE_VIDEOPROCESSOR + 1 ) ,
    LIVE_PROCESSORINPUTVIEW    = ( LIVE_DECODEROUTPUTVIEW + 1 ) ,
    LIVE_PROCESSOROUTPUTVIEW   = ( LIVE_PROCESSORINPUTVIEW + 1 ) ,
    LIVE_DEVICECONTEXTSTATE    = ( LIVE_PROCESSOROUTPUTVIEW + 1 ) ,
    DESTROY_VIDEODECODER   = ( LIVE_DEVICECONTEXTSTATE + 1 ) ,
    DESTROY_VIDEOPROCESSORENUM = ( DESTROY_VIDEODECODER + 1 ) ,
    DESTROY_VIDEOPROCESSOR = ( DESTROY_VIDEOPROCESSORENUM + 1 ) ,
    DESTROY_DECODEROUTPUTVIEW  = ( DESTROY_VIDEOPROCESSOR + 1 ) ,
    DESTROY_PROCESSORINPUTVIEW = ( DESTROY_DECODEROUTPUTVIEW + 1 ) ,
    DESTROY_PROCESSOROUTPUTVIEW    = ( DESTROY_PROCESSORINPUTVIEW + 1 ) ,
    DESTROY_DEVICECONTEXTSTATE = ( DESTROY_PROCESSOROUTPUTVIEW + 1 ) ,
    CREATEDEVICECONTEXTSTATE_INVALIDFLAGS  = ( DESTROY_DEVICECONTEXTSTATE + 1 ) ,
    CREATEDEVICECONTEXTSTATE_INVALIDFEATURELEVEL   = ( CREATEDEVICECONTEXTSTATE_INVALIDFLAGS + 1 ) ,
    CREATEDEVICECONTEXTSTATE_FEATURELEVELS_NOT_SUPPORTED   = ( CREATEDEVICECONTEXTSTATE_INVALIDFEATURELEVEL + 1 ) ,
    CREATEDEVICECONTEXTSTATE_INVALIDREFIID = ( CREATEDEVICECONTEXTSTATE_FEATURELEVELS_NOT_SUPPORTED + 1 ) ,
    DEVICE_DISCARDVIEW_INVALIDVIEW = ( CREATEDEVICECONTEXTSTATE_INVALIDREFIID + 1 ) ,
    COPYSUBRESOURCEREGION1_INVALIDCOPYFLAGS    = ( DEVICE_DISCARDVIEW_INVALIDVIEW + 1 ) ,
    UPDATESUBRESOURCE1_INVALIDCOPYFLAGS    = ( COPYSUBRESOURCEREGION1_INVALIDCOPYFLAGS + 1 ) ,
    CREATERASTERIZERSTATE_INVALIDFORCEDSAMPLECOUNT = ( UPDATESUBRESOURCE1_INVALIDCOPYFLAGS + 1 ) ,
    CREATEVIDEODECODER_OUTOFMEMORY_RETURN  = ( CREATERASTERIZERSTATE_INVALIDFORCEDSAMPLECOUNT + 1 ) ,
    CREATEVIDEODECODER_NULLPARAM   = ( CREATEVIDEODECODER_OUTOFMEMORY_RETURN + 1 ) ,
    CREATEVIDEODECODER_INVALIDFORMAT   = ( CREATEVIDEODECODER_NULLPARAM + 1 ) ,
    CREATEVIDEODECODER_ZEROWIDTHHEIGHT = ( CREATEVIDEODECODER_INVALIDFORMAT + 1 ) ,
    CREATEVIDEODECODER_DRIVER_INVALIDBUFFERSIZE    = ( CREATEVIDEODECODER_ZEROWIDTHHEIGHT + 1 ) ,
    CREATEVIDEODECODER_DRIVER_INVALIDBUFFERUSAGE   = ( CREATEVIDEODECODER_DRIVER_INVALIDBUFFERSIZE + 1 ) ,
    GETVIDEODECODERPROFILECOUNT_OUTOFMEMORY    = ( CREATEVIDEODECODER_DRIVER_INVALIDBUFFERUSAGE + 1 ) ,
    GETVIDEODECODERPROFILE_NULLPARAM   = ( GETVIDEODECODERPROFILECOUNT_OUTOFMEMORY + 1 ) ,
    GETVIDEODECODERPROFILE_INVALIDINDEX    = ( GETVIDEODECODERPROFILE_NULLPARAM + 1 ) ,
    GETVIDEODECODERPROFILE_OUTOFMEMORY_RETURN  = ( GETVIDEODECODERPROFILE_INVALIDINDEX + 1 ) ,
    CHECKVIDEODECODERFORMAT_NULLPARAM  = ( GETVIDEODECODERPROFILE_OUTOFMEMORY_RETURN + 1 ) ,
    CHECKVIDEODECODERFORMAT_OUTOFMEMORY_RETURN = ( CHECKVIDEODECODERFORMAT_NULLPARAM + 1 ) ,
    GETVIDEODECODERCONFIGCOUNT_NULLPARAM   = ( CHECKVIDEODECODERFORMAT_OUTOFMEMORY_RETURN + 1 ) ,
    GETVIDEODECODERCONFIGCOUNT_OUTOFMEMORY_RETURN  = ( GETVIDEODECODERCONFIGCOUNT_NULLPARAM + 1 ) ,
    GETVIDEODECODERCONFIG_NULLPARAM    = ( GETVIDEODECODERCONFIGCOUNT_OUTOFMEMORY_RETURN + 1 ) ,
    GETVIDEODECODERCONFIG_INVALIDINDEX = ( GETVIDEODECODERCONFIG_NULLPARAM + 1 ) ,
    GETVIDEODECODERCONFIG_OUTOFMEMORY_RETURN   = ( GETVIDEODECODERCONFIG_INVALIDINDEX + 1 ) ,
    GETDECODERCREATIONPARAMS_NULLPARAM = ( GETVIDEODECODERCONFIG_OUTOFMEMORY_RETURN + 1 ) ,
    GETDECODERDRIVERHANDLE_NULLPARAM   = ( GETDECODERCREATIONPARAMS_NULLPARAM + 1 ) ,
    GETDECODERBUFFER_NULLPARAM = ( GETDECODERDRIVERHANDLE_NULLPARAM + 1 ) ,
    GETDECODERBUFFER_INVALIDBUFFER = ( GETDECODERBUFFER_NULLPARAM + 1 ) ,
    GETDECODERBUFFER_INVALIDTYPE   = ( GETDECODERBUFFER_INVALIDBUFFER + 1 ) ,
    GETDECODERBUFFER_LOCKED    = ( GETDECODERBUFFER_INVALIDTYPE + 1 ) ,
    RELEASEDECODERBUFFER_NULLPARAM = ( GETDECODERBUFFER_LOCKED + 1 ) ,
    RELEASEDECODERBUFFER_INVALIDTYPE   = ( RELEASEDECODERBUFFER_NULLPARAM + 1 ) ,
    RELEASEDECODERBUFFER_NOTLOCKED = ( RELEASEDECODERBUFFER_INVALIDTYPE + 1 ) ,
    DECODERBEGINFRAME_NULLPARAM    = ( RELEASEDECODERBUFFER_NOTLOCKED + 1 ) ,
    DECODERBEGINFRAME_HAZARD   = ( DECODERBEGINFRAME_NULLPARAM + 1 ) ,
    DECODERENDFRAME_NULLPARAM  = ( DECODERBEGINFRAME_HAZARD + 1 ) ,
    SUBMITDECODERBUFFERS_NULLPARAM = ( DECODERENDFRAME_NULLPARAM + 1 ) ,
    SUBMITDECODERBUFFERS_INVALIDTYPE   = ( SUBMITDECODERBUFFERS_NULLPARAM + 1 ) ,
    DECODEREXTENSION_NULLPARAM = ( SUBMITDECODERBUFFERS_INVALIDTYPE + 1 ) ,
    DECODEREXTENSION_INVALIDRESOURCE   = ( DECODEREXTENSION_NULLPARAM + 1 ) ,
    CREATEVIDEOPROCESSORENUMERATOR_OUTOFMEMORY_RETURN  = ( DECODEREXTENSION_INVALIDRESOURCE + 1 ) ,
    CREATEVIDEOPROCESSORENUMERATOR_NULLPARAM   = ( CREATEVIDEOPROCESSORENUMERATOR_OUTOFMEMORY_RETURN + 1 ) ,
    CREATEVIDEOPROCESSORENUMERATOR_INVALIDFRAMEFORMAT  = ( CREATEVIDEOPROCESSORENUMERATOR_NULLPARAM + 1 ) ,
    CREATEVIDEOPROCESSORENUMERATOR_INVALIDUSAGE    = ( CREATEVIDEOPROCESSORENUMERATOR_INVALIDFRAMEFORMAT + 1 ) ,
    CREATEVIDEOPROCESSORENUMERATOR_INVALIDINPUTFRAMERATE   = ( CREATEVIDEOPROCESSORENUMERATOR_INVALIDUSAGE + 1 ) ,
    CREATEVIDEOPROCESSORENUMERATOR_INVALIDOUTPUTFRAMERATE  = ( CREATEVIDEOPROCESSORENUMERATOR_INVALIDINPUTFRAMERATE + 1 ) ,
    CREATEVIDEOPROCESSORENUMERATOR_INVALIDWIDTHHEIGHT  = ( CREATEVIDEOPROCESSORENUMERATOR_INVALIDOUTPUTFRAMERATE + 1 ) ,
    GETVIDEOPROCESSORCONTENTDESC_NULLPARAM = ( CREATEVIDEOPROCESSORENUMERATOR_INVALIDWIDTHHEIGHT + 1 ) ,
    CHECKVIDEOPROCESSORFORMAT_NULLPARAM    = ( GETVIDEOPROCESSORCONTENTDESC_NULLPARAM + 1 ) ,
    GETVIDEOPROCESSORCAPS_NULLPARAM    = ( CHECKVIDEOPROCESSORFORMAT_NULLPARAM + 1 ) ,
    GETVIDEOPROCESSORRATECONVERSIONCAPS_NULLPARAM  = ( GETVIDEOPROCESSORCAPS_NULLPARAM + 1 ) ,
    GETVIDEOPROCESSORRATECONVERSIONCAPS_INVALIDINDEX   = ( GETVIDEOPROCESSORRATECONVERSIONCAPS_NULLPARAM + 1 ) ,
    GETVIDEOPROCESSORCUSTOMRATE_NULLPARAM  = ( GETVIDEOPROCESSORRATECONVERSIONCAPS_INVALIDINDEX + 1 ) ,
    GETVIDEOPROCESSORCUSTOMRATE_INVALIDINDEX   = ( GETVIDEOPROCESSORCUSTOMRATE_NULLPARAM + 1 ) ,
    GETVIDEOPROCESSORFILTERRANGE_NULLPARAM = ( GETVIDEOPROCESSORCUSTOMRATE_INVALIDINDEX + 1 ) ,
    GETVIDEOPROCESSORFILTERRANGE_UNSUPPORTED   = ( GETVIDEOPROCESSORFILTERRANGE_NULLPARAM + 1 ) ,
    CREATEVIDEOPROCESSOR_OUTOFMEMORY_RETURN    = ( GETVIDEOPROCESSORFILTERRANGE_UNSUPPORTED + 1 ) ,
    CREATEVIDEOPROCESSOR_NULLPARAM = ( CREATEVIDEOPROCESSOR_OUTOFMEMORY_RETURN + 1 ) ,
    VIDEOPROCESSORSETOUTPUTTARGETRECT_NULLPARAM    = ( CREATEVIDEOPROCESSOR_NULLPARAM + 1 ) ,
    VIDEOPROCESSORSETOUTPUTBACKGROUNDCOLOR_NULLPARAM   = ( VIDEOPROCESSORSETOUTPUTTARGETRECT_NULLPARAM + 1 ) ,
    VIDEOPROCESSORSETOUTPUTBACKGROUNDCOLOR_INVALIDALPHA    = ( VIDEOPROCESSORSETOUTPUTBACKGROUNDCOLOR_NULLPARAM + 1 ) ,
    VIDEOPROCESSORSETOUTPUTCOLORSPACE_NULLPARAM    = ( VIDEOPROCESSORSETOUTPUTBACKGROUNDCOLOR_INVALIDALPHA + 1 ) ,
    VIDEOPROCESSORSETOUTPUTALPHAFILLMODE_NULLPARAM = ( VIDEOPROCESSORSETOUTPUTCOLORSPACE_NULLPARAM + 1 ) ,
    VIDEOPROCESSORSETOUTPUTALPHAFILLMODE_UNSUPPORTED   = ( VIDEOPROCESSORSETOUTPUTALPHAFILLMODE_NULLPARAM + 1 ) ,
    VIDEOPROCESSORSETOUTPUTALPHAFILLMODE_INVALIDSTREAM = ( VIDEOPROCESSORSETOUTPUTALPHAFILLMODE_UNSUPPORTED + 1 ) ,
    VIDEOPROCESSORSETOUTPUTALPHAFILLMODE_INVALIDFILLMODE   = ( VIDEOPROCESSORSETOUTPUTALPHAFILLMODE_INVALIDSTREAM + 1 ) ,
    VIDEOPROCESSORSETOUTPUTCONSTRICTION_NULLPARAM  = ( VIDEOPROCESSORSETOUTPUTALPHAFILLMODE_INVALIDFILLMODE + 1 ) ,
    VIDEOPROCESSORSETOUTPUTSTEREOMODE_NULLPARAM    = ( VIDEOPROCESSORSETOUTPUTCONSTRICTION_NULLPARAM + 1 ) ,
    VIDEOPROCESSORSETOUTPUTSTEREOMODE_UNSUPPORTED  = ( VIDEOPROCESSORSETOUTPUTSTEREOMODE_NULLPARAM + 1 ) ,
    VIDEOPROCESSORSETOUTPUTEXTENSION_NULLPARAM = ( VIDEOPROCESSORSETOUTPUTSTEREOMODE_UNSUPPORTED + 1 ) ,
    VIDEOPROCESSORGETOUTPUTTARGETRECT_NULLPARAM    = ( VIDEOPROCESSORSETOUTPUTEXTENSION_NULLPARAM + 1 ) ,
    VIDEOPROCESSORGETOUTPUTBACKGROUNDCOLOR_NULLPARAM   = ( VIDEOPROCESSORGETOUTPUTTARGETRECT_NULLPARAM + 1 ) ,
    VIDEOPROCESSORGETOUTPUTCOLORSPACE_NULLPARAM    = ( VIDEOPROCESSORGETOUTPUTBACKGROUNDCOLOR_NULLPARAM + 1 ) ,
    VIDEOPROCESSORGETOUTPUTALPHAFILLMODE_NULLPARAM = ( VIDEOPROCESSORGETOUTPUTCOLORSPACE_NULLPARAM + 1 ) ,
    VIDEOPROCESSORGETOUTPUTCONSTRICTION_NULLPARAM  = ( VIDEOPROCESSORGETOUTPUTALPHAFILLMODE_NULLPARAM + 1 ) ,
    VIDEOPROCESSORSETOUTPUTCONSTRICTION_UNSUPPORTED    = ( VIDEOPROCESSORGETOUTPUTCONSTRICTION_NULLPARAM + 1 ) ,
    VIDEOPROCESSORSETOUTPUTCONSTRICTION_INVALIDSIZE    = ( VIDEOPROCESSORSETOUTPUTCONSTRICTION_UNSUPPORTED + 1 ) ,
    VIDEOPROCESSORGETOUTPUTSTEREOMODE_NULLPARAM    = ( VIDEOPROCESSORSETOUTPUTCONSTRICTION_INVALIDSIZE + 1 ) ,
    VIDEOPROCESSORGETOUTPUTEXTENSION_NULLPARAM = ( VIDEOPROCESSORGETOUTPUTSTEREOMODE_NULLPARAM + 1 ) ,
    VIDEOPROCESSORSETSTREAMFRAMEFORMAT_NULLPARAM   = ( VIDEOPROCESSORGETOUTPUTEXTENSION_NULLPARAM + 1 ) ,
    VIDEOPROCESSORSETSTREAMFRAMEFORMAT_INVALIDFORMAT   = ( VIDEOPROCESSORSETSTREAMFRAMEFORMAT_NULLPARAM + 1 ) ,
    VIDEOPROCESSORSETSTREAMFRAMEFORMAT_INVALIDSTREAM   = ( VIDEOPROCESSORSETSTREAMFRAMEFORMAT_INVALIDFORMAT + 1 ) ,
    VIDEOPROCESSORSETSTREAMCOLORSPACE_NULLPARAM    = ( VIDEOPROCESSORSETSTREAMFRAMEFORMAT_INVALIDSTREAM + 1 ) ,
    VIDEOPROCESSORSETSTREAMCOLORSPACE_INVALIDSTREAM    = ( VIDEOPROCESSORSETSTREAMCOLORSPACE_NULLPARAM + 1 ) ,
    VIDEOPROCESSORSETSTREAMOUTPUTRATE_NULLPARAM    = ( VIDEOPROCESSORSETSTREAMCOLORSPACE_INVALIDSTREAM + 1 ) ,
    VIDEOPROCESSORSETSTREAMOUTPUTRATE_INVALIDRATE  = ( VIDEOPROCESSORSETSTREAMOUTPUTRATE_NULLPARAM + 1 ) ,
    VIDEOPROCESSORSETSTREAMOUTPUTRATE_INVALIDFLAG  = ( VIDEOPROCESSORSETSTREAMOUTPUTRATE_INVALIDRATE + 1 ) ,
    VIDEOPROCESSORSETSTREAMOUTPUTRATE_INVALIDSTREAM    = ( VIDEOPROCESSORSETSTREAMOUTPUTRATE_INVALIDFLAG + 1 ) ,
    VIDEOPROCESSORSETSTREAMSOURCERECT_NULLPARAM    = ( VIDEOPROCESSORSETSTREAMOUTPUTRATE_INVALIDSTREAM + 1 ) ,
    VIDEOPROCESSORSETSTREAMSOURCERECT_INVALIDSTREAM    = ( VIDEOPROCESSORSETSTREAMSOURCERECT_NULLPARAM + 1 ) ,
    VIDEOPROCESSORSETSTREAMSOURCERECT_INVALIDRECT  = ( VIDEOPROCESSORSETSTREAMSOURCERECT_INVALIDSTREAM + 1 ) ,
    VIDEOPROCESSORSETSTREAMDESTRECT_NULLPARAM  = ( VIDEOPROCESSORSETSTREAMSOURCERECT_INVALIDRECT + 1 ) ,
    VIDEOPROCESSORSETSTREAMDESTRECT_INVALIDSTREAM  = ( VIDEOPROCESSORSETSTREAMDESTRECT_NULLPARAM + 1 ) ,
    VIDEOPROCESSORSETSTREAMDESTRECT_INVALIDRECT    = ( VIDEOPROCESSORSETSTREAMDESTRECT_INVALIDSTREAM + 1 ) ,
    VIDEOPROCESSORSETSTREAMALPHA_NULLPARAM = ( VIDEOPROCESSORSETSTREAMDESTRECT_INVALIDRECT + 1 ) ,
    VIDEOPROCESSORSETSTREAMALPHA_INVALIDSTREAM = ( VIDEOPROCESSORSETSTREAMALPHA_NULLPARAM + 1 ) ,
    VIDEOPROCESSORSETSTREAMALPHA_INVALIDALPHA  = ( VIDEOPROCESSORSETSTREAMALPHA_INVALIDSTREAM + 1 ) ,
    VIDEOPROCESSORSETSTREAMPALETTE_NULLPARAM   = ( VIDEOPROCESSORSETSTREAMALPHA_INVALIDALPHA + 1 ) ,
    VIDEOPROCESSORSETSTREAMPALETTE_INVALIDSTREAM   = ( VIDEOPROCESSORSETSTREAMPALETTE_NULLPARAM + 1 ) ,
    VIDEOPROCESSORSETSTREAMPALETTE_INVALIDCOUNT    = ( VIDEOPROCESSORSETSTREAMPALETTE_INVALIDSTREAM + 1 ) ,
    VIDEOPROCESSORSETSTREAMPALETTE_INVALIDALPHA    = ( VIDEOPROCESSORSETSTREAMPALETTE_INVALIDCOUNT + 1 ) ,
    VIDEOPROCESSORSETSTREAMPIXELASPECTRATIO_NULLPARAM  = ( VIDEOPROCESSORSETSTREAMPALETTE_INVALIDALPHA + 1 ) ,
    VIDEOPROCESSORSETSTREAMPIXELASPECTRATIO_INVALIDSTREAM  = ( VIDEOPROCESSORSETSTREAMPIXELASPECTRATIO_NULLPARAM + 1 ) ,
    VIDEOPROCESSORSETSTREAMPIXELASPECTRATIO_INVALIDRATIO   = ( VIDEOPROCESSORSETSTREAMPIXELASPECTRATIO_INVALIDSTREAM + 1 ) ,
    VIDEOPROCESSORSETSTREAMLUMAKEY_NULLPARAM   = ( VIDEOPROCESSORSETSTREAMPIXELASPECTRATIO_INVALIDRATIO + 1 ) ,
    VIDEOPROCESSORSETSTREAMLUMAKEY_INVALIDSTREAM   = ( VIDEOPROCESSORSETSTREAMLUMAKEY_NULLPARAM + 1 ) ,
    VIDEOPROCESSORSETSTREAMLUMAKEY_INVALIDRANGE    = ( VIDEOPROCESSORSETSTREAMLUMAKEY_INVALIDSTREAM + 1 ) ,
    VIDEOPROCESSORSETSTREAMLUMAKEY_UNSUPPORTED = ( VIDEOPROCESSORSETSTREAMLUMAKEY_INVALIDRANGE + 1 ) ,
    VIDEOPROCESSORSETSTREAMSTEREOFORMAT_NULLPARAM  = ( VIDEOPROCESSORSETSTREAMLUMAKEY_UNSUPPORTED + 1 ) ,
    VIDEOPROCESSORSETSTREAMSTEREOFORMAT_INVALIDSTREAM  = ( VIDEOPROCESSORSETSTREAMSTEREOFORMAT_NULLPARAM + 1 ) ,
    VIDEOPROCESSORSETSTREAMSTEREOFORMAT_UNSUPPORTED    = ( VIDEOPROCESSORSETSTREAMSTEREOFORMAT_INVALIDSTREAM + 1 ) ,
    VIDEOPROCESSORSETSTREAMSTEREOFORMAT_FLIPUNSUPPORTED    = ( VIDEOPROCESSORSETSTREAMSTEREOFORMAT_UNSUPPORTED + 1 ) ,
    VIDEOPROCESSORSETSTREAMSTEREOFORMAT_MONOOFFSETUNSUPPORTED  = ( VIDEOPROCESSORSETSTREAMSTEREOFORMAT_FLIPUNSUPPORTED + 1 ) ,
    VIDEOPROCESSORSETSTREAMSTEREOFORMAT_FORMATUNSUPPORTED  = ( VIDEOPROCESSORSETSTREAMSTEREOFORMAT_MONOOFFSETUNSUPPORTED + 1 ) ,
    VIDEOPROCESSORSETSTREAMSTEREOFORMAT_INVALIDFORMAT  = ( VIDEOPROCESSORSETSTREAMSTEREOFORMAT_FORMATUNSUPPORTED + 1 ) ,
    VIDEOPROCESSORSETSTREAMAUTOPROCESSINGMODE_NULLPARAM    = ( VIDEOPROCESSORSETSTREAMSTEREOFORMAT_INVALIDFORMAT + 1 ) ,
    VIDEOPROCESSORSETSTREAMAUTOPROCESSINGMODE_INVALIDSTREAM    = ( VIDEOPROCESSORSETSTREAMAUTOPROCESSINGMODE_NULLPARAM + 1 ) ,
    VIDEOPROCESSORSETSTREAMFILTER_NULLPARAM    = ( VIDEOPROCESSORSETSTREAMAUTOPROCESSINGMODE_INVALIDSTREAM + 1 ) ,
    VIDEOPROCESSORSETSTREAMFILTER_INVALIDSTREAM    = ( VIDEOPROCESSORSETSTREAMFILTER_NULLPARAM + 1 ) ,
    VIDEOPROCESSORSETSTREAMFILTER_INVALIDFILTER    = ( VIDEOPROCESSORSETSTREAMFILTER_INVALIDSTREAM + 1 ) ,
    VIDEOPROCESSORSETSTREAMFILTER_UNSUPPORTED  = ( VIDEOPROCESSORSETSTREAMFILTER_INVALIDFILTER + 1 ) ,
    VIDEOPROCESSORSETSTREAMFILTER_INVALIDLEVEL = ( VIDEOPROCESSORSETSTREAMFILTER_UNSUPPORTED + 1 ) ,
    VIDEOPROCESSORSETSTREAMEXTENSION_NULLPARAM = ( VIDEOPROCESSORSETSTREAMFILTER_INVALIDLEVEL + 1 ) ,
    VIDEOPROCESSORSETSTREAMEXTENSION_INVALIDSTREAM = ( VIDEOPROCESSORSETSTREAMEXTENSION_NULLPARAM + 1 ) ,
    VIDEOPROCESSORGETSTREAMFRAMEFORMAT_NULLPARAM   = ( VIDEOPROCESSORSETSTREAMEXTENSION_INVALIDSTREAM + 1 ) ,
    VIDEOPROCESSORGETSTREAMCOLORSPACE_NULLPARAM    = ( VIDEOPROCESSORGETSTREAMFRAMEFORMAT_NULLPARAM + 1 ) ,
    VIDEOPROCESSORGETSTREAMOUTPUTRATE_NULLPARAM    = ( VIDEOPROCESSORGETSTREAMCOLORSPACE_NULLPARAM + 1 ) ,
    VIDEOPROCESSORGETSTREAMSOURCERECT_NULLPARAM    = ( VIDEOPROCESSORGETSTREAMOUTPUTRATE_NULLPARAM + 1 ) ,
    VIDEOPROCESSORGETSTREAMDESTRECT_NULLPARAM  = ( VIDEOPROCESSORGETSTREAMSOURCERECT_NULLPARAM + 1 ) ,
    VIDEOPROCESSORGETSTREAMALPHA_NULLPARAM = ( VIDEOPROCESSORGETSTREAMDESTRECT_NULLPARAM + 1 ) ,
    VIDEOPROCESSORGETSTREAMPALETTE_NULLPARAM   = ( VIDEOPROCESSORGETSTREAMALPHA_NULLPARAM + 1 ) ,
    VIDEOPROCESSORGETSTREAMPIXELASPECTRATIO_NULLPARAM  = ( VIDEOPROCESSORGETSTREAMPALETTE_NULLPARAM + 1 ) ,
    VIDEOPROCESSORGETSTREAMLUMAKEY_NULLPARAM   = ( VIDEOPROCESSORGETSTREAMPIXELASPECTRATIO_NULLPARAM + 1 ) ,
    VIDEOPROCESSORGETSTREAMSTEREOFORMAT_NULLPARAM  = ( VIDEOPROCESSORGETSTREAMLUMAKEY_NULLPARAM + 1 ) ,
    VIDEOPROCESSORGETSTREAMAUTOPROCESSINGMODE_NULLPARAM    = ( VIDEOPROCESSORGETSTREAMSTEREOFORMAT_NULLPARAM + 1 ) ,
    VIDEOPROCESSORGETSTREAMFILTER_NULLPARAM    = ( VIDEOPROCESSORGETSTREAMAUTOPROCESSINGMODE_NULLPARAM + 1 ) ,
    VIDEOPROCESSORGETSTREAMEXTENSION_NULLPARAM = ( VIDEOPROCESSORGETSTREAMFILTER_NULLPARAM + 1 ) ,
    VIDEOPROCESSORGETSTREAMEXTENSION_INVALIDSTREAM = ( VIDEOPROCESSORGETSTREAMEXTENSION_NULLPARAM + 1 ) ,
    VIDEOPROCESSORBLT_NULLPARAM    = ( VIDEOPROCESSORGETSTREAMEXTENSION_INVALIDSTREAM + 1 ) ,
    VIDEOPROCESSORBLT_INVALIDSTREAMCOUNT   = ( VIDEOPROCESSORBLT_NULLPARAM + 1 ) ,
    VIDEOPROCESSORBLT_TARGETRECT   = ( VIDEOPROCESSORBLT_INVALIDSTREAMCOUNT + 1 ) ,
    VIDEOPROCESSORBLT_INVALIDOUTPUT    = ( VIDEOPROCESSORBLT_TARGETRECT + 1 ) ,
    VIDEOPROCESSORBLT_INVALIDPASTFRAMES    = ( VIDEOPROCESSORBLT_INVALIDOUTPUT + 1 ) ,
    VIDEOPROCESSORBLT_INVALIDFUTUREFRAMES  = ( VIDEOPROCESSORBLT_INVALIDPASTFRAMES + 1 ) ,
    VIDEOPROCESSORBLT_INVALIDSOURCERECT    = ( VIDEOPROCESSORBLT_INVALIDFUTUREFRAMES + 1 ) ,
    VIDEOPROCESSORBLT_INVALIDDESTRECT  = ( VIDEOPROCESSORBLT_INVALIDSOURCERECT + 1 ) ,
    VIDEOPROCESSORBLT_INVALIDINPUTRESOURCE = ( VIDEOPROCESSORBLT_INVALIDDESTRECT + 1 ) ,
    VIDEOPROCESSORBLT_INVALIDARRAYSIZE = ( VIDEOPROCESSORBLT_INVALIDINPUTRESOURCE + 1 ) ,
    VIDEOPROCESSORBLT_INVALIDARRAY = ( VIDEOPROCESSORBLT_INVALIDARRAYSIZE + 1 ) ,
    VIDEOPROCESSORBLT_RIGHTEXPECTED    = ( VIDEOPROCESSORBLT_INVALIDARRAY + 1 ) ,
    VIDEOPROCESSORBLT_RIGHTNOTEXPECTED = ( VIDEOPROCESSORBLT_RIGHTEXPECTED + 1 ) ,
    VIDEOPROCESSORBLT_STEREONOTENABLED = ( VIDEOPROCESSORBLT_RIGHTNOTEXPECTED + 1 ) ,
    VIDEOPROCESSORBLT_INVALIDRIGHTRESOURCE = ( VIDEOPROCESSORBLT_STEREONOTENABLED + 1 ) ,
    VIDEOPROCESSORBLT_NOSTEREOSTREAMS  = ( VIDEOPROCESSORBLT_INVALIDRIGHTRESOURCE + 1 ) ,
    VIDEOPROCESSORBLT_INPUTHAZARD  = ( VIDEOPROCESSORBLT_NOSTEREOSTREAMS + 1 ) ,
    VIDEOPROCESSORBLT_OUTPUTHAZARD = ( VIDEOPROCESSORBLT_INPUTHAZARD + 1 ) ,
    CREATEVIDEODECODEROUTPUTVIEW_OUTOFMEMORY_RETURN    = ( VIDEOPROCESSORBLT_OUTPUTHAZARD + 1 ) ,
    CREATEVIDEODECODEROUTPUTVIEW_NULLPARAM = ( CREATEVIDEODECODEROUTPUTVIEW_OUTOFMEMORY_RETURN + 1 ) ,
    CREATEVIDEODECODEROUTPUTVIEW_INVALIDTYPE   = ( CREATEVIDEODECODEROUTPUTVIEW_NULLPARAM + 1 ) ,
    CREATEVIDEODECODEROUTPUTVIEW_INVALIDBIND   = ( CREATEVIDEODECODEROUTPUTVIEW_INVALIDTYPE + 1 ) ,
    CREATEVIDEODECODEROUTPUTVIEW_UNSUPPORTEDFORMAT = ( CREATEVIDEODECODEROUTPUTVIEW_INVALIDBIND + 1 ) ,
    CREATEVIDEODECODEROUTPUTVIEW_INVALIDMIP    = ( CREATEVIDEODECODEROUTPUTVIEW_UNSUPPORTEDFORMAT + 1 ) ,
    CREATEVIDEODECODEROUTPUTVIEW_UNSUPPORTEMIP = ( CREATEVIDEODECODEROUTPUTVIEW_INVALIDMIP + 1 ) ,
    CREATEVIDEODECODEROUTPUTVIEW_INVALIDARRAYSIZE  = ( CREATEVIDEODECODEROUTPUTVIEW_UNSUPPORTEMIP + 1 ) ,
    CREATEVIDEODECODEROUTPUTVIEW_INVALIDARRAY  = ( CREATEVIDEODECODEROUTPUTVIEW_INVALIDARRAYSIZE + 1 ) ,
    CREATEVIDEODECODEROUTPUTVIEW_INVALIDDIMENSION  = ( CREATEVIDEODECODEROUTPUTVIEW_INVALIDARRAY + 1 ) ,
    CREATEVIDEOPROCESSORINPUTVIEW_OUTOFMEMORY_RETURN   = ( CREATEVIDEODECODEROUTPUTVIEW_INVALIDDIMENSION + 1 ) ,
    CREATEVIDEOPROCESSORINPUTVIEW_NULLPARAM    = ( CREATEVIDEOPROCESSORINPUTVIEW_OUTOFMEMORY_RETURN + 1 ) ,
    CREATEVIDEOPROCESSORINPUTVIEW_INVALIDTYPE  = ( CREATEVIDEOPROCESSORINPUTVIEW_NULLPARAM + 1 ) ,
    CREATEVIDEOPROCESSORINPUTVIEW_INVALIDBIND  = ( CREATEVIDEOPROCESSORINPUTVIEW_INVALIDTYPE + 1 ) ,
    CREATEVIDEOPROCESSORINPUTVIEW_INVALIDMISC  = ( CREATEVIDEOPROCESSORINPUTVIEW_INVALIDBIND + 1 ) ,
    CREATEVIDEOPROCESSORINPUTVIEW_INVALIDUSAGE = ( CREATEVIDEOPROCESSORINPUTVIEW_INVALIDMISC + 1 ) ,
    CREATEVIDEOPROCESSORINPUTVIEW_INVALIDFORMAT    = ( CREATEVIDEOPROCESSORINPUTVIEW_INVALIDUSAGE + 1 ) ,
    CREATEVIDEOPROCESSORINPUTVIEW_INVALIDFOURCC    = ( CREATEVIDEOPROCESSORINPUTVIEW_INVALIDFORMAT + 1 ) ,
    CREATEVIDEOPROCESSORINPUTVIEW_INVALIDMIP   = ( CREATEVIDEOPROCESSORINPUTVIEW_INVALIDFOURCC + 1 ) ,
    CREATEVIDEOPROCESSORINPUTVIEW_UNSUPPORTEDMIP   = ( CREATEVIDEOPROCESSORINPUTVIEW_INVALIDMIP + 1 ) ,
    CREATEVIDEOPROCESSORINPUTVIEW_INVALIDARRAYSIZE = ( CREATEVIDEOPROCESSORINPUTVIEW_UNSUPPORTEDMIP + 1 ) ,
    CREATEVIDEOPROCESSORINPUTVIEW_INVALIDARRAY = ( CREATEVIDEOPROCESSORINPUTVIEW_INVALIDARRAYSIZE + 1 ) ,
    CREATEVIDEOPROCESSORINPUTVIEW_INVALIDDIMENSION = ( CREATEVIDEOPROCESSORINPUTVIEW_INVALIDARRAY + 1 ) ,
    CREATEVIDEOPROCESSOROUTPUTVIEW_OUTOFMEMORY_RETURN  = ( CREATEVIDEOPROCESSORINPUTVIEW_INVALIDDIMENSION + 1 ) ,
    CREATEVIDEOPROCESSOROUTPUTVIEW_NULLPARAM   = ( CREATEVIDEOPROCESSOROUTPUTVIEW_OUTOFMEMORY_RETURN + 1 ) ,
    CREATEVIDEOPROCESSOROUTPUTVIEW_INVALIDTYPE = ( CREATEVIDEOPROCESSOROUTPUTVIEW_NULLPARAM + 1 ) ,
    CREATEVIDEOPROCESSOROUTPUTVIEW_INVALIDBIND = ( CREATEVIDEOPROCESSOROUTPUTVIEW_INVALIDTYPE + 1 ) ,
    CREATEVIDEOPROCESSOROUTPUTVIEW_INVALIDFORMAT   = ( CREATEVIDEOPROCESSOROUTPUTVIEW_INVALIDBIND + 1 ) ,
    CREATEVIDEOPROCESSOROUTPUTVIEW_INVALIDMIP  = ( CREATEVIDEOPROCESSOROUTPUTVIEW_INVALIDFORMAT + 1 ) ,
    CREATEVIDEOPROCESSOROUTPUTVIEW_UNSUPPORTEDMIP  = ( CREATEVIDEOPROCESSOROUTPUTVIEW_INVALIDMIP + 1 ) ,
    CREATEVIDEOPROCESSOROUTPUTVIEW_UNSUPPORTEDARRAY    = ( CREATEVIDEOPROCESSOROUTPUTVIEW_UNSUPPORTEDMIP + 1 ) ,
    CREATEVIDEOPROCESSOROUTPUTVIEW_INVALIDARRAY    = ( CREATEVIDEOPROCESSOROUTPUTVIEW_UNSUPPORTEDARRAY + 1 ) ,
    CREATEVIDEOPROCESSOROUTPUTVIEW_INVALIDDIMENSION    = ( CREATEVIDEOPROCESSOROUTPUTVIEW_INVALIDARRAY + 1 ) ,
    DEVICE_DRAW_INVALID_USE_OF_FORCED_SAMPLE_COUNT = ( CREATEVIDEOPROCESSOROUTPUTVIEW_INVALIDDIMENSION + 1 ) ,
    CREATEBLENDSTATE_INVALIDLOGICOPS   = ( DEVICE_DRAW_INVALID_USE_OF_FORCED_SAMPLE_COUNT + 1 ) ,
    CREATESHADERRESOURCEVIEW_INVALIDDARRAYWITHDECODER  = ( CREATEBLENDSTATE_INVALIDLOGICOPS + 1 ) ,
    CREATEUNORDEREDACCESSVIEW_INVALIDDARRAYWITHDECODER = ( CREATESHADERRESOURCEVIEW_INVALIDDARRAYWITHDECODER + 1 ) ,
    CREATERENDERTARGETVIEW_INVALIDDARRAYWITHDECODER    = ( CREATEUNORDEREDACCESSVIEW_INVALIDDARRAYWITHDECODER + 1 ) ,
    DEVICE_LOCKEDOUT_INTERFACE = ( CREATERENDERTARGETVIEW_INVALIDDARRAYWITHDECODER + 1 ) ,
    REF_WARNING_ATOMIC_INCONSISTENT    = ( DEVICE_LOCKEDOUT_INTERFACE + 1 ) ,
    REF_WARNING_READING_UNINITIALIZED_RESOURCE = ( REF_WARNING_ATOMIC_INCONSISTENT + 1 ) ,
    REF_WARNING_RAW_HAZARD = ( REF_WARNING_READING_UNINITIALIZED_RESOURCE + 1 ) ,
    REF_WARNING_WAR_HAZARD = ( REF_WARNING_RAW_HAZARD + 1 ) ,
    REF_WARNING_WAW_HAZARD = ( REF_WARNING_WAR_HAZARD + 1 ) ,
    CREATECRYPTOSESSION_NULLPARAM  = ( REF_WARNING_WAW_HAZARD + 1 ) ,
    CREATECRYPTOSESSION_OUTOFMEMORY_RETURN = ( CREATECRYPTOSESSION_NULLPARAM + 1 ) ,
    GETCRYPTOTYPE_NULLPARAM    = ( CREATECRYPTOSESSION_OUTOFMEMORY_RETURN + 1 ) ,
    GETDECODERPROFILE_NULLPARAM    = ( GETCRYPTOTYPE_NULLPARAM + 1 ) ,
    GETCRYPTOSESSIONCERTIFICATESIZE_NULLPARAM  = ( GETDECODERPROFILE_NULLPARAM + 1 ) ,
    GETCRYPTOSESSIONCERTIFICATE_NULLPARAM  = ( GETCRYPTOSESSIONCERTIFICATESIZE_NULLPARAM + 1 ) ,
    GETCRYPTOSESSIONCERTIFICATE_WRONGSIZE  = ( GETCRYPTOSESSIONCERTIFICATE_NULLPARAM + 1 ) ,
    GETCRYPTOSESSIONHANDLE_WRONGSIZE   = ( GETCRYPTOSESSIONCERTIFICATE_WRONGSIZE + 1 ) ,
    NEGOTIATECRPYTOSESSIONKEYEXCHANGE_NULLPARAM    = ( GETCRYPTOSESSIONHANDLE_WRONGSIZE + 1 ) ,
    ENCRYPTIONBLT_UNSUPPORTED  = ( NEGOTIATECRPYTOSESSIONKEYEXCHANGE_NULLPARAM + 1 ) ,
    ENCRYPTIONBLT_NULLPARAM    = ( ENCRYPTIONBLT_UNSUPPORTED + 1 ) ,
    ENCRYPTIONBLT_SRC_WRONGDEVICE  = ( ENCRYPTIONBLT_NULLPARAM + 1 ) ,
    ENCRYPTIONBLT_DST_WRONGDEVICE  = ( ENCRYPTIONBLT_SRC_WRONGDEVICE + 1 ) ,
    ENCRYPTIONBLT_FORMAT_MISMATCH  = ( ENCRYPTIONBLT_DST_WRONGDEVICE + 1 ) ,
    ENCRYPTIONBLT_SIZE_MISMATCH    = ( ENCRYPTIONBLT_FORMAT_MISMATCH + 1 ) ,
    ENCRYPTIONBLT_SRC_MULTISAMPLED = ( ENCRYPTIONBLT_SIZE_MISMATCH + 1 ) ,
    ENCRYPTIONBLT_DST_NOT_STAGING  = ( ENCRYPTIONBLT_SRC_MULTISAMPLED + 1 ) ,
    ENCRYPTIONBLT_SRC_MAPPED   = ( ENCRYPTIONBLT_DST_NOT_STAGING + 1 ) ,
    ENCRYPTIONBLT_DST_MAPPED   = ( ENCRYPTIONBLT_SRC_MAPPED + 1 ) ,
    ENCRYPTIONBLT_SRC_OFFERED  = ( ENCRYPTIONBLT_DST_MAPPED + 1 ) ,
    ENCRYPTIONBLT_DST_OFFERED  = ( ENCRYPTIONBLT_SRC_OFFERED + 1 ) ,
    ENCRYPTIONBLT_SRC_CONTENT_UNDEFINED    = ( ENCRYPTIONBLT_DST_OFFERED + 1 ) ,
    DECRYPTIONBLT_UNSUPPORTED  = ( ENCRYPTIONBLT_SRC_CONTENT_UNDEFINED + 1 ) ,
    DECRYPTIONBLT_NULLPARAM    = ( DECRYPTIONBLT_UNSUPPORTED + 1 ) ,
    DECRYPTIONBLT_SRC_WRONGDEVICE  = ( DECRYPTIONBLT_NULLPARAM + 1 ) ,
    DECRYPTIONBLT_DST_WRONGDEVICE  = ( DECRYPTIONBLT_SRC_WRONGDEVICE + 1 ) ,
    DECRYPTIONBLT_FORMAT_MISMATCH  = ( DECRYPTIONBLT_DST_WRONGDEVICE + 1 ) ,
    DECRYPTIONBLT_SIZE_MISMATCH    = ( DECRYPTIONBLT_FORMAT_MISMATCH + 1 ) ,
    DECRYPTIONBLT_DST_MULTISAMPLED = ( DECRYPTIONBLT_SIZE_MISMATCH + 1 ) ,
    DECRYPTIONBLT_SRC_NOT_STAGING  = ( DECRYPTIONBLT_DST_MULTISAMPLED + 1 ) ,
    DECRYPTIONBLT_DST_NOT_RENDER_TARGET    = ( DECRYPTIONBLT_SRC_NOT_STAGING + 1 ) ,
    DECRYPTIONBLT_SRC_MAPPED   = ( DECRYPTIONBLT_DST_NOT_RENDER_TARGET + 1 ) ,
    DECRYPTIONBLT_DST_MAPPED   = ( DECRYPTIONBLT_SRC_MAPPED + 1 ) ,
    DECRYPTIONBLT_SRC_OFFERED  = ( DECRYPTIONBLT_DST_MAPPED + 1 ) ,
    DECRYPTIONBLT_DST_OFFERED  = ( DECRYPTIONBLT_SRC_OFFERED + 1 ) ,
    DECRYPTIONBLT_SRC_CONTENT_UNDEFINED    = ( DECRYPTIONBLT_DST_OFFERED + 1 ) ,
    STARTSESSIONKEYREFRESH_NULLPARAM   = ( DECRYPTIONBLT_SRC_CONTENT_UNDEFINED + 1 ) ,
    STARTSESSIONKEYREFRESH_INVALIDSIZE = ( STARTSESSIONKEYREFRESH_NULLPARAM + 1 ) ,
    FINISHSESSIONKEYREFRESH_NULLPARAM  = ( STARTSESSIONKEYREFRESH_INVALIDSIZE + 1 ) ,
    GETENCRYPTIONBLTKEY_NULLPARAM  = ( FINISHSESSIONKEYREFRESH_NULLPARAM + 1 ) ,
    GETENCRYPTIONBLTKEY_INVALIDSIZE    = ( GETENCRYPTIONBLTKEY_NULLPARAM + 1 ) ,
    GETCONTENTPROTECTIONCAPS_NULLPARAM = ( GETENCRYPTIONBLTKEY_INVALIDSIZE + 1 ) ,
    CHECKCRYPTOKEYEXCHANGE_NULLPARAM   = ( GETCONTENTPROTECTIONCAPS_NULLPARAM + 1 ) ,
    CHECKCRYPTOKEYEXCHANGE_INVALIDINDEX    = ( CHECKCRYPTOKEYEXCHANGE_NULLPARAM + 1 ) ,
    CREATEAUTHENTICATEDCHANNEL_NULLPARAM   = ( CHECKCRYPTOKEYEXCHANGE_INVALIDINDEX + 1 ) ,
    CREATEAUTHENTICATEDCHANNEL_UNSUPPORTED = ( CREATEAUTHENTICATEDCHANNEL_NULLPARAM + 1 ) ,
    CREATEAUTHENTICATEDCHANNEL_INVALIDTYPE = ( CREATEAUTHENTICATEDCHANNEL_UNSUPPORTED + 1 ) ,
    CREATEAUTHENTICATEDCHANNEL_OUTOFMEMORY_RETURN  = ( CREATEAUTHENTICATEDCHANNEL_INVALIDTYPE + 1 ) ,
    GETAUTHENTICATEDCHANNELCERTIFICATESIZE_INVALIDCHANNEL  = ( CREATEAUTHENTICATEDCHANNEL_OUTOFMEMORY_RETURN + 1 ) ,
    GETAUTHENTICATEDCHANNELCERTIFICATESIZE_NULLPARAM   = ( GETAUTHENTICATEDCHANNELCERTIFICATESIZE_INVALIDCHANNEL + 1 ) ,
    GETAUTHENTICATEDCHANNELCERTIFICATE_INVALIDCHANNEL  = ( GETAUTHENTICATEDCHANNELCERTIFICATESIZE_NULLPARAM + 1 ) ,
    GETAUTHENTICATEDCHANNELCERTIFICATE_NULLPARAM   = ( GETAUTHENTICATEDCHANNELCERTIFICATE_INVALIDCHANNEL + 1 ) ,
    GETAUTHENTICATEDCHANNELCERTIFICATE_WRONGSIZE   = ( GETAUTHENTICATEDCHANNELCERTIFICATE_NULLPARAM + 1 ) ,
    NEGOTIATEAUTHENTICATEDCHANNELKEYEXCHANGE_INVALIDCHANNEL    = ( GETAUTHENTICATEDCHANNELCERTIFICATE_WRONGSIZE + 1 ) ,
    NEGOTIATEAUTHENTICATEDCHANNELKEYEXCHANGE_NULLPARAM = ( NEGOTIATEAUTHENTICATEDCHANNELKEYEXCHANGE_INVALIDCHANNEL + 1 ) ,
    QUERYAUTHENTICATEDCHANNEL_NULLPARAM    = ( NEGOTIATEAUTHENTICATEDCHANNELKEYEXCHANGE_NULLPARAM + 1 ) ,
    QUERYAUTHENTICATEDCHANNEL_WRONGCHANNEL = ( QUERYAUTHENTICATEDCHANNEL_NULLPARAM + 1 ) ,
    QUERYAUTHENTICATEDCHANNEL_UNSUPPORTEDQUERY = ( QUERYAUTHENTICATEDCHANNEL_WRONGCHANNEL + 1 ) ,
    QUERYAUTHENTICATEDCHANNEL_WRONGSIZE    = ( QUERYAUTHENTICATEDCHANNEL_UNSUPPORTEDQUERY + 1 ) ,
    QUERYAUTHENTICATEDCHANNEL_INVALIDPROCESSINDEX  = ( QUERYAUTHENTICATEDCHANNEL_WRONGSIZE + 1 ) ,
    CONFIGUREAUTHENTICATEDCHANNEL_NULLPARAM    = ( QUERYAUTHENTICATEDCHANNEL_INVALIDPROCESSINDEX + 1 ) ,
    CONFIGUREAUTHENTICATEDCHANNEL_WRONGCHANNEL = ( CONFIGUREAUTHENTICATEDCHANNEL_NULLPARAM + 1 ) ,
    CONFIGUREAUTHENTICATEDCHANNEL_UNSUPPORTEDCONFIGURE = ( CONFIGUREAUTHENTICATEDCHANNEL_WRONGCHANNEL + 1 ) ,
    CONFIGUREAUTHENTICATEDCHANNEL_WRONGSIZE    = ( CONFIGUREAUTHENTICATEDCHANNEL_UNSUPPORTEDCONFIGURE + 1 ) ,
    CONFIGUREAUTHENTICATEDCHANNEL_INVALIDPROCESSIDTYPE = ( CONFIGUREAUTHENTICATEDCHANNEL_WRONGSIZE + 1 ) ,
    VSSETCONSTANTBUFFERS_INVALIDBUFFEROFFSETORCOUNT    = ( CONFIGUREAUTHENTICATEDCHANNEL_INVALIDPROCESSIDTYPE + 1 ) ,
    DSSETCONSTANTBUFFERS_INVALIDBUFFEROFFSETORCOUNT    = ( VSSETCONSTANTBUFFERS_INVALIDBUFFEROFFSETORCOUNT + 1 ) ,
    HSSETCONSTANTBUFFERS_INVALIDBUFFEROFFSETORCOUNT    = ( DSSETCONSTANTBUFFERS_INVALIDBUFFEROFFSETORCOUNT + 1 ) ,
    GSSETCONSTANTBUFFERS_INVALIDBUFFEROFFSETORCOUNT    = ( HSSETCONSTANTBUFFERS_INVALIDBUFFEROFFSETORCOUNT + 1 ) ,
    PSSETCONSTANTBUFFERS_INVALIDBUFFEROFFSETORCOUNT    = ( GSSETCONSTANTBUFFERS_INVALIDBUFFEROFFSETORCOUNT + 1 ) ,
    CSSETCONSTANTBUFFERS_INVALIDBUFFEROFFSETORCOUNT    = ( PSSETCONSTANTBUFFERS_INVALIDBUFFEROFFSETORCOUNT + 1 ) ,
    NEGOTIATECRPYTOSESSIONKEYEXCHANGE_INVALIDSIZE  = ( CSSETCONSTANTBUFFERS_INVALIDBUFFEROFFSETORCOUNT + 1 ) ,
    NEGOTIATEAUTHENTICATEDCHANNELKEYEXCHANGE_INVALIDSIZE   = ( NEGOTIATECRPYTOSESSIONKEYEXCHANGE_INVALIDSIZE + 1 ) ,
    OFFERRESOURCES_INVALIDPRIORITY = ( NEGOTIATEAUTHENTICATEDCHANNELKEYEXCHANGE_INVALIDSIZE + 1 ) ,
    GETCRYPTOSESSIONHANDLE_OUTOFMEMORY = ( OFFERRESOURCES_INVALIDPRIORITY + 1 ) ,
    ACQUIREHANDLEFORCAPTURE_NULLPARAM  = ( GETCRYPTOSESSIONHANDLE_OUTOFMEMORY + 1 ) ,
    ACQUIREHANDLEFORCAPTURE_INVALIDTYPE    = ( ACQUIREHANDLEFORCAPTURE_NULLPARAM + 1 ) ,
    ACQUIREHANDLEFORCAPTURE_INVALIDBIND    = ( ACQUIREHANDLEFORCAPTURE_INVALIDTYPE + 1 ) ,
    ACQUIREHANDLEFORCAPTURE_INVALIDARRAY   = ( ACQUIREHANDLEFORCAPTURE_INVALIDBIND + 1 ) ,
    VIDEOPROCESSORSETSTREAMROTATION_NULLPARAM  = ( ACQUIREHANDLEFORCAPTURE_INVALIDARRAY + 1 ) ,
    VIDEOPROCESSORSETSTREAMROTATION_INVALIDSTREAM  = ( VIDEOPROCESSORSETSTREAMROTATION_NULLPARAM + 1 ) ,
    VIDEOPROCESSORSETSTREAMROTATION_INVALID    = ( VIDEOPROCESSORSETSTREAMROTATION_INVALIDSTREAM + 1 ) ,
    VIDEOPROCESSORSETSTREAMROTATION_UNSUPPORTED    = ( VIDEOPROCESSORSETSTREAMROTATION_INVALID + 1 ) ,
    VIDEOPROCESSORGETSTREAMROTATION_NULLPARAM  = ( VIDEOPROCESSORSETSTREAMROTATION_UNSUPPORTED + 1 ) ,
    DEVICE_CLEARVIEW_INVALIDVIEW   = ( VIDEOPROCESSORGETSTREAMROTATION_NULLPARAM + 1 ) ,
    DEVICE_CREATEVERTEXSHADER_DOUBLEEXTENSIONSNOTSUPPORTED = ( DEVICE_CLEARVIEW_INVALIDVIEW + 1 ) ,
    DEVICE_CREATEVERTEXSHADER_SHADEREXTENSIONSNOTSUPPORTED = ( DEVICE_CREATEVERTEXSHADER_DOUBLEEXTENSIONSNOTSUPPORTED + 1 ) ,
    DEVICE_CREATEHULLSHADER_DOUBLEEXTENSIONSNOTSUPPORTED   = ( DEVICE_CREATEVERTEXSHADER_SHADEREXTENSIONSNOTSUPPORTED + 1 ) ,
    DEVICE_CREATEHULLSHADER_SHADEREXTENSIONSNOTSUPPORTED   = ( DEVICE_CREATEHULLSHADER_DOUBLEEXTENSIONSNOTSUPPORTED + 1 ) ,
    DEVICE_CREATEDOMAINSHADER_DOUBLEEXTENSIONSNOTSUPPORTED = ( DEVICE_CREATEHULLSHADER_SHADEREXTENSIONSNOTSUPPORTED + 1 ) ,
    DEVICE_CREATEDOMAINSHADER_SHADEREXTENSIONSNOTSUPPORTED = ( DEVICE_CREATEDOMAINSHADER_DOUBLEEXTENSIONSNOTSUPPORTED + 1 ) ,
    DEVICE_CREATEGEOMETRYSHADER_DOUBLEEXTENSIONSNOTSUPPORTED   = ( DEVICE_CREATEDOMAINSHADER_SHADEREXTENSIONSNOTSUPPORTED + 1 ) ,
    DEVICE_CREATEGEOMETRYSHADER_SHADEREXTENSIONSNOTSUPPORTED   = ( DEVICE_CREATEGEOMETRYSHADER_DOUBLEEXTENSIONSNOTSUPPORTED + 1 ) ,
    DEVICE_CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_DOUBLEEXTENSIONSNOTSUPPORTED   = ( DEVICE_CREATEGEOMETRYSHADER_SHADEREXTENSIONSNOTSUPPORTED + 1 ) ,
    DEVICE_CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_SHADEREXTENSIONSNOTSUPPORTED   = ( DEVICE_CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_DOUBLEEXTENSIONSNOTSUPPORTED + 1 ) ,
    DEVICE_CREATEPIXELSHADER_DOUBLEEXTENSIONSNOTSUPPORTED  = ( DEVICE_CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_SHADEREXTENSIONSNOTSUPPORTED + 1 ) ,
    DEVICE_CREATEPIXELSHADER_SHADEREXTENSIONSNOTSUPPORTED  = ( DEVICE_CREATEPIXELSHADER_DOUBLEEXTENSIONSNOTSUPPORTED + 1 ) ,
    DEVICE_CREATECOMPUTESHADER_DOUBLEEXTENSIONSNOTSUPPORTED    = ( DEVICE_CREATEPIXELSHADER_SHADEREXTENSIONSNOTSUPPORTED + 1 ) ,
    DEVICE_CREATECOMPUTESHADER_SHADEREXTENSIONSNOTSUPPORTED    = ( DEVICE_CREATECOMPUTESHADER_DOUBLEEXTENSIONSNOTSUPPORTED + 1 ) ,
    DEVICE_SHADER_LINKAGE_MINPRECISION = ( DEVICE_CREATECOMPUTESHADER_SHADEREXTENSIONSNOTSUPPORTED + 1 ) ,
    VIDEOPROCESSORSETSTREAMALPHA_UNSUPPORTED   = ( DEVICE_SHADER_LINKAGE_MINPRECISION + 1 ) ,
    VIDEOPROCESSORSETSTREAMPIXELASPECTRATIO_UNSUPPORTED    = ( VIDEOPROCESSORSETSTREAMALPHA_UNSUPPORTED + 1 ) ,
    DEVICE_CREATEVERTEXSHADER_UAVSNOTSUPPORTED = ( VIDEOPROCESSORSETSTREAMPIXELASPECTRATIO_UNSUPPORTED + 1 ) ,
    DEVICE_CREATEHULLSHADER_UAVSNOTSUPPORTED   = ( DEVICE_CREATEVERTEXSHADER_UAVSNOTSUPPORTED + 1 ) ,
    DEVICE_CREATEDOMAINSHADER_UAVSNOTSUPPORTED = ( DEVICE_CREATEHULLSHADER_UAVSNOTSUPPORTED + 1 ) ,
    DEVICE_CREATEGEOMETRYSHADER_UAVSNOTSUPPORTED   = ( DEVICE_CREATEDOMAINSHADER_UAVSNOTSUPPORTED + 1 ) ,
    DEVICE_CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_UAVSNOTSUPPORTED   = ( DEVICE_CREATEGEOMETRYSHADER_UAVSNOTSUPPORTED + 1 ) ,
    DEVICE_CREATEPIXELSHADER_UAVSNOTSUPPORTED  = ( DEVICE_CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_UAVSNOTSUPPORTED + 1 ) ,
    DEVICE_CREATECOMPUTESHADER_UAVSNOTSUPPORTED    = ( DEVICE_CREATEPIXELSHADER_UAVSNOTSUPPORTED + 1 ) ,
    DEVICE_OMSETRENDERTARGETSANDUNORDEREDACCESSVIEWS_INVALIDOFFSET = ( DEVICE_CREATECOMPUTESHADER_UAVSNOTSUPPORTED + 1 ) ,
    DEVICE_OMSETRENDERTARGETSANDUNORDEREDACCESSVIEWS_TOOMANYVIEWS  = ( DEVICE_OMSETRENDERTARGETSANDUNORDEREDACCESSVIEWS_INVALIDOFFSET + 1 ) ,
    DEVICE_CLEARVIEW_NOTSUPPORTED  = ( DEVICE_OMSETRENDERTARGETSANDUNORDEREDACCESSVIEWS_TOOMANYVIEWS + 1 ) ,
    SWAPDEVICECONTEXTSTATE_NOTSUPPORTED    = ( DEVICE_CLEARVIEW_NOTSUPPORTED + 1 ) ,
    UPDATESUBRESOURCE_PREFERUPDATESUBRESOURCE1 = ( SWAPDEVICECONTEXTSTATE_NOTSUPPORTED + 1 ) ,
    GETDC_INACCESSIBLE = ( UPDATESUBRESOURCE_PREFERUPDATESUBRESOURCE1 + 1 ) ,
    DEVICE_CLEARVIEW_INVALIDRECT   = ( GETDC_INACCESSIBLE + 1 ) ,
    DEVICE_DRAW_SAMPLE_MASK_IGNORED_ON_FL9 = ( DEVICE_CLEARVIEW_INVALIDRECT + 1 ) ,
    DEVICE_OPEN_SHARED_RESOURCE1_NOT_SUPPORTED = ( DEVICE_DRAW_SAMPLE_MASK_IGNORED_ON_FL9 + 1 ) ,
    DEVICE_OPEN_SHARED_RESOURCE_BY_NAME_NOT_SUPPORTED  = ( DEVICE_OPEN_SHARED_RESOURCE1_NOT_SUPPORTED + 1 ) ,
    ENQUEUESETEVENT_NOT_SUPPORTED  = ( DEVICE_OPEN_SHARED_RESOURCE_BY_NAME_NOT_SUPPORTED + 1 ) ,
    OFFERRELEASE_NOT_SUPPORTED = ( ENQUEUESETEVENT_NOT_SUPPORTED + 1 ) ,
    OFFERRESOURCES_INACCESSIBLE    = ( OFFERRELEASE_NOT_SUPPORTED + 1 ) ,
    CREATEVIDEOPROCESSORINPUTVIEW_INVALIDMSAA  = ( OFFERRESOURCES_INACCESSIBLE + 1 ) ,
    CREATEVIDEOPROCESSOROUTPUTVIEW_INVALIDMSAA = ( CREATEVIDEOPROCESSORINPUTVIEW_INVALIDMSAA + 1 ) ,
    DEVICE_CLEARVIEW_INVALIDSOURCERECT = ( CREATEVIDEOPROCESSOROUTPUTVIEW_INVALIDMSAA + 1 ) ,
    DEVICE_CLEARVIEW_EMPTYRECT = ( DEVICE_CLEARVIEW_INVALIDSOURCERECT + 1 ) ,
    UPDATESUBRESOURCE_EMPTYDESTBOX = ( DEVICE_CLEARVIEW_EMPTYRECT + 1 ) ,
    COPYSUBRESOURCEREGION_EMPTYSOURCEBOX   = ( UPDATESUBRESOURCE_EMPTYDESTBOX + 1 ) ,
    DEVICE_DRAW_OM_RENDER_TARGET_DOES_NOT_SUPPORT_LOGIC_OPS    = ( COPYSUBRESOURCEREGION_EMPTYSOURCEBOX + 1 ) ,
    DEVICE_DRAW_DEPTHSTENCILVIEW_NOT_SET   = ( DEVICE_DRAW_OM_RENDER_TARGET_DOES_NOT_SUPPORT_LOGIC_OPS + 1 ) ,
    DEVICE_DRAW_RENDERTARGETVIEW_NOT_SET   = ( DEVICE_DRAW_DEPTHSTENCILVIEW_NOT_SET + 1 ) ,
    DEVICE_DRAW_RENDERTARGETVIEW_NOT_SET_DUE_TO_FLIP_PRESENT   = ( DEVICE_DRAW_RENDERTARGETVIEW_NOT_SET + 1 ) ,
    DEVICE_UNORDEREDACCESSVIEW_NOT_SET_DUE_TO_FLIP_PRESENT = ( DEVICE_DRAW_RENDERTARGETVIEW_NOT_SET_DUE_TO_FLIP_PRESENT + 1 ) ,
    GETDATAFORNEWHARDWAREKEY_NULLPARAM = ( DEVICE_UNORDEREDACCESSVIEW_NOT_SET_DUE_TO_FLIP_PRESENT + 1 ) ,
    CHECKCRYPTOSESSIONSTATUS_NULLPARAM = ( GETDATAFORNEWHARDWAREKEY_NULLPARAM + 1 ) ,
    GETCRYPTOSESSIONPRIVATEDATASIZE_NULLPARAM  = ( CHECKCRYPTOSESSIONSTATUS_NULLPARAM + 1 ) ,
    GETVIDEODECODERCAPS_NULLPARAM  = ( GETCRYPTOSESSIONPRIVATEDATASIZE_NULLPARAM + 1 ) ,
    GETVIDEODECODERCAPS_ZEROWIDTHHEIGHT    = ( GETVIDEODECODERCAPS_NULLPARAM + 1 ) ,
    CHECKVIDEODECODERDOWNSAMPLING_NULLPARAM    = ( GETVIDEODECODERCAPS_ZEROWIDTHHEIGHT + 1 ) ,
    CHECKVIDEODECODERDOWNSAMPLING_INVALIDCOLORSPACE    = ( CHECKVIDEODECODERDOWNSAMPLING_NULLPARAM + 1 ) ,
    CHECKVIDEODECODERDOWNSAMPLING_ZEROWIDTHHEIGHT  = ( CHECKVIDEODECODERDOWNSAMPLING_INVALIDCOLORSPACE + 1 ) ,
    VIDEODECODERENABLEDOWNSAMPLING_NULLPARAM   = ( CHECKVIDEODECODERDOWNSAMPLING_ZEROWIDTHHEIGHT + 1 ) ,
    VIDEODECODERENABLEDOWNSAMPLING_UNSUPPORTED = ( VIDEODECODERENABLEDOWNSAMPLING_NULLPARAM + 1 ) ,
    VIDEODECODERUPDATEDOWNSAMPLING_NULLPARAM   = ( VIDEODECODERENABLEDOWNSAMPLING_UNSUPPORTED + 1 ) ,
    VIDEODECODERUPDATEDOWNSAMPLING_UNSUPPORTED = ( VIDEODECODERUPDATEDOWNSAMPLING_NULLPARAM + 1 ) ,
    CHECKVIDEOPROCESSORFORMATCONVERSION_NULLPARAM  = ( VIDEODECODERUPDATEDOWNSAMPLING_UNSUPPORTED + 1 ) ,
    VIDEOPROCESSORSETOUTPUTCOLORSPACE1_NULLPARAM   = ( CHECKVIDEOPROCESSORFORMATCONVERSION_NULLPARAM + 1 ) ,
    VIDEOPROCESSORGETOUTPUTCOLORSPACE1_NULLPARAM   = ( VIDEOPROCESSORSETOUTPUTCOLORSPACE1_NULLPARAM + 1 ) ,
    VIDEOPROCESSORSETSTREAMCOLORSPACE1_NULLPARAM   = ( VIDEOPROCESSORGETOUTPUTCOLORSPACE1_NULLPARAM + 1 ) ,
    VIDEOPROCESSORSETSTREAMCOLORSPACE1_INVALIDSTREAM   = ( VIDEOPROCESSORSETSTREAMCOLORSPACE1_NULLPARAM + 1 ) ,
    VIDEOPROCESSORSETSTREAMMIRROR_NULLPARAM    = ( VIDEOPROCESSORSETSTREAMCOLORSPACE1_INVALIDSTREAM + 1 ) ,
    VIDEOPROCESSORSETSTREAMMIRROR_INVALIDSTREAM    = ( VIDEOPROCESSORSETSTREAMMIRROR_NULLPARAM + 1 ) ,
    VIDEOPROCESSORSETSTREAMMIRROR_UNSUPPORTED  = ( VIDEOPROCESSORSETSTREAMMIRROR_INVALIDSTREAM + 1 ) ,
    VIDEOPROCESSORGETSTREAMCOLORSPACE1_NULLPARAM   = ( VIDEOPROCESSORSETSTREAMMIRROR_UNSUPPORTED + 1 ) ,
    VIDEOPROCESSORGETSTREAMMIRROR_NULLPARAM    = ( VIDEOPROCESSORGETSTREAMCOLORSPACE1_NULLPARAM + 1 ) ,
    RECOMMENDVIDEODECODERDOWNSAMPLING_NULLPARAM    = ( VIDEOPROCESSORGETSTREAMMIRROR_NULLPARAM + 1 ) ,
    RECOMMENDVIDEODECODERDOWNSAMPLING_INVALIDCOLORSPACE    = ( RECOMMENDVIDEODECODERDOWNSAMPLING_NULLPARAM + 1 ) ,
    RECOMMENDVIDEODECODERDOWNSAMPLING_ZEROWIDTHHEIGHT  = ( RECOMMENDVIDEODECODERDOWNSAMPLING_INVALIDCOLORSPACE + 1 ) ,
    VIDEOPROCESSORSETOUTPUTSHADERUSAGE_NULLPARAM   = ( RECOMMENDVIDEODECODERDOWNSAMPLING_ZEROWIDTHHEIGHT + 1 ) ,
    VIDEOPROCESSORGETOUTPUTSHADERUSAGE_NULLPARAM   = ( VIDEOPROCESSORSETOUTPUTSHADERUSAGE_NULLPARAM + 1 ) ,
    VIDEOPROCESSORGETBEHAVIORHINTS_NULLPARAM   = ( VIDEOPROCESSORGETOUTPUTSHADERUSAGE_NULLPARAM + 1 ) ,
    VIDEOPROCESSORGETBEHAVIORHINTS_INVALIDSTREAMCOUNT  = ( VIDEOPROCESSORGETBEHAVIORHINTS_NULLPARAM + 1 ) ,
    VIDEOPROCESSORGETBEHAVIORHINTS_TARGETRECT  = ( VIDEOPROCESSORGETBEHAVIORHINTS_INVALIDSTREAMCOUNT + 1 ) ,
    VIDEOPROCESSORGETBEHAVIORHINTS_INVALIDSOURCERECT   = ( VIDEOPROCESSORGETBEHAVIORHINTS_TARGETRECT + 1 ) ,
    VIDEOPROCESSORGETBEHAVIORHINTS_INVALIDDESTRECT = ( VIDEOPROCESSORGETBEHAVIORHINTS_INVALIDSOURCERECT + 1 ) ,
    GETCRYPTOSESSIONPRIVATEDATASIZE_INVALID_KEY_EXCHANGE_TYPE  = ( VIDEOPROCESSORGETBEHAVIORHINTS_INVALIDDESTRECT + 1 ) ,
    D3D11_1_MESSAGES_END   = ( GETCRYPTOSESSIONPRIVATEDATASIZE_INVALID_KEY_EXCHANGE_TYPE + 1 ) ,
    D3D11_2_MESSAGES_START = ( D3D11_1_MESSAGES_END + 1 ) ,
    CREATEBUFFER_INVALIDUSAGE  = ( D3D11_2_MESSAGES_START + 1 ) ,
    CREATETEXTURE1D_INVALIDUSAGE   = ( CREATEBUFFER_INVALIDUSAGE + 1 ) ,
    CREATETEXTURE2D_INVALIDUSAGE   = ( CREATETEXTURE1D_INVALIDUSAGE + 1 ) ,
    CREATEINPUTLAYOUT_LEVEL9_STEPRATE_NOT_1    = ( CREATETEXTURE2D_INVALIDUSAGE + 1 ) ,
    CREATEINPUTLAYOUT_LEVEL9_INSTANCING_NOT_SUPPORTED  = ( CREATEINPUTLAYOUT_LEVEL9_STEPRATE_NOT_1 + 1 ) ,
    UPDATETILEMAPPINGS_INVALID_PARAMETER   = ( CREATEINPUTLAYOUT_LEVEL9_INSTANCING_NOT_SUPPORTED + 1 ) ,
    COPYTILEMAPPINGS_INVALID_PARAMETER = ( UPDATETILEMAPPINGS_INVALID_PARAMETER + 1 ) ,
    COPYTILES_INVALID_PARAMETER    = ( COPYTILEMAPPINGS_INVALID_PARAMETER + 1 ) ,
    UPDATETILES_INVALID_PARAMETER  = ( COPYTILES_INVALID_PARAMETER + 1 ) ,
    RESIZETILEPOOL_INVALID_PARAMETER   = ( UPDATETILES_INVALID_PARAMETER + 1 ) ,
    TILEDRESOURCEBARRIER_INVALID_PARAMETER = ( RESIZETILEPOOL_INVALID_PARAMETER + 1 ) ,
    NULL_TILE_MAPPING_ACCESS_WARNING   = ( TILEDRESOURCEBARRIER_INVALID_PARAMETER + 1 ) ,
    NULL_TILE_MAPPING_ACCESS_ERROR = ( NULL_TILE_MAPPING_ACCESS_WARNING + 1 ) ,
    DIRTY_TILE_MAPPING_ACCESS  = ( NULL_TILE_MAPPING_ACCESS_ERROR + 1 ) ,
    DUPLICATE_TILE_MAPPINGS_IN_COVERED_AREA    = ( DIRTY_TILE_MAPPING_ACCESS + 1 ) ,
    TILE_MAPPINGS_IN_COVERED_AREA_DUPLICATED_OUTSIDE   = ( DUPLICATE_TILE_MAPPINGS_IN_COVERED_AREA + 1 ) ,
    TILE_MAPPINGS_SHARED_BETWEEN_INCOMPATIBLE_RESOURCES    = ( TILE_MAPPINGS_IN_COVERED_AREA_DUPLICATED_OUTSIDE + 1 ) ,
    TILE_MAPPINGS_SHARED_BETWEEN_INPUT_AND_OUTPUT  = ( TILE_MAPPINGS_SHARED_BETWEEN_INCOMPATIBLE_RESOURCES + 1 ) ,
    CHECKMULTISAMPLEQUALITYLEVELS_INVALIDFLAGS = ( TILE_MAPPINGS_SHARED_BETWEEN_INPUT_AND_OUTPUT + 1 ) ,
    GETRESOURCETILING_NONTILED_RESOURCE    = ( CHECKMULTISAMPLEQUALITYLEVELS_INVALIDFLAGS + 1 ) ,
    RESIZETILEPOOL_SHRINK_WITH_MAPPINGS_STILL_DEFINED_PAST_END = ( GETRESOURCETILING_NONTILED_RESOURCE + 1 ) ,
    NEED_TO_CALL_TILEDRESOURCEBARRIER  = ( RESIZETILEPOOL_SHRINK_WITH_MAPPINGS_STILL_DEFINED_PAST_END + 1 ) ,
    CREATEDEVICE_INVALIDARGS   = ( NEED_TO_CALL_TILEDRESOURCEBARRIER + 1 ) ,
    CREATEDEVICE_WARNING   = ( CREATEDEVICE_INVALIDARGS + 1 ) ,
    CLEARUNORDEREDACCESSVIEWUINT_HAZARD    = ( CREATEDEVICE_WARNING + 1 ) ,
    CLEARUNORDEREDACCESSVIEWFLOAT_HAZARD   = ( CLEARUNORDEREDACCESSVIEWUINT_HAZARD + 1 ) ,
    TILED_RESOURCE_TIER_1_BUFFER_TEXTURE_MISMATCH  = ( CLEARUNORDEREDACCESSVIEWFLOAT_HAZARD + 1 ) ,
    CREATE_CRYPTOSESSION   = ( TILED_RESOURCE_TIER_1_BUFFER_TEXTURE_MISMATCH + 1 ) ,
    CREATE_AUTHENTICATEDCHANNEL    = ( CREATE_CRYPTOSESSION + 1 ) ,
    LIVE_CRYPTOSESSION = ( CREATE_AUTHENTICATEDCHANNEL + 1 ) ,
    LIVE_AUTHENTICATEDCHANNEL  = ( LIVE_CRYPTOSESSION + 1 ) ,
    DESTROY_CRYPTOSESSION  = ( LIVE_AUTHENTICATEDCHANNEL + 1 ) ,
    DESTROY_AUTHENTICATEDCHANNEL   = ( DESTROY_CRYPTOSESSION + 1 ) ,
    D3D11_2_MESSAGES_END   = ( DESTROY_AUTHENTICATEDCHANNEL + 1 ) ,
    D3D11_3_MESSAGES_START = ( D3D11_2_MESSAGES_END + 1 ) ,
    CREATERASTERIZERSTATE_INVALID_CONSERVATIVERASTERMODE   = ( D3D11_3_MESSAGES_START + 1 ) ,
    DEVICE_DRAW_INVALID_SYSTEMVALUE    = ( CREATERASTERIZERSTATE_INVALID_CONSERVATIVERASTERMODE + 1 ) ,
    CREATEQUERYORPREDICATE_INVALIDCONTEXTTYPE  = ( DEVICE_DRAW_INVALID_SYSTEMVALUE + 1 ) ,
    CREATEQUERYORPREDICATE_DECODENOTSUPPORTED  = ( CREATEQUERYORPREDICATE_INVALIDCONTEXTTYPE + 1 ) ,
    CREATEQUERYORPREDICATE_ENCODENOTSUPPORTED  = ( CREATEQUERYORPREDICATE_DECODENOTSUPPORTED + 1 ) ,
    CREATESHADERRESOURCEVIEW_INVALIDPLANEINDEX = ( CREATEQUERYORPREDICATE_ENCODENOTSUPPORTED + 1 ) ,
    CREATESHADERRESOURCEVIEW_INVALIDVIDEOPLANEINDEX    = ( CREATESHADERRESOURCEVIEW_INVALIDPLANEINDEX + 1 ) ,
    CREATESHADERRESOURCEVIEW_AMBIGUOUSVIDEOPLANEINDEX  = ( CREATESHADERRESOURCEVIEW_INVALIDVIDEOPLANEINDEX + 1 ) ,
    CREATERENDERTARGETVIEW_INVALIDPLANEINDEX   = ( CREATESHADERRESOURCEVIEW_AMBIGUOUSVIDEOPLANEINDEX + 1 ) ,
    CREATERENDERTARGETVIEW_INVALIDVIDEOPLANEINDEX  = ( CREATERENDERTARGETVIEW_INVALIDPLANEINDEX + 1 ) ,
    CREATERENDERTARGETVIEW_AMBIGUOUSVIDEOPLANEINDEX    = ( CREATERENDERTARGETVIEW_INVALIDVIDEOPLANEINDEX + 1 ) ,
    CREATEUNORDEREDACCESSVIEW_INVALIDPLANEINDEX    = ( CREATERENDERTARGETVIEW_AMBIGUOUSVIDEOPLANEINDEX + 1 ) ,
    CREATEUNORDEREDACCESSVIEW_INVALIDVIDEOPLANEINDEX   = ( CREATEUNORDEREDACCESSVIEW_INVALIDPLANEINDEX + 1 ) ,
    CREATEUNORDEREDACCESSVIEW_AMBIGUOUSVIDEOPLANEINDEX = ( CREATEUNORDEREDACCESSVIEW_INVALIDVIDEOPLANEINDEX + 1 ) ,
    JPEGDECODE_INVALIDSCANDATAOFFSET   = ( CREATEUNORDEREDACCESSVIEW_AMBIGUOUSVIDEOPLANEINDEX + 1 ) ,
    JPEGDECODE_NOTSUPPORTED    = ( JPEGDECODE_INVALIDSCANDATAOFFSET + 1 ) ,
    JPEGDECODE_DIMENSIONSTOOLARGE  = ( JPEGDECODE_NOTSUPPORTED + 1 ) ,
    JPEGDECODE_INVALIDCOMPONENTS   = ( JPEGDECODE_DIMENSIONSTOOLARGE + 1 ) ,
    JPEGDECODE_DESTINATIONNOT2D    = ( JPEGDECODE_INVALIDCOMPONENTS + 1 ) ,
    JPEGDECODE_TILEDRESOURCESUNSUPPORTED   = ( JPEGDECODE_DESTINATIONNOT2D + 1 ) ,
    JPEGDECODE_GUARDRECTSUNSUPPORTED   = ( JPEGDECODE_TILEDRESOURCESUNSUPPORTED + 1 ) ,
    JPEGDECODE_FORMATUNSUPPORTED   = ( JPEGDECODE_GUARDRECTSUNSUPPORTED + 1 ) ,
    JPEGDECODE_INVALIDSUBRESOURCE  = ( JPEGDECODE_FORMATUNSUPPORTED + 1 ) ,
    JPEGDECODE_INVALIDMIPLEVEL = ( JPEGDECODE_INVALIDSUBRESOURCE + 1 ) ,
    JPEGDECODE_EMPTYDESTBOX    = ( JPEGDECODE_INVALIDMIPLEVEL + 1 ) ,
    JPEGDECODE_DESTBOXNOT2D    = ( JPEGDECODE_EMPTYDESTBOX + 1 ) ,
    JPEGDECODE_DESTBOXNOTSUB   = ( JPEGDECODE_DESTBOXNOT2D + 1 ) ,
    JPEGDECODE_DESTBOXESINTERSECT  = ( JPEGDECODE_DESTBOXNOTSUB + 1 ) ,
    JPEGDECODE_XSUBSAMPLEMISMATCH  = ( JPEGDECODE_DESTBOXESINTERSECT + 1 ) ,
    JPEGDECODE_YSUBSAMPLEMISMATCH  = ( JPEGDECODE_XSUBSAMPLEMISMATCH + 1 ) ,
    JPEGDECODE_XSUBSAMPLEODD   = ( JPEGDECODE_YSUBSAMPLEMISMATCH + 1 ) ,
    JPEGDECODE_YSUBSAMPLEODD   = ( JPEGDECODE_XSUBSAMPLEODD + 1 ) ,
    JPEGDECODE_OUTPUTDIMENSIONSTOOLARGE    = ( JPEGDECODE_YSUBSAMPLEODD + 1 ) ,
    JPEGDECODE_NONPOW2SCALEUNSUPPORTED = ( JPEGDECODE_OUTPUTDIMENSIONSTOOLARGE + 1 ) ,
    JPEGDECODE_FRACTIONALDOWNSCALETOLARGE  = ( JPEGDECODE_NONPOW2SCALEUNSUPPORTED + 1 ) ,
    JPEGDECODE_CHROMASIZEMISMATCH  = ( JPEGDECODE_FRACTIONALDOWNSCALETOLARGE + 1 ) ,
    JPEGDECODE_LUMACHROMASIZEMISMATCH  = ( JPEGDECODE_CHROMASIZEMISMATCH + 1 ) ,
    JPEGDECODE_INVALIDNUMDESTINATIONS  = ( JPEGDECODE_LUMACHROMASIZEMISMATCH + 1 ) ,
    JPEGDECODE_SUBBOXUNSUPPORTED   = ( JPEGDECODE_INVALIDNUMDESTINATIONS + 1 ) ,
    JPEGDECODE_1DESTUNSUPPORTEDFORMAT  = ( JPEGDECODE_SUBBOXUNSUPPORTED + 1 ) ,
    JPEGDECODE_3DESTUNSUPPORTEDFORMAT  = ( JPEGDECODE_1DESTUNSUPPORTEDFORMAT + 1 ) ,
    JPEGDECODE_SCALEUNSUPPORTED    = ( JPEGDECODE_3DESTUNSUPPORTEDFORMAT + 1 ) ,
    JPEGDECODE_INVALIDSOURCESIZE   = ( JPEGDECODE_SCALEUNSUPPORTED + 1 ) ,
    JPEGDECODE_INVALIDCOPYFLAGS    = ( JPEGDECODE_INVALIDSOURCESIZE + 1 ) ,
    JPEGDECODE_HAZARD  = ( JPEGDECODE_INVALIDCOPYFLAGS + 1 ) ,
    JPEGDECODE_UNSUPPORTEDSRCBUFFERUSAGE   = ( JPEGDECODE_HAZARD + 1 ) ,
    JPEGDECODE_UNSUPPORTEDSRCBUFFERMISCFLAGS   = ( JPEGDECODE_UNSUPPORTEDSRCBUFFERUSAGE + 1 ) ,
    JPEGDECODE_UNSUPPORTEDDSTTEXTUREUSAGE  = ( JPEGDECODE_UNSUPPORTEDSRCBUFFERMISCFLAGS + 1 ) ,
    JPEGDECODE_BACKBUFFERNOTSUPPORTED  = ( JPEGDECODE_UNSUPPORTEDDSTTEXTUREUSAGE + 1 ) ,
    JPEGDECODE_UNSUPPRTEDCOPYFLAGS = ( JPEGDECODE_BACKBUFFERNOTSUPPORTED + 1 ) ,
    JPEGENCODE_NOTSUPPORTED    = ( JPEGDECODE_UNSUPPRTEDCOPYFLAGS + 1 ) ,
    JPEGENCODE_INVALIDSCANDATAOFFSET   = ( JPEGENCODE_NOTSUPPORTED + 1 ) ,
    JPEGENCODE_INVALIDCOMPONENTS   = ( JPEGENCODE_INVALIDSCANDATAOFFSET + 1 ) ,
    JPEGENCODE_SOURCENOT2D = ( JPEGENCODE_INVALIDCOMPONENTS + 1 ) ,
    JPEGENCODE_TILEDRESOURCESUNSUPPORTED   = ( JPEGENCODE_SOURCENOT2D + 1 ) ,
    JPEGENCODE_GUARDRECTSUNSUPPORTED   = ( JPEGENCODE_TILEDRESOURCESUNSUPPORTED + 1 ) ,
    JPEGENCODE_XSUBSAMPLEMISMATCH  = ( JPEGENCODE_GUARDRECTSUNSUPPORTED + 1 ) ,
    JPEGENCODE_YSUBSAMPLEMISMATCH  = ( JPEGENCODE_XSUBSAMPLEMISMATCH + 1 ) ,
    JPEGENCODE_FORMATUNSUPPORTED   = ( JPEGENCODE_YSUBSAMPLEMISMATCH + 1 ) ,
    JPEGENCODE_INVALIDSUBRESOURCE  = ( JPEGENCODE_FORMATUNSUPPORTED + 1 ) ,
    JPEGENCODE_INVALIDMIPLEVEL = ( JPEGENCODE_INVALIDSUBRESOURCE + 1 ) ,
    JPEGENCODE_DIMENSIONSTOOLARGE  = ( JPEGENCODE_INVALIDMIPLEVEL + 1 ) ,
    JPEGENCODE_HAZARD  = ( JPEGENCODE_DIMENSIONSTOOLARGE + 1 ) ,
    JPEGENCODE_UNSUPPORTEDDSTBUFFERUSAGE   = ( JPEGENCODE_HAZARD + 1 ) ,
    JPEGENCODE_UNSUPPORTEDDSTBUFFERMISCFLAGS   = ( JPEGENCODE_UNSUPPORTEDDSTBUFFERUSAGE + 1 ) ,
    JPEGENCODE_UNSUPPORTEDSRCTEXTUREUSAGE  = ( JPEGENCODE_UNSUPPORTEDDSTBUFFERMISCFLAGS + 1 ) ,
    JPEGENCODE_BACKBUFFERNOTSUPPORTED  = ( JPEGENCODE_UNSUPPORTEDSRCTEXTUREUSAGE + 1 ) ,
    CREATEQUERYORPREDICATE_UNSUPPORTEDCONTEXTTTYPEFORQUERY = ( JPEGENCODE_BACKBUFFERNOTSUPPORTED + 1 ) ,
    FLUSH1_INVALIDCONTEXTTYPE  = ( CREATEQUERYORPREDICATE_UNSUPPORTEDCONTEXTTTYPEFORQUERY + 1 ) ,
    DEVICE_SETHARDWAREPROTECTION_INVALIDCONTEXT    = ( FLUSH1_INVALIDCONTEXTTYPE + 1 ) ,
    VIDEOPROCESSORSETOUTPUTHDRMETADATA_NULLPARAM   = ( DEVICE_SETHARDWAREPROTECTION_INVALIDCONTEXT + 1 ) ,
    VIDEOPROCESSORSETOUTPUTHDRMETADATA_INVALIDSIZE = ( VIDEOPROCESSORSETOUTPUTHDRMETADATA_NULLPARAM + 1 ) ,
    VIDEOPROCESSORGETOUTPUTHDRMETADATA_NULLPARAM   = ( VIDEOPROCESSORSETOUTPUTHDRMETADATA_INVALIDSIZE + 1 ) ,
    VIDEOPROCESSORGETOUTPUTHDRMETADATA_INVALIDSIZE = ( VIDEOPROCESSORGETOUTPUTHDRMETADATA_NULLPARAM + 1 ) ,
    VIDEOPROCESSORSETSTREAMHDRMETADATA_NULLPARAM   = ( VIDEOPROCESSORGETOUTPUTHDRMETADATA_INVALIDSIZE + 1 ) ,
    VIDEOPROCESSORSETSTREAMHDRMETADATA_INVALIDSTREAM   = ( VIDEOPROCESSORSETSTREAMHDRMETADATA_NULLPARAM + 1 ) ,
    VIDEOPROCESSORSETSTREAMHDRMETADATA_INVALIDSIZE = ( VIDEOPROCESSORSETSTREAMHDRMETADATA_INVALIDSTREAM + 1 ) ,
    VIDEOPROCESSORGETSTREAMHDRMETADATA_NULLPARAM   = ( VIDEOPROCESSORSETSTREAMHDRMETADATA_INVALIDSIZE + 1 ) ,
    VIDEOPROCESSORGETSTREAMHDRMETADATA_INVALIDSTREAM   = ( VIDEOPROCESSORGETSTREAMHDRMETADATA_NULLPARAM + 1 ) ,
    VIDEOPROCESSORGETSTREAMHDRMETADATA_INVALIDSIZE = ( VIDEOPROCESSORGETSTREAMHDRMETADATA_INVALIDSTREAM + 1 ) ,
    VIDEOPROCESSORGETSTREAMFRAMEFORMAT_INVALIDSTREAM   = ( VIDEOPROCESSORGETSTREAMHDRMETADATA_INVALIDSIZE + 1 ) ,
    VIDEOPROCESSORGETSTREAMCOLORSPACE_INVALIDSTREAM    = ( VIDEOPROCESSORGETSTREAMFRAMEFORMAT_INVALIDSTREAM + 1 ) ,
    VIDEOPROCESSORGETSTREAMOUTPUTRATE_INVALIDSTREAM    = ( VIDEOPROCESSORGETSTREAMCOLORSPACE_INVALIDSTREAM + 1 ) ,
    VIDEOPROCESSORGETSTREAMSOURCERECT_INVALIDSTREAM    = ( VIDEOPROCESSORGETSTREAMOUTPUTRATE_INVALIDSTREAM + 1 ) ,
    VIDEOPROCESSORGETSTREAMDESTRECT_INVALIDSTREAM  = ( VIDEOPROCESSORGETSTREAMSOURCERECT_INVALIDSTREAM + 1 ) ,
    VIDEOPROCESSORGETSTREAMALPHA_INVALIDSTREAM = ( VIDEOPROCESSORGETSTREAMDESTRECT_INVALIDSTREAM + 1 ) ,
    VIDEOPROCESSORGETSTREAMPALETTE_INVALIDSTREAM   = ( VIDEOPROCESSORGETSTREAMALPHA_INVALIDSTREAM + 1 ) ,
    VIDEOPROCESSORGETSTREAMPIXELASPECTRATIO_INVALIDSTREAM  = ( VIDEOPROCESSORGETSTREAMPALETTE_INVALIDSTREAM + 1 ) ,
    VIDEOPROCESSORGETSTREAMLUMAKEY_INVALIDSTREAM   = ( VIDEOPROCESSORGETSTREAMPIXELASPECTRATIO_INVALIDSTREAM + 1 ) ,
    VIDEOPROCESSORGETSTREAMSTEREOFORMAT_INVALIDSTREAM  = ( VIDEOPROCESSORGETSTREAMLUMAKEY_INVALIDSTREAM + 1 ) ,
    VIDEOPROCESSORGETSTREAMAUTOPROCESSINGMODE_INVALIDSTREAM    = ( VIDEOPROCESSORGETSTREAMSTEREOFORMAT_INVALIDSTREAM + 1 ) ,
    VIDEOPROCESSORGETSTREAMFILTER_INVALIDSTREAM    = ( VIDEOPROCESSORGETSTREAMAUTOPROCESSINGMODE_INVALIDSTREAM + 1 ) ,
    VIDEOPROCESSORGETSTREAMROTATION_INVALIDSTREAM  = ( VIDEOPROCESSORGETSTREAMFILTER_INVALIDSTREAM + 1 ) ,
    VIDEOPROCESSORGETSTREAMCOLORSPACE1_INVALIDSTREAM   = ( VIDEOPROCESSORGETSTREAMROTATION_INVALIDSTREAM + 1 ) ,
    VIDEOPROCESSORGETSTREAMMIRROR_INVALIDSTREAM    = ( VIDEOPROCESSORGETSTREAMCOLORSPACE1_INVALIDSTREAM + 1 ) ,
    CREATE_FENCE   = ( VIDEOPROCESSORGETSTREAMMIRROR_INVALIDSTREAM + 1 ) ,
    LIVE_FENCE = ( CREATE_FENCE + 1 ) ,
    DESTROY_FENCE  = ( LIVE_FENCE + 1 ) ,
    CREATE_SYNCHRONIZEDCHANNEL = ( DESTROY_FENCE + 1 ) ,
    LIVE_SYNCHRONIZEDCHANNEL   = ( CREATE_SYNCHRONIZEDCHANNEL + 1 ) ,
    DESTROY_SYNCHRONIZEDCHANNEL    = ( LIVE_SYNCHRONIZEDCHANNEL + 1 ) ,
    CREATEFENCE_INVALIDFLAGS   = ( DESTROY_SYNCHRONIZEDCHANNEL + 1 ) ,
    D3D11_3_MESSAGES_END   = ( CREATEFENCE_INVALIDFLAGS + 1 ) ,
    D3D11_5_MESSAGES_START = ( D3D11_3_MESSAGES_END + 1 ) ,
    NEGOTIATECRYPTOSESSIONKEYEXCHANGEMT_INVALIDKEYEXCHANGETYPE = ( D3D11_5_MESSAGES_START + 1 ) ,
    NEGOTIATECRYPTOSESSIONKEYEXCHANGEMT_NOT_SUPPORTED  = ( NEGOTIATECRYPTOSESSIONKEYEXCHANGEMT_INVALIDKEYEXCHANGETYPE + 1 ) ,
    DECODERBEGINFRAME_INVALID_HISTOGRAM_COMPONENT_COUNT    = ( NEGOTIATECRYPTOSESSIONKEYEXCHANGEMT_NOT_SUPPORTED + 1 ) ,
    DECODERBEGINFRAME_INVALID_HISTOGRAM_COMPONENT  = ( DECODERBEGINFRAME_INVALID_HISTOGRAM_COMPONENT_COUNT + 1 ) ,
    DECODERBEGINFRAME_INVALID_HISTOGRAM_BUFFER_SIZE    = ( DECODERBEGINFRAME_INVALID_HISTOGRAM_COMPONENT + 1 ) ,
    DECODERBEGINFRAME_INVALID_HISTOGRAM_BUFFER_USAGE   = ( DECODERBEGINFRAME_INVALID_HISTOGRAM_BUFFER_SIZE + 1 ) ,
    DECODERBEGINFRAME_INVALID_HISTOGRAM_BUFFER_MISC_FLAGS  = ( DECODERBEGINFRAME_INVALID_HISTOGRAM_BUFFER_USAGE + 1 ) ,
    DECODERBEGINFRAME_INVALID_HISTOGRAM_BUFFER_OFFSET  = ( DECODERBEGINFRAME_INVALID_HISTOGRAM_BUFFER_MISC_FLAGS + 1 ) ,
    D3D11_5_MESSAGES_END   = ( DECODERBEGINFRAME_INVALID_HISTOGRAM_BUFFER_OFFSET + 1 ) 
};

D3D11MessageCategory :: enum u32 {
    APPLICATIONDEFINED = 0,
    MISCELLANEOUS = 1,
    INITIALIZATION = 2,
    CLEANUP = 3,
    COMPILATION = 4,
    STATECREATION = 5,
    STATESETTING = 6,
    STATEGETTING = 7,
    RESOURCEMANIPULATION = 8,
    EXECUTION = 9,
    SHADER = 10,
};

D3D11MessageSeverity :: enum u32 {
    CORRUPTION = 0,
    ERROR = 1,
    WARNING = 2,
    INFO = 3,
    MESSAGE = 4,
};

D3D11_Info_Queue_Filter_Desc :: struct {
    num_categories: u32,
    category_list: ^D3D11MessageCategory,
    num_severities: u32,
    severity_list: ^D3D11MessageSeverity,
    num_ids: u32,
    id_list: ^D3D11MessageId,
};

D3D11_Info_Queue_Filter :: struct {
    allow_list, deny_list: D3D11_Info_Queue_Filter_Desc,
};

ID3D11_Info_Queue_Vtbl :: struct {
    using base: win32.I_Unknown_Vtbl(ID3D11_Info_Queue),
    set_message_count_limit: proc "std" (this: ^ID3D11_Info_Queue, limit: u64) -> win32.Hresult,
    clear_stored_messages: proc "std" (this: ^ID3D11_Info_Queue),
    get_message: proc "std" (this: ^ID3D11_Info_Queue, idx: u64, out_opt_message: rawptr, in_out_message_byte_length: ^uint),
    get_num_messages_allowed_by_storage_filter: proc "std" (this: ^ID3D11_Info_Queue) -> u64,
    get_num_messages_denied_by_storage_filter: proc "std" (this: ^ID3D11_Info_Queue) -> u64,
    get_num_stored_message: proc "std" (this: ^ID3D11_Info_Queue) -> u64,
    get_num_stored_messages_allowed_by_retrieval_filter: proc "std" (this: ^ID3D11_Info_Queue) -> u64,
    get_num_messages_discarded_by_message_count_limit: proc "std" (this: ^ID3D11_Info_Queue) -> u64,
    get_message_count_limit: proc "std" (this: ^ID3D11_Info_Queue) -> u64,
    add_storage_filter_entries: proc "std" (this:^ ID3D11_Info_Queue, filter: ^D3D11_Info_Queue_Filter) -> win32.Hresult,
    get_storage_filter: proc "std" (this: ^ID3D11_Info_Queue, out_opt_filter: ^D3D11_Info_Queue_Filter, in_out_byte_length: uint) -> win32.Hresult,
    clear_storage_filter: proc "std" (this: ^ID3D11_Info_Queue),
    push_empty_storage_filter: proc "std" (this: ^ID3D11_Info_Queue) -> win32.Hresult,
    push_copy_of_storage_filter: proc "std" (this: ^ID3D11_Info_Queue) -> win32.Hresult,
    push_storage_filter: proc "std" (this: ^ID3D11_Info_Queue, filter: ^D3D11_Info_Queue_Filter) -> win32.Hresult,
    pop_storage_filter: proc "std" (this: ^ID3D11_Info_Queue),
    get_storage_filter_stack_size: proc "std" (this: ^ID3D11_Info_Queue) -> u32,
    add_retrieval_filter_entries: proc "std" (this: ^ID3D11_Info_Queue, filter: ^D3D11_Info_Queue_Filter) -> win32.Hresult,
    clear_retrieval_filter: proc "std" (this: ^ID3D11_Info_Queue),
    push_empty_retrieval_filter: proc "std" (this: ^ID3D11_Info_Queue) -> win32.Hresult,
    push_copy_of_retrieval_filter: proc "std" (this: ^ID3D11_Info_Queue) -> win32.Hresult,
    push_retrieval_filter: proc "std" (this: ^ID3D11_Info_Queue, filter: ^D3D11_Info_Queue_Filter) -> win32.Hresult,
    pop_retrieval_filter: proc "std" (this: ^ID3D11_Info_Queue),
    get_retrieval_filter_stack_size: proc "std" (this: ^ID3D11_Info_Queue) -> u32,
    add_message: proc "std" (this: ^ID3D11_Info_Queue, category: D3D11MessageCategory, severity: D3D11MessageSeverity, id: D3D11MessageId,
        descr: cstring) -> win32.Hresult,
    add_application_message: proc "std" (this: ^ID3D11_Info_Queue, severity: ^D3D11MessageSeverity, descr: cstring) -> win32.Hresult,
    set_break_on_category: proc "std" (this: ^ID3D11_Info_Queue, category: D3D11MessageCategory, enabled: b32) -> win32.Hresult,
    set_break_on_severity: proc "std" (this: ^ID3D11_Info_Queue, severity: D3D11MessageSeverity, enabled: b32) -> win32.Hresult,
    set_break_on_id: proc "std" (this: ^ID3D11_Info_Queue, id: D3D11MessageId, enabled: b32) -> win32.Hresult,
    get_break_on_category: proc "std" (this: ^ID3D11_Info_Queue, category: D3D11MessageCategory) -> b32,
    get_break_on_severity: proc "std" (this: ^ID3D11_Info_Queue, severity: D3D11MessageSeverity) -> b32,
    get_break_on_id: proc "std" (this: ^ID3D11_Info_Queue, id: D3D11MessageId) -> b32,
    set_mute_debug_output: proc "std" (this: ^ID3D11_Info_Queue, mute: b32),
    get_mute_debug_output: proc "std" (this: ^ID3D11_Info_Queue) -> b32,
};

ID3D11_Info_Queue :: struct {
    using vtbl: ^ID3D11_Info_Queue_Vtbl,
};

@(default_calling_convention = "std")
foreign d3d11 {
    @(link_name = "D3D11CreateDevice") create_dx11_device ::
        proc (^IDXGI_Adapter, D3DDriverType, win32.Hmodule, D3D11CreateDeviceFlag, ^D3DFeatureLevel, u32,
            u32, ^^ID3D11_Device, ^D3DFeatureLevel, ^^ID3D11_Device_Context) -> win32.Hresult ---;
    @(link_name = "D3D11CreateDeviceAndSwapChain") create_dx11_device_and_swap_chain :: 
        proc (^IDXGI_Adapter, D3DDriverType, win32.Hmodule, D3D11CreateDeviceFlag, ^D3DFeatureLevel,
            u32, u32, ^DXGI_Swap_Chain_Desc, ^^IDXGI_Swap_Chain, ^^ID3D11_Device,
            ^D3DFeatureLevel, ^^ID3D11_Device_Context
        ) -> win32.Hresult ---;
}