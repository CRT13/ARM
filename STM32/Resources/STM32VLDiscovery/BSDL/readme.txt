/******************** (C) COPYRIGHT 2011 STMicroelectronics ********************
* File Name          : version.txt
* Author             : MCD Application Team
* Version            : V3.0.0
* Date               : 01/03/2011
* Description        : Boundary Scan Description Language (BSDL) file for the    
*                      STM32F1xx Microcontrollers
********************************************************************************
* THE PRESENT SOFTWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
* WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE TIME.
* AS A RESULT, STMICROELECTRONICS SHALL NOT BE HELD LIABLE FOR ANY DIRECT,
* INDIRECT OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING FROM THE
* CONTENT OF SUCH SOFTWARE AND/OR THE USE MADE BY CUSTOMERS OF THE CODING
* INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
*******************************************************************************/

=======================
How to use BSDL Files :
=======================

The STM32F1xx, STM32F2xx and STM32L1xx MCUs integrate two serially connected JTAG TAPs, the boundary scan
TAP (IR is 5-bit wide) and the Cortex-M3 TAP (IR is 4-bit wide).

The package contains :

   + A BSDL File for the Cortex-M3 TAP and is common to all STM32F1xx, STM32F2xx and STM32L1xx devices
   + Boundary scan BSDL Files for each STM32F1xx, STM32F2xx and STM32L1xx device on different packages :
     o Low-density devices are STM32F101xx, STM32F102xx and STM32F103xx
       microcontrollers where the Flash memory density ranges between 16 and 32 Kbytes.
     o Medium-density devices are STM32F101xx, STM32F102xx and STM32F103xx
       microcontrollers where the Flash memory density ranges between 64 and 128 Kbytes.
     o High-density devices are STM32F101xx and STM32F103xx microcontrollers where
       the Flash memory density ranges between 256 and 512 Kbytes.
     o XL-density devices are STM32F101xx and STM32F103xx microcontrollers where the
       Flash memory density ranges between 768 Kbytes and 1 Mbyte.
     o Connectivity line devices are STM32F105xx and STM32F107xx microcontrollers.
     o Low-density value line devices and Medium-density value line are STM32F100xx
       microcontrollers where the Flash memory density ranges between 16 and 128 Kbytes.
     o High-density value line devices and Medium-density value line are STM32F100xx
       microcontrollers where the Flash memory density ranges between 256 and 512 Kbytes.
     o Med-density Ultra-low power devices are STM32L151xx and STM32L152xx microcontrollers
       where the Flash memory density ranges between 64 and 128 Kbytes.
     o STM32F2xx microcontrollers are devices where Flash memory density ranges between
       128 Kbytes and 1 Mbytes.

In order to run boundary scan, always provide two BSDL files to your JTAG Boundary scan tool:
the "CortexM3.bsd" and your selected "STM32xx_device_Package.bsd".  

For more details on the internal TAPs description refer to the Reference Manual
of the selected STM32xxxx device , Section : JTAG TAP connection.


======================
* V3.0.0 - 01/03/2011
======================

New Features
************
    + Adding BSDL Files of STM32F1xx Value line High density devices Boundary Scan TAP
    + Adding BSDL Files of STM32F2xx devices Boundary Scan TAP
    + Adding BSDL Files of STM32L1xx Med density devices Boundary Scan TAP

======================
* V2.0.0 - 06/30/2010 
======================

New Features
************
    + Adding BSDL Files of STM32F1xx Value line and XL density devices Boundary Scan TAP
    + Adding BSDL Files of STM32F1xx Connectivity devices Boundary Scan TAP
    + Adding BSDL Files of STM32F1xx High density devices Boundary Scan TAP
    + Adding BSDL Files of STM32F1xx Low density devices Boundary Scan TAP
    + Add    BSDL file for Cortex-M3 TAP

======================
* V1.1.0 - 05/16/2008  
======================
  Created.
  

******************* (C) COPYRIGHT 2011 STMicroelectronics *****END OF FILE
