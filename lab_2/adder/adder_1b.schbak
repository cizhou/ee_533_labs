VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_18
        SIGNAL S
        SIGNAL Cout
        SIGNAL XLXN_35
        SIGNAL XLXN_36
        SIGNAL XLXN_37
        SIGNAL A
        SIGNAL XLXN_39
        SIGNAL XLXN_40
        SIGNAL B
        SIGNAL XLXN_42
        SIGNAL XLXN_43
        SIGNAL Cin
        SIGNAL XLXN_45
        SIGNAL XLXN_46
        SIGNAL XLXN_47
        SIGNAL XLXN_48
        SIGNAL XLXN_49
        PORT Output S
        PORT Output Cout
        PORT Input A
        PORT Input B
        PORT Input Cin
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
        BEGIN BLOCKDEF and2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 96 -144 192 -48 144 -48 144 -144 
            LINE N 144 -48 64 -48 
            LINE N 64 -144 144 -144 
            LINE N 64 -48 64 -144 
        END BLOCKDEF
        BEGIN BLOCKDEF or3
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 48 -64 
            LINE N 0 -128 72 -128 
            LINE N 0 -192 48 -192 
            LINE N 256 -128 192 -128 
            ARC N 28 -256 204 -80 112 -80 192 -128 
            ARC N -40 -184 72 -72 48 -80 48 -176 
            LINE N 48 -64 48 -80 
            LINE N 48 -192 48 -176 
            LINE N 112 -80 48 -80 
            ARC N 28 -176 204 0 192 -128 112 -176 
            LINE N 112 -176 48 -176 
        END BLOCKDEF
        BEGIN BLOCK XLXI_3 xor2
            PIN I0 B
            PIN I1 A
            PIN O XLXN_18
        END BLOCK
        BEGIN BLOCK XLXI_4 xor2
            PIN I0 Cin
            PIN I1 XLXN_18
            PIN O S
        END BLOCK
        BEGIN BLOCK XLXI_5 and2
            PIN I0 B
            PIN I1 A
            PIN O XLXN_47
        END BLOCK
        BEGIN BLOCK XLXI_6 and2
            PIN I0 Cin
            PIN I1 A
            PIN O XLXN_48
        END BLOCK
        BEGIN BLOCK XLXI_7 and2
            PIN I0 Cin
            PIN I1 B
            PIN O XLXN_49
        END BLOCK
        BEGIN BLOCK XLXI_11 or3
            PIN I0 XLXN_49
            PIN I1 XLXN_48
            PIN I2 XLXN_47
            PIN O Cout
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 1760 1360
        IOMARKER 368 432 A R180 28
        BEGIN BRANCH XLXN_18
            WIRE 832 464 896 464
        END BRANCH
        INSTANCE XLXI_4 896 592 R0
        BEGIN BRANCH S
            WIRE 1152 496 1280 496
        END BRANCH
        IOMARKER 1280 496 S R0 28
        INSTANCE XLXI_6 640 928 R0
        INSTANCE XLXI_7 640 1072 R0
        IOMARKER 368 496 B R180 28
        INSTANCE XLXI_5 640 784 R0
        INSTANCE XLXI_3 576 560 R0
        BEGIN BRANCH Cout
            WIRE 1248 752 1280 752
        END BRANCH
        IOMARKER 1280 752 Cout R0 28
        BEGIN BRANCH A
            WIRE 368 432 416 432
            WIRE 416 432 576 432
            WIRE 416 432 416 656
            WIRE 416 656 640 656
            WIRE 416 656 416 800
            WIRE 416 800 640 800
        END BRANCH
        BEGIN BRANCH B
            WIRE 368 496 464 496
            WIRE 464 496 576 496
            WIRE 464 496 464 720
            WIRE 464 720 640 720
            WIRE 464 720 464 944
            WIRE 464 944 640 944
        END BRANCH
        BEGIN BRANCH Cin
            WIRE 352 752 512 752
            WIRE 512 752 512 864
            WIRE 512 864 512 1008
            WIRE 512 1008 640 1008
            WIRE 512 864 640 864
            WIRE 512 576 880 576
            WIRE 512 576 512 752
            WIRE 880 528 896 528
            WIRE 880 528 880 576
        END BRANCH
        IOMARKER 352 752 Cin R180 28
        INSTANCE XLXI_11 992 880 R0
        BEGIN BRANCH XLXN_47
            WIRE 896 688 992 688
        END BRANCH
        BEGIN BRANCH XLXN_48
            WIRE 896 832 944 832
            WIRE 944 752 944 832
            WIRE 944 752 992 752
        END BRANCH
        BEGIN BRANCH XLXN_49
            WIRE 896 976 992 976
            WIRE 992 816 992 976
        END BRANCH
    END SHEET
END SCHEMATIC
