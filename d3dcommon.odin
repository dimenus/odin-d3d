package d3d

import "core:sys/win32"

RIID_D3D10_Blob := &_IID_D3D11_Blob;
_IID_D3D11_Blob := win32.Iid {
    data_one = 0x8BA5FB08,
    data_two = 0x5195,
    data_three = 0x40e2,
    data_four_arr = {
    	0xAC, 0x58, 0x0D, 0x98,
    	0x9C, 0x3A, 0x01, 0x02
    },
};

D3D_FL9_1_REQ_TEXTURE1D_U_DIMENSION          :: 2048;
D3D_FL9_3_REQ_TEXTURE1D_U_DIMENSION          :: 4096;
D3D_FL9_1_REQ_TEXTURE2D_U_OR_V_DIMENSION     :: 2048;
D3D_FL9_3_REQ_TEXTURE2D_U_OR_V_DIMENSION     :: 4096;
D3D_FL9_1_REQ_TEXTURECUBE_DIMENSION          :: 512;
D3D_FL9_3_REQ_TEXTURECUBE_DIMENSION          :: 4096;
D3D_FL9_1_REQ_TEXTURE3D_U_V_OR_W_DIMENSION   :: 256;
D3D_FL9_1_DEFAULT_MAX_ANISOTROPY             :: 2;
D3D_FL9_1_IA_PRIMITIVE_MAX_COUNT             :: 65535;
D3D_FL9_2_IA_PRIMITIVE_MAX_COUNT             :: 1048575;
D3D_FL9_1_SIMULTANEOUS_RENDER_TARGET_COUNT   :: 1;
D3D_FL9_3_SIMULTANEOUS_RENDER_TARGET_COUNT   :: 4;
D3D_FL9_1_MAX_TEXTURE_REPEAT                 :: 128;
D3D_FL9_2_MAX_TEXTURE_REPEAT                 :: 2048;
D3D_FL9_3_MAX_TEXTURE_REPEAT                 :: 8192;

D3DDriverType :: enum u32 {
    UNKNOWN     = 0,
    HARDWARE    = UNKNOWN + 1,
    REFERENCE   = HARDWARE + 1,
    NULL        = REFERENCE + 1,
    SOFTWARE    = NULL + 1,
    WARP        = SOFTWARE + 1,
}

D3DFeatureLevel :: enum u32 {
    NINE_ONE        = 0x9100,
    NINE_TWO        = 0x9200,
    NINE_THREE      = 0x9300,
    TEN_ZERO        = 0xa000,
    TEN_ONE         = 0xa100,
    ELEVEN_ZERO     = 0xb000,
    ELEVEN_ONE      = 0xb100,
    TWELVE_ZERO     = 0xc000,
    TWELVE_ONE      = 0xc100,   
}

D3D10IncludeType :: D3DIncludeType;
D3DIncludeType :: enum u32 {
    LOCAL           = 0,
    SYSTEM          = LOCAL + 1,
}

D3D11Primitive :: D3DPrimitive;
D3DPrimitive :: enum u32 {
    UNDEFINED              = 0,
    POINT                  = 1,
    LINE                   = 2,
    TRIANGLE               = 3,

    LINE_ADJ               = 6,
    TRIANGLE_ADJ           = 7,
    CONTROL_POINT_PATCH1   = 8,
    CONTROL_POINT_PATCH2   = 9,
    CONTROL_POINT_PATCH3   = 10,
    CONTROL_POINT_PATCH4   = 11,
    CONTROL_POINT_PATCH5   = 12,
    CONTROL_POINT_PATCH6   = 13,
    CONTROL_POINT_PATCH7   = 14,
    CONTROL_POINT_PATCH8   = 15,
    CONTROL_POINT_PATCH9   = 16,
    CONTROL_POINT_PATCH10  = 17,
    CONTROL_POINT_PATCH11  = 18,
    CONTROL_POINT_PATCH12  = 19,
    CONTROL_POINT_PATCH13  = 20,
    CONTROL_POINT_PATCH14  = 21,
    CONTROL_POINT_PATCH15  = 22,
    CONTROL_POINT_PATCH16  = 23,
    CONTROL_POINT_PATCH17  = 24,
    CONTROL_POINT_PATCH18  = 25,
    CONTROL_POINT_PATCH19  = 26,
    CONTROL_POINT_PATCH20  = 27,
    CONTROL_POINT_PATCH21  = 28,
    CONTROL_POINT_PATCH22  = 29,
    CONTROL_POINT_PATCH23  = 30,
    CONTROL_POINT_PATCH24  = 31,
    CONTROL_POINT_PATCH25  = 32,
    CONTROL_POINT_PATCH26  = 33,
    CONTROL_POINT_PATCH27  = 34,
    CONTROL_POINT_PATCH28  = 35,
    CONTROL_POINT_PATCH29  = 36,
    CONTROL_POINT_PATCH30  = 37,
    CONTROL_POINT_PATCH31  = 38,
    CONTROL_POINT_PATCH32  = 39,
}

