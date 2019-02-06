package d3d

import "core:sys/win32"

foreign import "system:dxgi.lib"

RIID_IDXGI_Swap_Chain := &_IID_IDXGI_Swap_Chain;
_IID_IDXGI_Swap_Chain := win32.Iid {
    data_one = 0x310d36a0,
    data_two = 0xd2e7,
    data_three = 0x4c0a,
    data_four_arr = { 
        0xaa, 0x04, 0x6a, 0x9d,
        0x23, 0xb8, 0x88, 0x6a
    },
};

RIID_IDXGI_Factory := &_IID_IDXGI_Factory;
_IID_IDXGI_Factory := win32.Iid {
    data_one = 0x7b7166ec,
    data_two = 0x21c7,
    data_three = 0x44ae,
    data_four_arr = {
        0xb2, 0x1a, 0xc9, 0xae,
        0x32, 0x1a, 0xe3, 0x69
    },
};

RIID_IDXGI_Adapter := &_IID_IDXGI_Adapter;
_IID_IDXGI_Adapter := win32.Iid {
    data_one = 0x2411e7e1,
    data_two = 0x12ac,
    data_three = 0x4ccf,
    data_four_arr = { 
        0xbd, 0x14, 0x97, 0x98, 
        0xe8, 0x53, 0x4d, 0xc0,
    },
};

DXGIEnumModes :: enum u32 {
    Interlaced      = 1,
    Scaling         = 2,
    Stereo          = 4,
    Disabled_Stero  = 8,
};

DXGIError :: enum u32 {
    NO_ERROR                        = 0x0,
    ACCESS_DENIED                   = 0x887A002B,
    ACCESS_LOST                     = 0x887A0026,
    ALREADY_EXISTS                  = 0x887A0036,
    CANNOT_PROTECT_CONTENT          = 0x887A002A,
    DEVICE_HUNG                     = 0x887A0006,
    DEVICE_REMOVED                  = 0x887A0005,
    DEVICE_RESET                    = 0x887A0007,
    DRIVER_INTERNAL_ERROR           = 0x887A0020,
    FRAME_STATISTICS_DISJOINT       = 0x887A000B,
    GRAPHICS_VIDPN_SOURCE_IN_USE    = 0x887A000C,
    INVALID_CALL                    = 0x887A0001,
    MORE_DATA                       = 0x887A0003,
    NAME_ALREADY_EXISTS             = 0x887A002C,
    NON_EXCLUSIVE                   = 0x887A0021,
    NOT_CURRENTLY_AVAILABLE         = 0x887A0022,
    NOT_FOUND                       = 0x887A0002,
    REMOTE_CLIENT_DISCONNECTED      = 0x887A0023,
    REMOTE_OUT_OF_MEMORY            = 0x887A0024,
    RESTRICT_TO_OUTPUT_STALE        = 0x887A0029,
    SDK_COMPONENT_MISSING           = 0x887A002D,
    SESSION_DISCONNECTED            = 0x887A0028,
    UNSUPPORTED                     = 0x887A0004,
    WAIT_TIMEOUT                    = 0x887A0027,
    WAS_STILL_DRAWING               = 0x887A000A,
};

