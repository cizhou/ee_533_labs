VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL A(31:0)
        SIGNAL B(31:0)
        SIGNAL M(2:0)
        SIGNAL S(31:0)
        PORT Input A(31:0)
        PORT Input B(31:0)
        PORT Input M(2:0)
        PORT Output S(31:0)
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
        BEGIN BLOCK XLXI_2 adder_32b
            PIN A(31:0)
            PIN B(31:0)
            PIN Cin
            PIN Cout
            PIN S(31:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH A(31:0)
            WIRE 640 640 800 640
        END BRANCH
        IOMARKER 640 640 A(31:0) R180 28
        BEGIN BRANCH B(31:0)
            WIRE 640 1120 800 1120
        END BRANCH
        IOMARKER 640 1120 B(31:0) R180 28
        BEGIN BRANCH M(2:0)
            WIRE 640 1600 800 1600
        END BRANCH
        IOMARKER 640 1600 M(2:0) R180 28
        BEGIN BRANCH S(31:0)
            WIRE 2720 640 2880 640
        END BRANCH
        IOMARKER 2880 640 S(31:0) R0 28
        BEGIN INSTANCE XLXI_2 1712 1376 R0
        END INSTANCE
    END SHEET
END SCHEMATIC
