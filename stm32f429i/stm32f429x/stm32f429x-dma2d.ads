--  Automatically generated from STM32F429x.svd by SVD2Ada
--  see https://github.com/simonjwright/svd2ada

pragma Restrictions (No_Elaboration_Code);

with System;

package STM32F429x.DMA2D is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   -----------------
   -- CR_Register --
   -----------------

   subtype CR_START_Field is STM32F429x.Bit;
   subtype CR_SUSP_Field is STM32F429x.Bit;
   subtype CR_ABORT_Field is STM32F429x.Bit;
   subtype CR_TEIE_Field is STM32F429x.Bit;
   subtype CR_TCIE_Field is STM32F429x.Bit;
   subtype CR_TWIE_Field is STM32F429x.Bit;
   subtype CR_CAEIE_Field is STM32F429x.Bit;
   subtype CR_CTCIE_Field is STM32F429x.Bit;
   subtype CR_CEIE_Field is STM32F429x.Bit;
   subtype CR_MODE_Field is STM32F429x.UInt2;

   --  control register
   type CR_Register is record
      --  Start
      START          : CR_START_Field := 16#0#;
      --  Suspend
      SUSP           : CR_SUSP_Field := 16#0#;
      --  Abort
      ABORT_k        : CR_ABORT_Field := 16#0#;
      --  unspecified
      Reserved_3_7   : STM32F429x.UInt5 := 16#0#;
      --  Transfer error interrupt enable
      TEIE           : CR_TEIE_Field := 16#0#;
      --  Transfer complete interrupt enable
      TCIE           : CR_TCIE_Field := 16#0#;
      --  Transfer watermark interrupt enable
      TWIE           : CR_TWIE_Field := 16#0#;
      --  CLUT access error interrupt enable
      CAEIE          : CR_CAEIE_Field := 16#0#;
      --  CLUT transfer complete interrupt enable
      CTCIE          : CR_CTCIE_Field := 16#0#;
      --  Configuration Error Interrupt Enable
      CEIE           : CR_CEIE_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : STM32F429x.UInt2 := 16#0#;
      --  DMA2D mode
      MODE           : CR_MODE_Field := 16#0#;
      --  unspecified
      Reserved_18_31 : STM32F429x.UInt14 := 16#0#;
   end record
     with Volatile, Size => 32, Bit_Order => System.Low_Order_First;

   for CR_Register use record
      START          at 0 range 0 .. 0;
      SUSP           at 0 range 1 .. 1;
      ABORT_k        at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      TEIE           at 0 range 8 .. 8;
      TCIE           at 0 range 9 .. 9;
      TWIE           at 0 range 10 .. 10;
      CAEIE          at 0 range 11 .. 11;
      CTCIE          at 0 range 12 .. 12;
      CEIE           at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      MODE           at 0 range 16 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   ------------------
   -- ISR_Register --
   ------------------

   subtype ISR_TEIF_Field is STM32F429x.Bit;
   subtype ISR_TCIF_Field is STM32F429x.Bit;
   subtype ISR_TWIF_Field is STM32F429x.Bit;
   subtype ISR_CAEIF_Field is STM32F429x.Bit;
   subtype ISR_CTCIF_Field is STM32F429x.Bit;
   subtype ISR_CEIF_Field is STM32F429x.Bit;

   --  Interrupt Status Register
   type ISR_Register is record
      --  Transfer error interrupt flag
      TEIF          : ISR_TEIF_Field;
      --  Transfer complete interrupt flag
      TCIF          : ISR_TCIF_Field;
      --  Transfer watermark interrupt flag
      TWIF          : ISR_TWIF_Field;
      --  CLUT access error interrupt flag
      CAEIF         : ISR_CAEIF_Field;
      --  CLUT transfer complete interrupt flag
      CTCIF         : ISR_CTCIF_Field;
      --  Configuration error interrupt flag
      CEIF          : ISR_CEIF_Field;
      --  unspecified
      Reserved_6_31 : STM32F429x.UInt26;
   end record
     with Volatile, Size => 32, Bit_Order => System.Low_Order_First;

   for ISR_Register use record
      TEIF          at 0 range 0 .. 0;
      TCIF          at 0 range 1 .. 1;
      TWIF          at 0 range 2 .. 2;
      CAEIF         at 0 range 3 .. 3;
      CTCIF         at 0 range 4 .. 4;
      CEIF          at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   -------------------
   -- IFCR_Register --
   -------------------

   subtype IFCR_CTEIF_Field is STM32F429x.Bit;
   subtype IFCR_CTCIF_Field is STM32F429x.Bit;
   subtype IFCR_CTWIF_Field is STM32F429x.Bit;
   subtype IFCR_CAECIF_Field is STM32F429x.Bit;
   subtype IFCR_CCTCIF_Field is STM32F429x.Bit;
   subtype IFCR_CCEIF_Field is STM32F429x.Bit;

   --  interrupt flag clear register
   type IFCR_Register is record
      --  Clear Transfer error interrupt flag
      CTEIF         : IFCR_CTEIF_Field := 16#0#;
      --  Clear transfer complete interrupt flag
      CTCIF         : IFCR_CTCIF_Field := 16#0#;
      --  Clear transfer watermark interrupt flag
      CTWIF         : IFCR_CTWIF_Field := 16#0#;
      --  Clear CLUT access error interrupt flag
      CAECIF        : IFCR_CAECIF_Field := 16#0#;
      --  Clear CLUT transfer complete interrupt flag
      CCTCIF        : IFCR_CCTCIF_Field := 16#0#;
      --  Clear configuration error interrupt flag
      CCEIF         : IFCR_CCEIF_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : STM32F429x.UInt26 := 16#0#;
   end record
     with Volatile, Size => 32, Bit_Order => System.Low_Order_First;

   for IFCR_Register use record
      CTEIF         at 0 range 0 .. 0;
      CTCIF         at 0 range 1 .. 1;
      CTWIF         at 0 range 2 .. 2;
      CAECIF        at 0 range 3 .. 3;
      CCTCIF        at 0 range 4 .. 4;
      CCEIF         at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   -------------------
   -- FGOR_Register --
   -------------------

   subtype FGOR_LO_Field is STM32F429x.UInt14;

   --  foreground offset register
   type FGOR_Register is record
      --  Line offset
      LO             : FGOR_LO_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : STM32F429x.UInt18 := 16#0#;
   end record
     with Volatile, Size => 32, Bit_Order => System.Low_Order_First;

   for FGOR_Register use record
      LO             at 0 range 0 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   -------------------
   -- BGOR_Register --
   -------------------

   subtype BGOR_LO_Field is STM32F429x.UInt14;

   --  background offset register
   type BGOR_Register is record
      --  Line offset
      LO             : BGOR_LO_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : STM32F429x.UInt18 := 16#0#;
   end record
     with Volatile, Size => 32, Bit_Order => System.Low_Order_First;

   for BGOR_Register use record
      LO             at 0 range 0 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   ----------------------
   -- FGPFCCR_Register --
   ----------------------

   subtype FGPFCCR_CM_Field is STM32F429x.UInt4;
   subtype FGPFCCR_CCM_Field is STM32F429x.Bit;
   subtype FGPFCCR_START_Field is STM32F429x.Bit;
   subtype FGPFCCR_CS_Field is STM32F429x.Byte;
   subtype FGPFCCR_AM_Field is STM32F429x.UInt2;
   subtype FGPFCCR_ALPHA_Field is STM32F429x.Byte;

   --  foreground PFC control register
   type FGPFCCR_Register is record
      --  Color mode
      CM             : FGPFCCR_CM_Field := 16#0#;
      --  CLUT color mode
      CCM            : FGPFCCR_CCM_Field := 16#0#;
      --  Start
      START          : FGPFCCR_START_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : STM32F429x.UInt2 := 16#0#;
      --  CLUT size
      CS             : FGPFCCR_CS_Field := 16#0#;
      --  Alpha mode
      AM             : FGPFCCR_AM_Field := 16#0#;
      --  unspecified
      Reserved_18_23 : STM32F429x.UInt6 := 16#0#;
      --  Alpha value
      ALPHA          : FGPFCCR_ALPHA_Field := 16#0#;
   end record
     with Volatile, Size => 32, Bit_Order => System.Low_Order_First;

   for FGPFCCR_Register use record
      CM             at 0 range 0 .. 3;
      CCM            at 0 range 4 .. 4;
      START          at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      CS             at 0 range 8 .. 15;
      AM             at 0 range 16 .. 17;
      Reserved_18_23 at 0 range 18 .. 23;
      ALPHA          at 0 range 24 .. 31;
   end record;

   ---------------------
   -- FGCOLR_Register --
   ---------------------

   subtype FGCOLR_BLUE_Field is STM32F429x.Byte;
   subtype FGCOLR_GREEN_Field is STM32F429x.Byte;
   subtype FGCOLR_RED_Field is STM32F429x.Byte;

   --  foreground color register
   type FGCOLR_Register is record
      --  Blue Value
      BLUE           : FGCOLR_BLUE_Field := 16#0#;
      --  Green Value
      GREEN          : FGCOLR_GREEN_Field := 16#0#;
      --  Red Value
      RED            : FGCOLR_RED_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : STM32F429x.Byte := 16#0#;
   end record
     with Volatile, Size => 32, Bit_Order => System.Low_Order_First;

   for FGCOLR_Register use record
      BLUE           at 0 range 0 .. 7;
      GREEN          at 0 range 8 .. 15;
      RED            at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   ----------------------
   -- BGPFCCR_Register --
   ----------------------

   subtype BGPFCCR_CM_Field is STM32F429x.UInt4;
   subtype BGPFCCR_CCM_Field is STM32F429x.Bit;
   subtype BGPFCCR_START_Field is STM32F429x.Bit;
   subtype BGPFCCR_CS_Field is STM32F429x.Byte;
   subtype BGPFCCR_AM_Field is STM32F429x.UInt2;
   subtype BGPFCCR_ALPHA_Field is STM32F429x.Byte;

   --  background PFC control register
   type BGPFCCR_Register is record
      --  Color mode
      CM             : BGPFCCR_CM_Field := 16#0#;
      --  CLUT Color mode
      CCM            : BGPFCCR_CCM_Field := 16#0#;
      --  Start
      START          : BGPFCCR_START_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : STM32F429x.UInt2 := 16#0#;
      --  CLUT size
      CS             : BGPFCCR_CS_Field := 16#0#;
      --  Alpha mode
      AM             : BGPFCCR_AM_Field := 16#0#;
      --  unspecified
      Reserved_18_23 : STM32F429x.UInt6 := 16#0#;
      --  Alpha value
      ALPHA          : BGPFCCR_ALPHA_Field := 16#0#;
   end record
     with Volatile, Size => 32, Bit_Order => System.Low_Order_First;

   for BGPFCCR_Register use record
      CM             at 0 range 0 .. 3;
      CCM            at 0 range 4 .. 4;
      START          at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      CS             at 0 range 8 .. 15;
      AM             at 0 range 16 .. 17;
      Reserved_18_23 at 0 range 18 .. 23;
      ALPHA          at 0 range 24 .. 31;
   end record;

   ---------------------
   -- BGCOLR_Register --
   ---------------------

   subtype BGCOLR_BLUE_Field is STM32F429x.Byte;
   subtype BGCOLR_GREEN_Field is STM32F429x.Byte;
   subtype BGCOLR_RED_Field is STM32F429x.Byte;

   --  background color register
   type BGCOLR_Register is record
      --  Blue Value
      BLUE           : BGCOLR_BLUE_Field := 16#0#;
      --  Green Value
      GREEN          : BGCOLR_GREEN_Field := 16#0#;
      --  Red Value
      RED            : BGCOLR_RED_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : STM32F429x.Byte := 16#0#;
   end record
     with Volatile, Size => 32, Bit_Order => System.Low_Order_First;

   for BGCOLR_Register use record
      BLUE           at 0 range 0 .. 7;
      GREEN          at 0 range 8 .. 15;
      RED            at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   ---------------------
   -- OPFCCR_Register --
   ---------------------

   subtype OPFCCR_CM_Field is STM32F429x.UInt3;

   --  output PFC control register
   type OPFCCR_Register is record
      --  Color mode
      CM            : OPFCCR_CM_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : STM32F429x.UInt29 := 16#0#;
   end record
     with Volatile, Size => 32, Bit_Order => System.Low_Order_First;

   for OPFCCR_Register use record
      CM            at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --------------------
   -- OCOLR_Register --
   --------------------

   subtype OCOLR_BLUE_Field is STM32F429x.Byte;
   subtype OCOLR_GREEN_Field is STM32F429x.Byte;
   subtype OCOLR_RED_Field is STM32F429x.Byte;
   subtype OCOLR_APLHA_Field is STM32F429x.Byte;

   --  output color register
   type OCOLR_Register is record
      --  Blue Value
      BLUE  : OCOLR_BLUE_Field := 16#0#;
      --  Green Value
      GREEN : OCOLR_GREEN_Field := 16#0#;
      --  Red Value
      RED   : OCOLR_RED_Field := 16#0#;
      --  Alpha Channel Value
      APLHA : OCOLR_APLHA_Field := 16#0#;
   end record
     with Volatile, Size => 32, Bit_Order => System.Low_Order_First;

   for OCOLR_Register use record
      BLUE  at 0 range 0 .. 7;
      GREEN at 0 range 8 .. 15;
      RED   at 0 range 16 .. 23;
      APLHA at 0 range 24 .. 31;
   end record;

   ------------------
   -- OOR_Register --
   ------------------

   subtype OOR_LO_Field is STM32F429x.UInt14;

   --  output offset register
   type OOR_Register is record
      --  Line Offset
      LO             : OOR_LO_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : STM32F429x.UInt18 := 16#0#;
   end record
     with Volatile, Size => 32, Bit_Order => System.Low_Order_First;

   for OOR_Register use record
      LO             at 0 range 0 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   ------------------
   -- NLR_Register --
   ------------------

   subtype NLR_NL_Field is STM32F429x.Short;
   subtype NLR_PL_Field is STM32F429x.UInt14;

   --  number of line register
   type NLR_Register is record
      --  Number of lines
      NL             : NLR_NL_Field := 16#0#;
      --  Pixel per lines
      PL             : NLR_PL_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : STM32F429x.UInt2 := 16#0#;
   end record
     with Volatile, Size => 32, Bit_Order => System.Low_Order_First;

   for NLR_Register use record
      NL             at 0 range 0 .. 15;
      PL             at 0 range 16 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   ------------------
   -- LWR_Register --
   ------------------

   subtype LWR_LW_Field is STM32F429x.Short;

   --  line watermark register
   type LWR_Register is record
      --  Line watermark
      LW             : LWR_LW_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32F429x.Short := 16#0#;
   end record
     with Volatile, Size => 32, Bit_Order => System.Low_Order_First;

   for LWR_Register use record
      LW             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --------------------
   -- AMTCR_Register --
   --------------------

   subtype AMTCR_EN_Field is STM32F429x.Bit;
   subtype AMTCR_DT_Field is STM32F429x.Byte;

   --  AHB master timer configuration register
   type AMTCR_Register is record
      --  Enable
      EN             : AMTCR_EN_Field := 16#0#;
      --  unspecified
      Reserved_1_7   : STM32F429x.UInt7 := 16#0#;
      --  Dead Time
      DT             : AMTCR_DT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32F429x.Short := 16#0#;
   end record
     with Volatile, Size => 32, Bit_Order => System.Low_Order_First;

   for AMTCR_Register use record
      EN             at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      DT             at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   ---------------------
   -- FGCLUT_Register --
   ---------------------

   subtype FGCLUT_BLUE_Field is STM32F429x.Byte;
   subtype FGCLUT_GREEN_Field is STM32F429x.Byte;
   subtype FGCLUT_RED_Field is STM32F429x.Byte;
   subtype FGCLUT_APLHA_Field is STM32F429x.Byte;

   --  FGCLUT
   type FGCLUT_Register is record
      --  BLUE
      BLUE  : FGCLUT_BLUE_Field := 16#0#;
      --  GREEN
      GREEN : FGCLUT_GREEN_Field := 16#0#;
      --  RED
      RED   : FGCLUT_RED_Field := 16#0#;
      --  APLHA
      APLHA : FGCLUT_APLHA_Field := 16#0#;
   end record
     with Volatile, Size => 32, Bit_Order => System.Low_Order_First;

   for FGCLUT_Register use record
      BLUE  at 0 range 0 .. 7;
      GREEN at 0 range 8 .. 15;
      RED   at 0 range 16 .. 23;
      APLHA at 0 range 24 .. 31;
   end record;

   ---------------------
   -- BGCLUT_Register --
   ---------------------

   subtype BGCLUT_BLUE_Field is STM32F429x.Byte;
   subtype BGCLUT_GREEN_Field is STM32F429x.Byte;
   subtype BGCLUT_RED_Field is STM32F429x.Byte;
   subtype BGCLUT_APLHA_Field is STM32F429x.Byte;

   --  BGCLUT
   type BGCLUT_Register is record
      --  BLUE
      BLUE  : BGCLUT_BLUE_Field := 16#0#;
      --  GREEN
      GREEN : BGCLUT_GREEN_Field := 16#0#;
      --  RED
      RED   : BGCLUT_RED_Field := 16#0#;
      --  APLHA
      APLHA : BGCLUT_APLHA_Field := 16#0#;
   end record
     with Volatile, Size => 32, Bit_Order => System.Low_Order_First;

   for BGCLUT_Register use record
      BLUE  at 0 range 0 .. 7;
      GREEN at 0 range 8 .. 15;
      RED   at 0 range 16 .. 23;
      APLHA at 0 range 24 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  DMA2D controller
   type DMA2D_Peripheral is record
      --  control register
      CR      : CR_Register;
      --  Interrupt Status Register
      ISR     : ISR_Register;
      --  interrupt flag clear register
      IFCR    : IFCR_Register;
      --  foreground memory address register
      FGMAR   : STM32F429x.Word;
      --  foreground offset register
      FGOR    : FGOR_Register;
      --  background memory address register
      BGMAR   : STM32F429x.Word;
      --  background offset register
      BGOR    : BGOR_Register;
      --  foreground PFC control register
      FGPFCCR : FGPFCCR_Register;
      --  foreground color register
      FGCOLR  : FGCOLR_Register;
      --  background PFC control register
      BGPFCCR : BGPFCCR_Register;
      --  background color register
      BGCOLR  : BGCOLR_Register;
      --  foreground CLUT memory address register
      FGCMAR  : STM32F429x.Word;
      --  background CLUT memory address register
      BGCMAR  : STM32F429x.Word;
      --  output PFC control register
      OPFCCR  : OPFCCR_Register;
      --  output color register
      OCOLR   : OCOLR_Register;
      --  output memory address register
      OMAR    : STM32F429x.Word;
      --  output offset register
      OOR     : OOR_Register;
      --  number of line register
      NLR     : NLR_Register;
      --  line watermark register
      LWR     : LWR_Register;
      --  AHB master timer configuration register
      AMTCR   : AMTCR_Register;
      --  FGCLUT
      FGCLUT  : FGCLUT_Register;
      --  BGCLUT
      BGCLUT  : BGCLUT_Register;
   end record
     with Volatile;

   for DMA2D_Peripheral use record
      CR      at 0 range 0 .. 31;
      ISR     at 4 range 0 .. 31;
      IFCR    at 8 range 0 .. 31;
      FGMAR   at 12 range 0 .. 31;
      FGOR    at 16 range 0 .. 31;
      BGMAR   at 20 range 0 .. 31;
      BGOR    at 24 range 0 .. 31;
      FGPFCCR at 28 range 0 .. 31;
      FGCOLR  at 32 range 0 .. 31;
      BGPFCCR at 36 range 0 .. 31;
      BGCOLR  at 40 range 0 .. 31;
      FGCMAR  at 44 range 0 .. 31;
      BGCMAR  at 48 range 0 .. 31;
      OPFCCR  at 52 range 0 .. 31;
      OCOLR   at 56 range 0 .. 31;
      OMAR    at 60 range 0 .. 31;
      OOR     at 64 range 0 .. 31;
      NLR     at 68 range 0 .. 31;
      LWR     at 72 range 0 .. 31;
      AMTCR   at 76 range 0 .. 31;
      FGCLUT  at 1024 range 0 .. 31;
      BGCLUT  at 2048 range 0 .. 31;
   end record;

   --  DMA2D controller
   DMA2D_Periph : aliased DMA2D_Peripheral
     with Import, Address => System'To_Address (16#4002B000#);

end STM32F429x.DMA2D;
