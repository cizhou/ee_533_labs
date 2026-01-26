VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL S(31:0)
        SIGNAL XLXN_6
        SIGNAL B(31:0)
        SIGNAL M(2:0)
        SIGNAL A(31:0)
        SIGNAL XLXN_14
        PORT Output S(31:0)
        PORT Input B(31:0)
        PORT Input M(2:0)
        PORT Input A(31:0)
        BEGIN BLOCKDEF adder_32b
            TIMESTAMP 2026 1 24 20 46 1
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -32 0 -32 
            LINE N 320 -160 384 -160 
            LINE N 320 -96 384 -96 
            RECTANGLE N 320 -108 384 -84 
        END BLOCKDEF
        BEGIN BLOCKDEF xor2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 60 -128 
            LINE N 256 -96 208 -96 
            ARC N -40 -152 72 -40 48 -48 44 -144 
            ARC N -24 -152 88 -40 64 -48 64 -144 
            LINE N 128 -144 64 -144 
            LINE N 128 -48 64 -48 
            ARC N 44 -144 220 32 208 -96 128 -144 
            ARC N 44 -224 220 -48 128 -48 208 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF m2_1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 96 -64 96 -192 
            LINE N 256 -96 96 -64 
            LINE N 256 -160 256 -96 
            LINE N 96 -192 256 -160 
            LINE N 176 -32 96 -32 
            LINE N 176 -80 176 -32 
            LINE N 0 -32 96 -32 
            LINE N 320 -128 256 -128 
            LINE N 0 -96 96 -96 
            LINE N 0 -160 96 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF muxf8_d
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 96 -64 96 -256 
            LINE N 256 -96 96 -64 
            LINE N 256 -224 256 -96 
            LINE N 96 -256 256 -224 
            LINE N 176 -32 96 -32 
            LINE N 176 -80 176 -32 
            LINE N 320 -128 256 -128 
            LINE N 320 -192 256 -192 
            LINE N 0 -32 96 -32 
            LINE N 0 -96 96 -96 
            LINE N 0 -224 96 -224 
        END BLOCKDEF
        BEGIN BLOCK XLXI_5 m2_1
            PIN D0 XLXN_14
            PIN D1
            PIN S0
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_3 xor2
            PIN I0 B(31:0)
            PIN I1
            PIN O XLXN_14
        END BLOCK
        BEGIN BLOCK XLXI_2 adder_32b
            PIN A(31:0) A(31:0)
            PIN B(31:0)
            PIN Cin
            PIN Cout
            PIN S(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_10 muxf8_d
            PIN I0
            PIN I1
            PIN S
            PIN LO
            PIN O
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH S(31:0)
            WIRE 2720 640 2880 640
        END BRANCH
        IOMARKER 2880 640 S(31:0) R0 28
        INSTANCE XLXI_3 1248 656 R90
        BEGIN BRANCH B(31:0)
            WIRE 1312 560 1312 640
            WIRE 1312 640 1312 656
        END BRANCH
        IOMARKER 1312 560 B(31:0) R270 28
        BEGIN BRANCH M(2:0)
            WIRE 528 496 688 496
        END BRANCH
        IOMARKER 528 496 M(2:0) R180 28
        BEGIN INSTANCE XLXI_2 1312 1712 R0
        END INSTANCE
        BEGIN BRANCH A(31:0)
            WIRE 928 1552 1088 1552
            WIRE 1088 1552 1312 1552
        END BRANCH
        IOMARKER 928 1552 A(31:0) R180 28
        INSTANCE XLXI_5 1184 1104 R90
        BEGIN BRANCH XLXN_14
            WIRE 1344 912 1344 1104
        END BRANCH
        INSTANCE XLXI_10 512 1456 R0
    END SHEET
END SCHEMATIC
