--  Automatically generated from STM32F429x.svd by SVD2Ada
--  see https://github.com/simonjwright/svd2ada

pragma Restrictions (No_Elaboration_Code);

with System;

package STM32F429x.DAC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   -----------------
   -- CR_Register --
   -----------------

   subtype CR_EN1_Field is STM32F429x.Bit;
   subtype CR_BOFF1_Field is STM32F429x.Bit;
   subtype CR_TEN1_Field is STM32F429x.Bit;
   subtype CR_TSEL1_Field is STM32F429x.UInt3;
   subtype CR_WAVE1_Field is STM32F429x.UInt2;
   subtype CR_MAMP1_Field is STM32F429x.UInt4;
   subtype CR_DMAEN1_Field is STM32F429x.Bit;
   subtype CR_DMAUDRIE1_Field is STM32F429x.Bit;
   subtype CR_EN2_Field is STM32F429x.Bit;
   subtype CR_BOFF2_Field is STM32F429x.Bit;
   subtype CR_TEN2_Field is STM32F429x.Bit;
   subtype CR_TSEL2_Field is STM32F429x.UInt3;
   subtype CR_WAVE2_Field is STM32F429x.UInt2;
   subtype CR_MAMP2_Field is STM32F429x.UInt4;
   subtype CR_DMAEN2_Field is STM32F429x.Bit;
   subtype CR_DMAUDRIE2_Field is STM32F429x.Bit;

   --  control register
   type CR_Register is record
      --  DAC channel1 enable
      EN1            : CR_EN1_Field := 16#0#;
      --  DAC channel1 output buffer disable
      BOFF1          : CR_BOFF1_Field := 16#0#;
      --  DAC channel1 trigger enable
      TEN1           : CR_TEN1_Field := 16#0#;
      --  DAC channel1 trigger selection
      TSEL1          : CR_TSEL1_Field := 16#0#;
      --  DAC channel1 noise/triangle wave generation enable
      WAVE1          : CR_WAVE1_Field := 16#0#;
      --  DAC channel1 mask/amplitude selector
      MAMP1          : CR_MAMP1_Field := 16#0#;
      --  DAC channel1 DMA enable
      DMAEN1         : CR_DMAEN1_Field := 16#0#;
      --  DAC channel1 DMA Underrun Interrupt enable
      DMAUDRIE1      : CR_DMAUDRIE1_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : STM32F429x.UInt2 := 16#0#;
      --  DAC channel2 enable
      EN2            : CR_EN2_Field := 16#0#;
      --  DAC channel2 output buffer disable
      BOFF2          : CR_BOFF2_Field := 16#0#;
      --  DAC channel2 trigger enable
      TEN2           : CR_TEN2_Field := 16#0#;
      --  DAC channel2 trigger selection
      TSEL2          : CR_TSEL2_Field := 16#0#;
      --  DAC channel2 noise/triangle wave generation enable
      WAVE2          : CR_WAVE2_Field := 16#0#;
      --  DAC channel2 mask/amplitude selector
      MAMP2          : CR_MAMP2_Field := 16#0#;
      --  DAC channel2 DMA enable
      DMAEN2         : CR_DMAEN2_Field := 16#0#;
      --  DAC channel2 DMA underrun interrupt enable
      DMAUDRIE2      : CR_DMAUDRIE2_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : STM32F429x.UInt2 := 16#0#;
   end record
     with Volatile, Size => 32, Bit_Order => System.Low_Order_First;

   for CR_Register use record
      EN1            at 0 range 0 .. 0;
      BOFF1          at 0 range 1 .. 1;
      TEN1           at 0 range 2 .. 2;
      TSEL1          at 0 range 3 .. 5;
      WAVE1          at 0 range 6 .. 7;
      MAMP1          at 0 range 8 .. 11;
      DMAEN1         at 0 range 12 .. 12;
      DMAUDRIE1      at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      EN2            at 0 range 16 .. 16;
      BOFF2          at 0 range 17 .. 17;
      TEN2           at 0 range 18 .. 18;
      TSEL2          at 0 range 19 .. 21;
      WAVE2          at 0 range 22 .. 23;
      MAMP2          at 0 range 24 .. 27;
      DMAEN2         at 0 range 28 .. 28;
      DMAUDRIE2      at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   ----------------------
   -- SWTRIGR_Register --
   ----------------------

   --------------------
   -- SWTRIGR.SWTRIG --
   --------------------

   --  SWTRIGR_SWTRIG array element
   subtype SWTRIGR_SWTRIG_Element is STM32F429x.Bit;

   --  SWTRIGR_SWTRIG array
   type SWTRIGR_SWTRIG_Field_Array is array (0 .. 1)
     of SWTRIGR_SWTRIG_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for SWTRIGR_SWTRIG
   type SWTRIGR_SWTRIG_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SWTRIG as a value
            Val : STM32F429x.UInt2;
         when True =>
            --  SWTRIG as an array
            Arr : SWTRIGR_SWTRIG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for SWTRIGR_SWTRIG_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  software trigger register
   type SWTRIGR_Register is record
      --  DAC channel1 software trigger
      SWTRIG        : SWTRIGR_SWTRIG_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_2_31 : STM32F429x.UInt30 := 16#0#;
   end record
     with Volatile, Size => 32, Bit_Order => System.Low_Order_First;

   for SWTRIGR_Register use record
      SWTRIG        at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   ---------------------
   -- DHR12R_Register --
   ---------------------

   subtype DHR12R1_DACC1DHR_Field is STM32F429x.UInt12;

   --  channel1 12-bit right-aligned data holding register
   type DHR12R_Register is record
      --  DAC channel1 12-bit right-aligned data
      DACC1DHR       : DHR12R1_DACC1DHR_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : STM32F429x.UInt20 := 16#0#;
   end record
     with Volatile, Size => 32, Bit_Order => System.Low_Order_First;

   for DHR12R_Register use record
      DACC1DHR       at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   ---------------------
   -- DHR12L_Register --
   ---------------------

   subtype DHR12L1_DACC1DHR_Field is STM32F429x.UInt12;

   --  channel1 12-bit left aligned data holding register
   type DHR12L_Register is record
      --  unspecified
      Reserved_0_3   : STM32F429x.UInt4 := 16#0#;
      --  DAC channel1 12-bit left-aligned data
      DACC1DHR       : DHR12L1_DACC1DHR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32F429x.Short := 16#0#;
   end record
     with Volatile, Size => 32, Bit_Order => System.Low_Order_First;

   for DHR12L_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      DACC1DHR       at 0 range 4 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --------------------
   -- DHR8R_Register --
   --------------------

   subtype DHR8R1_DACC1DHR_Field is STM32F429x.Byte;

   --  channel1 8-bit right aligned data holding register
   type DHR8R_Register is record
      --  DAC channel1 8-bit right-aligned data
      DACC1DHR      : DHR8R1_DACC1DHR_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : STM32F429x.UInt24 := 16#0#;
   end record
     with Volatile, Size => 32, Bit_Order => System.Low_Order_First;

   for DHR8R_Register use record
      DACC1DHR      at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   ----------------------
   -- DHR12RD_Register --
   ----------------------

   subtype DHR12RD_DACC1DHR_Field is STM32F429x.UInt12;
   subtype DHR12RD_DACC2DHR_Field is STM32F429x.UInt12;

   --  Dual DAC 12-bit right-aligned data holding register
   type DHR12RD_Register is record
      --  DAC channel1 12-bit right-aligned data
      DACC1DHR       : DHR12RD_DACC1DHR_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : STM32F429x.UInt4 := 16#0#;
      --  DAC channel2 12-bit right-aligned data
      DACC2DHR       : DHR12RD_DACC2DHR_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : STM32F429x.UInt4 := 16#0#;
   end record
     with Volatile, Size => 32, Bit_Order => System.Low_Order_First;

   for DHR12RD_Register use record
      DACC1DHR       at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      DACC2DHR       at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   ----------------------
   -- DHR12LD_Register --
   ----------------------

   subtype DHR12LD_DACC1DHR_Field is STM32F429x.UInt12;
   subtype DHR12LD_DACC2DHR_Field is STM32F429x.UInt12;

   --  DUAL DAC 12-bit left aligned data holding register
   type DHR12LD_Register is record
      --  unspecified
      Reserved_0_3   : STM32F429x.UInt4 := 16#0#;
      --  DAC channel1 12-bit left-aligned data
      DACC1DHR       : DHR12LD_DACC1DHR_Field := 16#0#;
      --  unspecified
      Reserved_16_19 : STM32F429x.UInt4 := 16#0#;
      --  DAC channel2 12-bit left-aligned data
      DACC2DHR       : DHR12LD_DACC2DHR_Field := 16#0#;
   end record
     with Volatile, Size => 32, Bit_Order => System.Low_Order_First;

   for DHR12LD_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      DACC1DHR       at 0 range 4 .. 15;
      Reserved_16_19 at 0 range 16 .. 19;
      DACC2DHR       at 0 range 20 .. 31;
   end record;

   ---------------------
   -- DHR8RD_Register --
   ---------------------

   subtype DHR8RD_DACC1DHR_Field is STM32F429x.Byte;
   subtype DHR8RD_DACC2DHR_Field is STM32F429x.Byte;

   --  DUAL DAC 8-bit right aligned data holding register
   type DHR8RD_Register is record
      --  DAC channel1 8-bit right-aligned data
      DACC1DHR       : DHR8RD_DACC1DHR_Field := 16#0#;
      --  DAC channel2 8-bit right-aligned data
      DACC2DHR       : DHR8RD_DACC2DHR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32F429x.Short := 16#0#;
   end record
     with Volatile, Size => 32, Bit_Order => System.Low_Order_First;

   for DHR8RD_Register use record
      DACC1DHR       at 0 range 0 .. 7;
      DACC2DHR       at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   ------------------
   -- DOR_Register --
   ------------------

   subtype DOR1_DACC1DOR_Field is STM32F429x.UInt12;

   --  channel1 data output register
   type DOR_Register is record
      --  DAC channel1 data output
      DACC1DOR       : DOR1_DACC1DOR_Field;
      --  unspecified
      Reserved_12_31 : STM32F429x.UInt20;
   end record
     with Volatile, Size => 32, Bit_Order => System.Low_Order_First;

   for DOR_Register use record
      DACC1DOR       at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   -----------------
   -- SR_Register --
   -----------------

   subtype SR_DMAUDR1_Field is STM32F429x.Bit;
   subtype SR_DMAUDR2_Field is STM32F429x.Bit;

   --  status register
   type SR_Register is record
      --  unspecified
      Reserved_0_12  : STM32F429x.UInt13 := 16#0#;
      --  DAC channel1 DMA underrun flag
      DMAUDR1        : SR_DMAUDR1_Field := 16#0#;
      --  unspecified
      Reserved_14_28 : STM32F429x.UInt15 := 16#0#;
      --  DAC channel2 DMA underrun flag
      DMAUDR2        : SR_DMAUDR2_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : STM32F429x.UInt2 := 16#0#;
   end record
     with Volatile, Size => 32, Bit_Order => System.Low_Order_First;

   for SR_Register use record
      Reserved_0_12  at 0 range 0 .. 12;
      DMAUDR1        at 0 range 13 .. 13;
      Reserved_14_28 at 0 range 14 .. 28;
      DMAUDR2        at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Digital-to-analog converter
   type DAC_Peripheral is record
      --  control register
      CR      : CR_Register;
      --  software trigger register
      SWTRIGR : SWTRIGR_Register;
      --  channel1 12-bit right-aligned data holding register
      DHR12R1 : DHR12R_Register;
      --  channel1 12-bit left aligned data holding register
      DHR12L1 : DHR12L_Register;
      --  channel1 8-bit right aligned data holding register
      DHR8R1  : DHR8R_Register;
      --  channel2 12-bit right aligned data holding register
      DHR12R2 : DHR12R_Register;
      --  channel2 12-bit left aligned data holding register
      DHR12L2 : DHR12L_Register;
      --  channel2 8-bit right-aligned data holding register
      DHR8R2  : DHR8R_Register;
      --  Dual DAC 12-bit right-aligned data holding register
      DHR12RD : DHR12RD_Register;
      --  DUAL DAC 12-bit left aligned data holding register
      DHR12LD : DHR12LD_Register;
      --  DUAL DAC 8-bit right aligned data holding register
      DHR8RD  : DHR8RD_Register;
      --  channel1 data output register
      DOR1    : DOR_Register;
      --  channel2 data output register
      DOR2    : DOR_Register;
      --  status register
      SR      : SR_Register;
   end record
     with Volatile;

   for DAC_Peripheral use record
      CR      at 0 range 0 .. 31;
      SWTRIGR at 4 range 0 .. 31;
      DHR12R1 at 8 range 0 .. 31;
      DHR12L1 at 12 range 0 .. 31;
      DHR8R1  at 16 range 0 .. 31;
      DHR12R2 at 20 range 0 .. 31;
      DHR12L2 at 24 range 0 .. 31;
      DHR8R2  at 28 range 0 .. 31;
      DHR12RD at 32 range 0 .. 31;
      DHR12LD at 36 range 0 .. 31;
      DHR8RD  at 40 range 0 .. 31;
      DOR1    at 44 range 0 .. 31;
      DOR2    at 48 range 0 .. 31;
      SR      at 52 range 0 .. 31;
   end record;

   --  Digital-to-analog converter
   DAC_Periph : aliased DAC_Peripheral
     with Import, Address => System'To_Address (16#40007400#);

end STM32F429x.DAC;