DXGIFormat :: enum u32 {
    UNKNOWN                                     = 0,
    R32G32B32A32_TYPELESS                       = 1,
    R32G32B32A32_FLOAT                          = 2,
    R32G32B32A32_UNSIGNED_INT                   = 3,
    R32G32B32A32_SIGNED_INT                     = 4,
    R32G32B32_TYPELESS                          = 5,
    R32G32B32_FLOAT                             = 6,
    R32G32B32_UNSIGNED_INT                      = 7,
    R32G32B32_SIGNED_INT                        = 8,
    R16G16B16A16_TYPELESS                       = 9,
    R16G16B16A16_FLOAT                          = 10,
    R16G16B16A16_UNSIGNED_NORMALIZED            = 11,
    R16G16B16A16_UNSIGNED_INT                   = 12,
    R16G16B16A16_SIGNED_NORMALIZED              = 13,
    R16G16B16A16_SIGNED_INT                     = 14,
    R32G32_TYPELESS                             = 15,
    R32G32_FLOAT                                = 16,
    R32G32_UNSIGNED_INT                         = 17,
    R32G32_SIGNED_INT                           = 18,
    R32G8X24_TYPELESS                           = 19,
    D32_FLOAT_S8X24_UNSIGNED_INT                = 20,
    R32_FLOAT_X8X24_TYPELESS                    = 21,
    X32_TYPELESS_G8X24_UNSIGNED_INT             = 22,
    R10G10B10A2_TYPELESS                        = 23,
    R10G10B10A2_UNSIGNED_NORMALIZED             = 24,
    R10G10B10A2_UNSIGNED_INT                    = 25,
    R11G11B10_FLOAT                             = 26,
    R8G8B8A8_TYPELESS                           = 27,
    R8G8B8A8_UNSIGNED_NORMALIZED                = 28,
    R8G8B8A8_UNSIGNED_NORMALIZED_SRGB           = 29,
    R8G8B8A8_UNSIGNED_INT                       = 30,
    R8G8B8A8_SIGNED_NORMALIZED                  = 31,
    R8G8B8A8_SIGNED_INT                         = 32,
    R16G16_TYPELESS                             = 33,
    R16G16_FLOAT                                = 34,
    R16G16_UNSIGNED_NORMALIZED                  = 35,
    R16G16_UNSIGNED_INT                         = 36,
    R16G16_SIGNED_NORMALIZED                    = 37,
    R16G16_SIGNED_INT                           = 38,
    R32_TYPELESS                                = 39,
    D32_FLOAT                                   = 40,
    R32_FLOAT                                   = 41,
    R32_UNSIGNED_INT                            = 42,
    R32_SIGNED_INT                              = 43,
    R24G8_TYPELESS                              = 44,
    D24_UNSIGNED_NORMALIZED_S8_UNSIGNED_INT     = 45,
    R24_UNSIGNED_NORMALIZED_X8_TYPELESS         = 46,
    X24_TYPELESS_G8_UNSIGNED_INT                = 47,
    R8G8_TYPELESS                               = 48,
    R8G8_UNSIGNED_NORMALIZED                    = 49,
    R8G8_UNSIGNED_INT                           = 50,
    R8G8_SIGNED_NORMALIZED                      = 51,
    R8G8_SIGNED_INT                             = 52,
    R16_TYPELESS                                = 53,
    R16_FLOAT                                   = 54,
    D16_UNSIGNED_NORMALIZED                     = 55,
    R16_UNSIGNED_NORMALIZED                     = 56,
    R16_UNSIGNED_INT                            = 57,
    R16_SIGNED_NORMALIZED                       = 58,
    R16_SIGNED_INT                              = 59,
    R8_TYPELESS                                 = 60,
    R8_UNSIGNED_NORMALIZED                      = 61,
    R8_UNSIGNED_INT                             = 62,
    R8_SIGNED_NORMALIZED                        = 63,
    R8_SIGNED_INT                               = 64,
    A8_UNSIGNED_NORMALIZED                      = 65,
    R1_UNSIGNED_NORMALIZED                      = 66,
    R9G9B9E5_SHAREDEXP                          = 67,
    R8G8_B8G8_UNSIGNED_NORMALIZED               = 68,
    G8R8_G8B8_UNSIGNED_NORMALIZED               = 69,
    BC1_TYPELESS                                = 70,
    BC1_UNSIGNED_NORMALIZED                     = 71,
    BC1_UNSIGNED_NORMALIZED_SRGB                = 72,
    BC2_TYPELESS                                = 73,
    BC2_UNSIGNED_NORMALIZED                     = 74,
    BC2_UNSIGNED_NORMALIZED_SRGB                = 75,
    BC3_TYPELESS                                = 76,
    BC3_UNSIGNED_NORMALIZED                     = 77,
    BC3_UNSIGNED_NORMALIZED_SRGB                = 78,
    BC4_TYPELESS                                = 79,
    BC4_UNSIGNED_NORMALIZED                     = 80,
    BC4_SIGNED_NORMALIZED                       = 81,
    BC5_TYPELESS                                = 82,
    BC5_UNSIGNED_NORMALIZED                     = 83,
    BC5_SIGNED_NORMALIZED                       = 84,
    B5G6R5_UNSIGNED_NORMALIZED                  = 85,
    B5G5R5A1_UNSIGNED_NORMALIZED                = 86,
    B8G8R8A8_UNSIGNED_NORMALIZED                = 87,
    B8G8R8X8_UNSIGNED_NORMALIZED                = 88,
    R10G10B10_XR_BIAS_A2_UNSIGNED_NORMALIZED    = 89,
    B8G8R8A8_TYPELESS                           = 90,
    B8G8R8A8_UNSIGNED_NORMALIZED_SRGB           = 91,
    B8G8R8X8_TYPELESS                           = 92,
    B8G8R8X8_UNSIGNED_NORMALIZED_SRGB           = 93,
    BC6H_TYPELESS                               = 94,
    BC6H_UF16                                   = 95,
    BC6H_SF16                                   = 96,
    BC7_TYPELESS                                = 97,
    BC7_UNSIGNED_NORMALIZED                     = 98,
    BC7_UNSIGNED_NORMALIZED_SRGB                = 99,
    AYUV                                        = 100,
    Y410                                        = 101,
    Y416                                        = 102,
    NV12                                        = 103,
    P010                                        = 104,
    P016                                        = 105,
    OPAQUE_420                                  = 106,
    YUY2                                        = 107,
    Y210                                        = 108,
    Y216                                        = 109,
    NV11                                        = 110,
    AI44                                        = 111,
    IA44                                        = 112,
    P8                                          = 113,
    A8P8                                        = 114,
    B4G4R4A4_UNSIGNED_NORMALIZED                = 115,

    P208                                        = 130,
    V208                                        = 131,
    V408                                        = 132,

    FORCE_UNSIGNED_INT                          = 0xFFFFFFFF
}

