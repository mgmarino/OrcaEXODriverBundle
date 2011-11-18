//
//  EduWashingtonNplOrcaExoDriverPlugIn.h
//  Orca Bundle For ExoDriver
//
//  Created by Michael Marino on 18 Nov 2011 
//  Copyright (c) 2003 CENPA, University of Washington. All rights reserved.
//-----------------------------------------------------------
//This program was prepared for the Regents of the University of 
//Washington at the Center for Experimental Nuclear Physics and 
//Astrophysics (CENPA) sponsored in part by the United States 
//Department of Energy (DOE) under Grant #DE-FG02-97ER41020. 
//The University has certain rights in the program pursuant to 
//the contract and the program should not be copied or distributed 
//outside your organization.  The DOE and the University of 
//Washington reserve all rights in the program. Neither the authors,
//University of Washington, or U.S. Government make any warranty, 
//express or implied, or assume any liability or responsibility 
//for the use of this software.
//-------------------------------------------------------------




#import "labjackusb.h"
#pragma mark ***Class Definition
@interface EduWashingtonNplOrcaExoDriverPlugIn : NSObject {
    BOOL isLoaded;
}

#pragma mark ***Initialization.
- (id) 		init;

- (BOOL) isLoaded;

#pragma mark ***Accessors

- (float) LJUSB_GetLibraryVersion;

- (unsigned int) LJUSB_GetDevCount:(unsigned long) ProductID;

- (unsigned int) LJUSB_GetDevCounts:(UINT *)productCounts withProductIds:(UINT *)productIds withArraySize:(UINT)arraySize;
- (int) LJUSB_OpenAllDevices:(HANDLE*) devHandles withProductIds:(UINT*)productIds withMaxDevices:(UINT) maxDevices;
- (HANDLE) LJUSB_OpenDevice:(UINT) DevNum withDWReserved:(unsigned int) dwReserved withProductId:( unsigned long) ProductID;
- (unsigned long) LJUSB_Write:(HANDLE) hDevice withBytes:(BYTE *)pBuff withCount:(unsigned long)count;
- (unsigned long) LJUSB_Read:(HANDLE) hDevice withBytes:(BYTE *)pBuff withCount:(unsigned long)count;
- (unsigned long) LJUSB_Stream:(HANDLE) hDevice withBytes:(BYTE *)pBuff withCount:(unsigned long)count;
- (unsigned long) LJUSB_WriteTO:(HANDLE) hDevice withBytes:(BYTE *)pBuff withCount:(unsigned long)count withTimeout:(unsigned int)timeout;
- (unsigned long) LJUSB_ReadTO:(HANDLE) hDevice withBytes:(BYTE *)pBuff withCount:(unsigned long)count withTimeout:(unsigned int)timeout;
- (unsigned long) LJUSB_StreamTO:(HANDLE) hDevice withBytes:(BYTE *)pBuff withCount:(unsigned long)count withTimeout:(unsigned int)timeout;

- (void) LJUSB_CloseDevice:(HANDLE) hDevice;
- (BOOL) LJUSB_IsHandleValid:(HANDLE) hDevice;
- (unsigned short) LJUSB_GetDeviceDescriptorReleaseNumber:(HANDLE) hDevice;

- (unsigned long) LJUSB_GetHIDReportDescriptor:(HANDLE) hDevice withBytes:(BYTE *)pBuff withCount:(unsigned long)count;
@end

#pragma mark ***Commands
