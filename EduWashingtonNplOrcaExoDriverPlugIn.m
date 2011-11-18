//--------------------------------------------------------------------------------
// Class:	EduWashingtonNplOrcaExoDriverPlugIn
// Notes:	Provides a the principle class of a bundle to wrap the EXODriver framework.  
//          This bundle may be loaded into Orca to use the EXODriver from LabJack.
// History:	2011-11-18 (mgm)
// Author:	Michael G. Marino
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
#pragma mark ***Imported Files

#import "EduWashingtonNplOrcaExoDriverPlugIn.h"

#pragma mark ***Defines

@implementation EduWashingtonNplOrcaExoDriverPlugIn
#pragma mark ***Initialization

- (id) init
{
    self = [super init];
    isLoaded =  LJUSB_GetLibraryVersion  != NULL && 
                LJUSB_GetDevCount  != NULL && 
                LJUSB_GetDevCounts  != NULL && 
                LJUSB_OpenAllDevices  != NULL && 
                LJUSB_OpenDevice  != NULL && 
                LJUSB_Write  != NULL && 
                LJUSB_Read  != NULL && 
                LJUSB_Stream  != NULL && 
                LJUSB_WriteTO  != NULL && 
                LJUSB_ReadTO  != NULL && 
                LJUSB_StreamTO  != NULL && 
                LJUSB_CloseDevice  != NULL && 
                LJUSB_IsHandleValid  != NULL && 
                LJUSB_GetDeviceDescriptorReleaseNumber  != NULL && 
                LJUSB_GetHIDReportDescriptor  != NULL;
    return self;
}

- (BOOL) isLoaded
{
    return isLoaded;
}

- (float) LJUSB_GetLibraryVersion
{
    if (![self isLoaded]) return 0;
    return LJUSB_GetLibraryVersion();

}

- (unsigned int) LJUSB_GetDevCount:(unsigned long) ProductID
{
    if (![self isLoaded]) return 0;
    return LJUSB_GetDevCount(ProductID);

}

- (unsigned int) LJUSB_GetDevCounts:(UINT *)productCounts withProductIds:(UINT *)productIds withArraySize:(UINT)arraySize
{
    if (![self isLoaded]) return 0;
    return LJUSB_GetDevCounts(productCounts, productIds, arraySize);

}
- (int) LJUSB_OpenAllDevices:(HANDLE*)devHandles withProductIds:(UINT*)productIds withMaxDevices:(UINT) maxDevices
{
    if (![self isLoaded]) return 0;
    return LJUSB_OpenAllDevices(devHandles, productIds, maxDevices);

}
- (HANDLE) LJUSB_OpenDevice:(UINT) DevNum withDWReserved:(unsigned int) dwReserved withProductId:( unsigned long) ProductID
{
    if (![self isLoaded]) return 0;
    return LJUSB_OpenDevice(DevNum, dwReserved, ProductID);

}
- (unsigned long) LJUSB_Write:(HANDLE) hDevice withBytes:(BYTE *)pBuff withCount:(unsigned long)count
{
    if (![self isLoaded]) return 0;
    return LJUSB_Write(hDevice, pBuff, count);

}
- (unsigned long) LJUSB_Read:(HANDLE) hDevice withBytes:(BYTE *)pBuff withCount:(unsigned long)count
{
    if (![self isLoaded]) return 0;
    return LJUSB_Read(hDevice, pBuff, count);

}
- (unsigned long) LJUSB_Stream:(HANDLE) hDevice withBytes:(BYTE *)pBuff withCount:(unsigned long)count
{
    if (![self isLoaded]) return 0;
    return LJUSB_Stream(hDevice, pBuff, count);

}
- (unsigned long) LJUSB_WriteTO:(HANDLE) hDevice withBytes:(BYTE *)pBuff withCount:(unsigned long)count withTimeout:(unsigned int)timeout
{
    if (![self isLoaded]) return 0;
    return LJUSB_WriteTO(hDevice, pBuff, count, timeout);

}
- (unsigned long) LJUSB_ReadTO:(HANDLE) hDevice withBytes:(BYTE *)pBuff withCount:(unsigned long)count withTimeout:(unsigned int)timeout
{
    if (![self isLoaded]) return 0;
    return LJUSB_ReadTO(hDevice, pBuff, count, timeout);

}
- (unsigned long) LJUSB_StreamTO:(HANDLE) hDevice withBytes:(BYTE *)pBuff withCount:(unsigned long)count withTimeout:(unsigned int)timeout
{
    if (![self isLoaded]) return 0;
    return LJUSB_StreamTO(hDevice, pBuff, count, timeout);

}

- (void) LJUSB_CloseDevice:(HANDLE) hDevice
{
    if (![self isLoaded]) return;
    LJUSB_CloseDevice(hDevice);

}
- (BOOL) LJUSB_IsHandleValid:(HANDLE) hDevice
{
    if (![self isLoaded]) return NO;
    return LJUSB_IsHandleValid(hDevice);

}
- (unsigned short) LJUSB_GetDeviceDescriptorReleaseNumber:(HANDLE) hDevice
{
    if (![self isLoaded]) return 0;
    return LJUSB_GetDeviceDescriptorReleaseNumber(hDevice);

}

- (unsigned long) LJUSB_GetHIDReportDescriptor:(HANDLE) hDevice withBytes:(BYTE *)pBuff withCount:(unsigned long)count
{
    if (![self isLoaded]) return 0;
    return LJUSB_GetHIDReportDescriptor(hDevice, pBuff, count);

}

@end