DXGIModeRotation :: enum u32 {
    UNSPECIFIED         = 0,
    IDENTITY            = 1,
    ROTATE_90           = 2,
    ROTATE_180          = 3,
    ROTATE_270          = 4,
}

DXGIModeScaling :: enum u32 {
    UNSPECIFIED         = 0,
    CENTERED            = 1,
    STRETCHED           = 2,
}

DXGIModeScanlineOrder :: enum u32 {
    UNSPECIFIED         = 0,
    PROGRESSIVE         = 1,
    UPPER_FIELD_FIRST   = 2,
    LOWER_FIELD_FIRST   = 3,
}

DXGISwapEffect :: enum u32 {
    DISCARD             = 0,
    SEQUENTIAL          = 1,
    FLIP_SEQUENTIAL     = 3, //not a typo
    FLIP_DISCARD        = 4,
}

DXGIUsage :: enum u32 {
    BACK_BUFFER             = 1 << (2 + 4),
    DISCARD_ON_PRESENT      = 1 << (5 + 4),
    READ_ONLY               = 1 << (4 + 4),
    RENDER_TARGET_OUTPUT    = 1 << (1 + 4),
    SHADER_INPUT            = 1 << (0 + 4),
    USAGE_SHARED            = 1 << (3 + 4),
    UNORDERED_ACCESS        = 1 << (6 + 4),
}

DXGI_Rational :: struct {
    numerator, denominator: u32,
}

DXGI_Adapter_Desc :: struct {
    name: [128]u16,
    vendor_id: u32,
    device_id: u32,
    sub_system_id: u32,
    revision: u32,
    dedicated_video_memory: uint,
    dedicated_system_memory: uint,
    shared_system_memory: uint,
    local_unique_ident: win32.Luid,
}

DXGI_Mode_Desc :: struct {
    width: u32,
    height: u32,
    refresh_rate: DXGI_Rational,
    format: DXGIFormat,
    scanline_order: DXGIModeScanlineOrder,
    scaling: DXGIModeScaling,
}

DXGI_Output_Desc :: struct {
    name: [32]u16,
    coordinates_rect: win32.Rect,
    is_attached_to_desktop: bool,
    rotation_mode: DXGIModeRotation,
    monitor: win32.Hmonitor,
}

DXGI_Sample_Desc :: struct {
    count, quality: u32,
}

DXGI_Swap_Chain_Desc :: struct {
    buffer_desc: DXGI_Mode_Desc,
    sample_desc: DXGI_Sample_Desc,
    buffer_usage: DXGIUsage,
    buffer_count: u32,
    output_window: win32.Hwnd,
    is_windowed: bool,
    swap_effect: DXGISwapEffect,
    flags: u32,
}

DXGI_RGB :: struct {
	red, green, blue: f32
}

DXGI_Gamma_Control :: struct {
	scale, offset: DXGI_RGB,
	gamma_curve: [1025]DXGI_RGB,
}

