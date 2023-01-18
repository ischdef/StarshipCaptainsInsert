include <lib/boardgame_insert_toolkit_lib.2.scad>;

// determines whether lids are output.
g_b_print_lid = true;

// determines whether boxes are output.
g_b_print_box = true; 

// Focus on one box
g_isolated_print_box = ""; 

// Used to visualize how all of the boxes fit together. 
g_b_visualization = false;          
        
// this is the outer wall thickness. 
//Default = 1.5mm
g_wall_thickness = 1.5;

// The tolerance value is extra space put between planes of the lid and box that fit together.
// Increase the tolerance to loosen the fit and decrease it to tighten it.
//
// Note that the tolerance is applied exclusively to the lid.
// So if the lid is too tight or too loose, change this value ( up for looser fit, down for tighter fit ) and 
// you only need to reprint the lid.
// 
// The exception is the stackable box, where the bottom of the box is the lid of the box below,
// in which case the tolerance also affects that box bottom.
//
g_tolerance = 0.15;

// This adjusts the position of the lid detents downward. 
// The larger the value, the bigger the gap between the lid and the box.
g_tolerance_detents_pos = 0.1;

// This determines whether the default single material version is output, or, if printing in multiple materials, 
// which layer to output.
//
g_print_mmu_layer = "default"; // [ "default" | "mmu_box_layer" | "mmu_label_layer" ]

data =
[


    [   "card tray - alpha+beta",
        [
            [ BOX_SIZE_XYZ,[80.0, 19.0, 59.0] ],
            [ BOX_NO_LID_B,
                [
                    [ ],
                ]
            ],
            [ BOX_COMPONENT,
                [
                    [ CMP_SHAPE, SQUARE ],
                    [ CMP_COMPARTMENT_SIZE_XYZ, [ 77, 16, 56.0] ],
                    [ CMP_CUTOUT_SIDES_4B, [t,t,f,f]],
                    [ CMP_CUTOUT_HEIGHT_PCT, 50 ],
                    [ CMP_CUTOUT_WIDTH_PCT, 60 ],
                    [ CMP_CUTOUT_TYPE, BOTH ],
                    [ CMP_CUTOUT_BOTTOM_B, t ],
                    [ CMP_CUTOUT_BOTTOM_PCT, 50 ],
                ]
            ],

        ]
    ],
    [   "card tray - omega, events, solo",
        [
            [ BOX_SIZE_XYZ,[80.0, 21.0, 59.0] ],
            [ BOX_NO_LID_B,
                [
                    [ ],
                ]
            ],
            [ BOX_COMPONENT,
                [
                    [ CMP_SHAPE, SQUARE ],
                    [ CMP_NUM_COMPARTMENTS_XY, [1, 3] ],
                    [ CMP_COMPARTMENT_SIZE_XYZ, [ 77, 5, 56.0] ],
                    [ CMP_CUTOUT_SIDES_4B, [t,t,f,f]],
                    [ CMP_CUTOUT_HEIGHT_PCT, 50 ],
                    [ CMP_CUTOUT_WIDTH_PCT, 60 ],
                    [ CMP_CUTOUT_TYPE, BOTH ],
                    [ CMP_CUTOUT_BOTTOM_B, t ],
                    [ CMP_CUTOUT_BOTTOM_PCT, 50 ],
                ]
            ],

        ]
    ],
];


MakeAll();