D3D11PrimitiveTopology :: D3DPrimitiveTopology;
D3DPrimitiveTopology :: enum u32 {
    UNDEFINED                   = 0,
    POINT_LIST                  = 1,
    LINE_LIST                   = 2,
    LINE_STRIP                  = 3,
    TRIANGLE_LIST               = 4,
    TRIANGLE_STRIP              = 5,

    LINE_LIST_ADJ               = 10,
    LINE_STRIP_ADJ              = 11,
    TRIANGLE_LIST_ADJ           = 12,
    TRIANGLE_STRIP_ADJ          = 13,

    CONTROL_POINT_PATCH_LIST1   = 33,
    CONTROL_POINT_PATCH_LIST2   = 34,
    CONTROL_POINT_PATCH_LIST3   = 35,
    CONTROL_POINT_PATCH_LIST4   = 36,
    CONTROL_POINT_PATCH_LIST5   = 37,
    CONTROL_POINT_PATCH_LIST6   = 38,
    CONTROL_POINT_PATCH_LIST7   = 39,
    CONTROL_POINT_PATCH_LIST8   = 40,
    CONTROL_POINT_PATCH_LIST9   = 41,
    CONTROL_POINT_PATCH_LIST10  = 42,
    CONTROL_POINT_PATCH_LIST11  = 43,
    CONTROL_POINT_PATCH_LIST12  = 44,
    CONTROL_POINT_PATCH_LIST13  = 45,
    CONTROL_POINT_PATCH_LIST14  = 46,
    CONTROL_POINT_PATCH_LIST15  = 47,
    CONTROL_POINT_PATCH_LIST16  = 48,
    CONTROL_POINT_PATCH_LIST17  = 49,
    CONTROL_POINT_PATCH_LIST18  = 50,
    CONTROL_POINT_PATCH_LIST19  = 51,
    CONTROL_POINT_PATCH_LIST20  = 52,
    CONTROL_POINT_PATCH_LIST21  = 53,
    CONTROL_POINT_PATCH_LIST22  = 54,
    CONTROL_POINT_PATCH_LIST23  = 55,
    CONTROL_POINT_PATCH_LIST24  = 56,
    CONTROL_POINT_PATCH_LIST25  = 57,
    CONTROL_POINT_PATCH_LIST26  = 58,
    CONTROL_POINT_PATCH_LIST27  = 59,
    CONTROL_POINT_PATCH_LIST28  = 60,
    CONTROL_POINT_PATCH_LIST29  = 61,
    CONTROL_POINT_PATCH_LIST30  = 62,
    CONTROL_POINT_PATCH_LIST31  = 63,
    CONTROL_POINT_PATCH_LIST32  = 64,
}

D3D11ShaderResourceViewDimension :: D3DShaderResourceViewDimension;
D3DShaderResourceViewDimension :: enum u32 {
    UNKNOWN                         = 0,
    BUFFER                          = 1,
    TEXTURE1D                       = 2,
    TEXTURE1D_ARRAY                 = 3,
    TEXTURE2D                       = 4,
    TEXTURE2D_ARRAY                 = 5,
    TEXTURE2D_MULTI_SAMPLED         = 6,
    TEXTURE2D_ARRAY_MULTI_SAMPLED   = 7,
    TEXTURE3D                       = 8,
    TEXTURE_CUBE                    = 9,
    TEXTURE_CUBE_ARRAY              = 10,
    BUFFER_EX                       = 11,
}

D3D_Shader_Macro :: struct {
    name: cstring,
    definition: cstring,
}

ID3D10_Blob_Vtbl :: struct {
    using base: win32.I_Unknown_Vtbl(ID3D_Blob),
    get_buffer_pointer: proc "std" (this: ^ID3D_Blob) -> rawptr,
    get_buffer_size: proc "std" (this: ^ID3D_Blob) -> uint,
}

ID3D_Blob :: struct {
	using vtbl: ^ID3D10_Blob_Vtbl,
}

Destruction_Callback_Proc :: proc "std" (data: rawptr);

ID3D_Destruction_Notifier_Vtbl :: struct {
    using base: win32.I_Unknown_Vtbl(ID3D_Destruction_Notifier),
    register_destruction_callback: proc "std" (this: ^ID3D_Destruction_Notifier, callback_fn: Destruction_Callback_Proc, data: rawptr, out_callback_id: ^u32) -> win32.Hresult,
    unregister_destruction_callback: proc "std" (this: ^ID3D_Destruction_Notifier, callback_id: u32) -> win32.Hresult,
}

ID3D_Destruction_Notifier :: struct {
    using vtbl: ^ID3D_Destruction_Notifier_Vtbl,
}

ID3D_Include_Vtbl :: struct {
    open: proc "std" (this: ^ID3D_Include, type: D3DIncludeType, file_name: cstring, parent_data: rawptr, out_data:  rawptr, out_size_of_data: ^u32) -> win32.Hresult,
    close: proc "std" (this: ^ID3D_Include, ptr_to_data_from_open: rawptr) -> win32.Hresult,
}

ID3D_Include :: struct {
    using base: ^ID3D_Include_Vtbl,
}