DXGI_Gamma_Control_Capabilities :: struct {
	is_scale_and_offset_supported: b32,
	max_converted_value: f32,
	min_converted_value: f32,
	num_gamma_control_points: u32,
	control_point_positions: [1025]f32,
}

DXGI_Surface_Desc :: struct {
	width, height: u32,
	format: DXGIFormat,
	sample_desc: DXGI_Sample_Desc,
}

DXGI_Frame_Statistics :: struct {
	present_count: u32,
	present_refresh_count: u32,
	sync_refresh_count: u32,
	
	//note(dimenus): do we need Large_Integer? 
	// https://docs.microsoft.com/en-us/windows/desktop/api/dxgi/ns-dxgi-dxgi_frame_statistics
	sync_qpc_time: i64,
	sync_gpu_time: i64,
}

DXGI_Mapped_Rect :: struct {
	pitch: i32,
	bits: ^u8,
}

IDXGI_Object_Vtbl :: struct(T: typeid) {
    using base: win32.I_Unknown_Vtbl(T),
    set_private_data: proc "std" (this: ^T, name: ^win32.Guid, size: u32, data: rawptr) -> win32.Hresult,
    set_private_data_interface: proc "std" (this: T, name: ^win32.Guid, interface: ^win32.I_Unknown) -> win32.Hresult,
    get_private_data: proc "std" (this: ^T, name: ^win32.Guid, size: ^u32, buffer: rawptr) -> win32.Hresult,
    get_parent: proc "std" (this: ^T, iid: ^win32.Iid, out_ptr: rawptr) -> win32.Hresult,
}

IDXGI_Sub_Object_Vtbl :: struct(T: typeid) {
    using dxgi_obj: IDXGI_Object_Vtbl(T),
    get_device: proc "std" (this: ^IDXGI_Swap_Chain, riid: ^win32.Iid, out_device: rawptr) -> win32.Hresult,
}

IDXGI_Surface_Vtbl :: struct {
	using sub_obj_obj: IDXGI_Sub_Object_Vtbl(IDXGI_Surface),
	get_desc: proc "std" (out_surface_desc: ^DXGI_Surface_Desc),
	map_rect: proc "std" (out_locked_rect: DXGI_Mapped_Rect, flags: u32),
	unmap_rect: proc "std" (),
}

IDXGI_Surface :: struct {
	using vtbl: ^IDXGI_Surface_Vtbl,
}

IDXGI_Output_Vtbl :: struct {
    using dxgi_obj: IDXGI_Object_Vtbl(IDXGI_Output),
    get_desc: proc "std" (this: ^IDXGI_Output, out_desc: ^DXGI_Output_Desc) -> win32.Hresult,
    get_display_mode_list: proc "std" (this: ^IDXGI_Output, format: DXGIFormat, mode: DXGIEnumModes, num_modes_ptr: ^u32, out_desc: ^DXGI_Mode_Desc) -> win32.Hresult,
    find_closest_match_mode: proc "std" (this: ^IDXGI_Output, mode_desc_ptr: ^DXGI_Mode_Desc, out_closest_desc: ^DXGI_Mode_Desc, device: ^win32.I_Unknown) -> win32.Hresult,
    wait_for_vblank: proc "std" (this: ^IDXGI_Output) -> win32.Hresult,
    take_ownership: proc "std" (this: ^IDXGI_Output, device: ^win32.I_Unknown, is_exclusive: b32) -> win32.Hresult,
    release_ownership: proc "std" (this: ^IDXGI_Output),
    get_gamma_control_capabilities: proc "std" (this: ^IDXGI_Output, out_capabilities: ^DXGI_Gamma_Control_Capabilities) -> win32.Hresult,
    set_gamma_contrl: proc "std" (this: ^IDXGI_Output, control_data: ^DXGI_Gamma_Control) -> win32.Hresult,
    get_gamma_control: proc "std" (this: ^IDXGI_Output, out_control_data: ^DXGI_Gamma_Control) -> win32.Hresult,
    set_display_surface: proc "std" (this: ^IDXGI_Output, surface: ^IDXGI_Surface) -> win32.Hresult,
    get_display_surface_data: proc "std" (this: ^IDXGI_Output, dest_surface: ^IDXGI_Surface) -> win32.Hresult,
    get_frame_statistics: proc "std" (this: ^IDXGI_Output, out_frame_stats: DXGI_Frame_Statistics) -> win32.Hresult,
}

IDXGI_Output :: struct {
    using vtbl: ^IDXGI_Output_Vtbl,
}

IDXGI_Adapter_Vtbl :: struct {
    using dxgi_obj: IDXGI_Object_Vtbl(IDXGI_Adapter),
    enumerate_outputs: proc "std" (this: ^IDXGI_Adapter, output: u32, out_outputs: ^^IDXGI_Output) -> win32.Hresult,
    get_desc: proc "std" (this: ^IDXGI_Adapter, out_desc: ^DXGI_Adapter_Desc) -> win32.Hresult,
    check_interface_support: proc "std" (this: ^IDXGI_Adapter, iid: ^win32.Guid, out_ver: ^i64) -> win32.Hresult, 
}

IDXGI_Adapter :: struct {
    using vtbl: ^IDXGI_Adapter_Vtbl,
}

IDXGI_Factory_Vtbl :: struct {
    using dxgi_obj: IDXGI_Object_Vtbl(IDXGI_Factory),
    enumerate_adapters: proc "std" (this: ^IDXGI_Factory, adapter_id: u32, out_adapters: ^^IDXGI_Adapter) -> win32.Hresult,
    make_window_assoc: proc "std" (this: ^IDXGI_Factory, window_hndl: win32.Hwnd, flags: u32) -> win32.Hresult,
    get_window_assoc: proc "std" (this: ^IDXGI_Factory, out_hndl: ^win32.Hwnd) -> win32.Hresult,
    create_swap_chain: proc "std" (this: ^IDXGI_Factory, device: ^win32.I_Unknown, desc: ^DXGI_Swap_Chain_Desc, out_swap_chain: rawptr) -> win32.Hresult,    
    create_software_adapter: proc "std" (this: ^IDXGI_Factory, module: win32.Hmodule, out_adapter: ^^IDXGI_Adapter) -> win32.Hresult,
}

IDXGI_Factory :: struct {
    using vtbl: ^IDXGI_Factory_Vtbl,
}

IDXGI_Swap_Chain_Vtbl :: struct {
    using dxgi_sub_obj: IDXGI_Sub_Object_Vtbl(IDXGI_Swap_Chain),
    present: proc "std" (this: ^IDXGI_Swap_Chain, sync_interval: u32, flags: u32) -> win32.Hresult,
    get_buffer: proc "std" (this: ^IDXGI_Swap_Chain, buffer_id: u32, riid: ^win32.Iid, out_surface: rawptr) -> win32.Hresult,
    set_fullscreen_state: proc "std" (this: ^IDXGI_Swap_Chain, is_fullscreen: b32, target: ^IDXGI_Output) -> win32.Hresult,
    get_fullscreen_state: proc "std" (this: ^IDXGI_Swap_Chain, out_is_fullscreen: ^b32, out_target: ^^IDXGI_Output) -> win32.Hresult,
    get_desc: proc "std" (this: ^IDXGI_Swap_Chain, out_desc: ^DXGI_Swap_Chain_Desc) -> win32.Hresult,
    resize_buffers: proc "std" (this: ^IDXGI_Swap_Chain, buffer_count: u32, width: u32, height: u32, format: DXGIFormat, swap_chain_flags: u32) -> win32.Hresult,
    resize_target: proc "std" (this: ^IDXGI_Swap_Chain, params: ^DXGI_Mode_Desc) -> win32.Hresult,
    get_containing_output: proc "std" (this: ^IDXGI_Swap_Chain, out_output: ^^IDXGI_Output) -> win32.Hresult,
    get_frame_statistics: proc "std" (this: ^IDXGI_Swap_Chain, out_frame_stats: ^DXGI_Frame_Statistics) -> win32.Hresult,
    get_last_present_count: proc "std" (this: ^IDXGI_Swap_Chain, out_count: ^u32) -> win32.Hresult,
}

IDXGI_Swap_Chain :: struct {
    using vtbl: ^IDXGI_Swap_Chain_Vtbl,
}

@(default_calling_convention = "std")
foreign dxgi {
    @(link_name = "CreateDXGIFactory") dxgi_create_factory :: proc "std" (^win32.Iid, ^^IDXGI_Factory) -> win32.Hresult ---;
}
