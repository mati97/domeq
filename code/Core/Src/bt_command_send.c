/******************************************************************************
 Software License Agreement:

 The software supplied herewith by Microchip Technology Incorporated
 (the "Company") for its PICmicro(r) Microcontroller is intended and
 supplied to you, the Company's customer, for use solely and
 exclusively on Microchip PICmicro Microcontroller products. The
 software is owned by the Company and/or its supplier, and is
 protected under applicable copyright laws. All rights are reserved.
 Any use in violation of the foregoing restrictions may subject the
 user to criminal sanctions under applicable laws, as well as to
 civil liability for the breach of the terms and conditions of this
 license.

 THIS SOFTWARE IS PROVIDED IN AN "AS IS" CONDITION. NO WARRANTIES,
 WHETHER EXPRESS, IMPLIED OR STATUTORY, INCLUDING, BUT NOT LIMITED
 TO, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
 PARTICULAR PURPOSE APPLY TO THIS SOFTWARE. THE COMPANY SHALL NOT,
 IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL OR
 CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.
********************************************************************/

#include "bt_command_decode2.h"
#include "bt_command_send.h"

extern uint8_t BT_linkIndex;
void BT_MMI_ActionCommand(uint8_t MMI_ActionCode, uint8_t link_index);
static bool copyCommandToBuffer(uint8_t* data, uint16_t size, uint8_t cmdInfo);

///////////////////////////////////////////// MOST USED /////////////////////////////////////////////////////////


void BT_Action( uint8_t MMI_ActionCode )
{
            BT_MMI_ActionCommand(MMI_ActionCode, BT_linkIndex);
}
//FORCE_END_CALL
//REJECT_CALL
//ACCEPT_CALL
//ANY_MODE_ENTERING_PAIRING



void BT_CallNumber(uint8_t* number, uint8_t length)
{

	uint8_t command[20], i;
	command[0] = 0xAA;	 		//header byte 0
	command[1] = 0x00;	 		//header byte 1
	command[2] = 2 + length;	 	//length
	command[3] = MAKE_CALL;			//command ID
    command[4] = BT_linkIndex;      //link_index, set to 0

	for(i=0; i <length; i++)
		*((command+5)+i) = *(number+i);

	command[5+length] = calculateChecksum(&command[2], &command[5+length-1]);
	copySendingCommandToBuffer(&command[0], 5+length+1);

}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


/*======================================*/
/*  function implemention  */
/*======================================*/


/*------------------------------------------------------------*/
void BT_MMI_ActionCommand(uint8_t MMI_ActionCode, uint8_t link_index)
{
	BT_Send_ActionCommand(MMI_ActionCode, link_index, CMD_INFO_MCU);
}
void BT_Send_ActionCommand(uint8_t MMI_ActionCode, uint8_t link_index, uint8_t cmd_info)
{
    uint8_t command[8];
    command[0] = 0xAA;      //header byte 0
    command[1] = 0x00;      //header byte 1
    command[2] = 0x03;      //length
    command[3] = MMI_CMD;      //command ID
    command[4] = link_index;      //link_index, set to 0
    command[5] = MMI_ActionCode;
    command[6] = calculateChecksum(&command[2], &command[5]);
	copyCommandToBuffer(&command[0], 7, cmd_info);
    //CommandAckStatus.MMI_ACTION_status = COMMAND_IS_SENT;
}
/*------------------------------------------------------------*/

bool copySendingCommandToBuffer(uint8_t* data, uint16_t size)
{
	USART_WriteData(data, size);
	return 0;
}

static bool copyCommandToBuffer(uint8_t* data, uint16_t size, uint8_t cmdInfo){
	USART_WriteData(data, size);
	return 0;
}

/*------------------------------------------------------------*/
static uint8_t calculateChecksum(uint8_t* startByte, uint8_t* endByte)
{
    uint8_t checksum = 0;
    while(startByte <= endByte)
    {
        checksum += *startByte;
        startByte++;
    }
    checksum = ~checksum + 1;
    return checksum;
}


/*------------------------------------------------------------*/


void BT_Send_EQCmd(uint8_t* eqData,uint8_t size)
{
	if(size >= 90)
	eqData[89] = calculateChecksum(&eqData[2], &eqData[88]);
	copySendingCommandToBuffer(eqData, 90);
}

void BT_Send_EQMode(uint8_t eqMode)
{
    uint8_t command[7];
    command[0] = 0xAA;                      //header byte 0
    command[1] = 0x00;                      //header byte 1
    command[2] = 0x03;                      //length
    command[3] = EQ_MODE_SETTING;        	//command ID
    command[4] = eqMode;                 	//
	command[5] = 0;
    command[6] = calculateChecksum(&command[2], &command[5]);
    copySendingCommandToBuffer(&command[0], 7);
}



void BT_Vendor_SendVol(uint8_t event, uint8_t updn)
{
	uint8_t command[10];
	command[0] = event;
	command[1] = 0;
	command[2] = updn;
	BT_Vendor_SendCommand(command, 3);
}


void BT_Vendor_SendCommand(uint8_t* data, uint8_t size)
{

	uint8_t command[20], i;
	command[0] = 0xAA;	 		//header byte 0
	command[1] = 0x00;	 		//header byte 1
	command[2] = 4 + size;	 	//length
	command[3] = 0x2A;			//command ID
	command[4] = 0x03;	   		//broadcast to all slaves
	command[5] = 0x00;			// vendor data length
	command[6] = size;			// vendor data length
	for(i=0; i <size; i++)
		*((command+7)+i) = *(data+i);

	command[7+size] = calculateChecksum(&command[2], &command[7+size-1]);
	copySendingCommandToBuffer(&command[0], 7+size+1);

}



/*------------------------------------------------------------*/
void BT_MusicControlCommand(uint8_t CtrlCode)
{
    uint8_t command[8];
    command[0] = 0xAA;      //header byte 0
    command[1] = 0x00;      //header byte 1
    command[2] = 0x03;      //length
    command[3] = MUSIC_CONTROL;      //command ID
    command[4] = 0x00;      //link_index, set to 0
    command[5] = CtrlCode;
    command[6] = calculateChecksum(&command[2], &command[5]);
    copySendingCommandToBuffer(&command[0], 7);
    //CommandAckStatus.MUSIC_CTRL_status = COMMAND_IS_SENT;
}

/*------------------------------------------------------------*/
void BT_SendAckToEvent(uint8_t ack_event)
{
    uint8_t command[6];
    command[0] = 0xAA;                      //header byte 0
    command[1] = 0x00;                      //header byte 1
    command[2] = 0x02;                      //length
    command[3] = MCU_SEND_EVENT_ACK;        //command ID
    command[4] = ack_event;                 //event to ack
    command[5] = calculateChecksum(&command[2], &command[4]);
    copySendingCommandToBuffer(&command[0], 6);
}

/*------------------------------------------------------------*/
void BT_SendDiscoverableCommand(uint8_t discoverable)
{
    uint8_t command[6];
    command[0] = 0xAA;
    command[1] = 0x00;
    command[2] = 0x02;
    command[3] = DISCOVERABLE;
    command[4] = discoverable;      //0: disable, 1: enable
    command[5] = calculateChecksum(&command[2], &command[4]);
    copySendingCommandToBuffer(&command[0], 6);
    //CommandAckStatus.DISCOVERABLE_status = COMMAND_IS_SENT;
}

/*------------------------------------------------------------*/
void BT_ReadBTMLinkModeCommand( void )
{
    uint8_t command[6];
    command[0] = 0xAA;
    command[1] = 0x00;
    command[2] = 0x02;
    command[3] = READ_LINK_MODE;
    command[4] = 0;         //dummy byte
    command[5] = calculateChecksum(&command[2], &command[4]);
    copySendingCommandToBuffer(&command[0], 6);
   // CommandAckStatus.READ_LINK_MODE_status = COMMAND_IS_SENT;
}

/*------------------------------------------------------------*/
void BT_ReadDeviceAddressCommand(void)
{
    uint8_t command[6];
    command[0] = 0xAA;                      //header byte 0
    command[1] = 0x00;                      //header byte 1
    command[2] = 0x02;                      //length
    command[3] = READ_LOCAL_BD_ADDR;         //command ID
    command[4] = 0x00;                      //dummy byte
    command[5] = calculateChecksum(&command[2], &command[4]);
    copySendingCommandToBuffer(&command[0], 6);
   // CommandAckStatus.READ_BD_ADDRESS_status = COMMAND_IS_SENT;
}
void BT_ReadNSpkStatus(void)
{
    uint8_t command[6];
    command[0] = 0xAA;                      //header byte 0
    command[1] = 0x00;                      //header byte 1
    command[2] = 0x02;                      //length
    command[3] = READ_NSPK_LINK_STATUS;    //command ID
    command[4] = 0x00;                      //dummy byte
    command[5] = calculateChecksum(&command[2], &command[4]);
    copySendingCommandToBuffer(&command[0], 6);

}
void BT_ReadDeviceNameCommand(void)
{
    uint8_t command[6];
    command[0] = 0xAA;                      //header byte 0
    command[1] = 0x00;                      //header byte 1
    command[2] = 0x02;                      //length
    command[3] = READ_LOCAL_DEVICE_NAME;    //command ID
    command[4] = 0x00;                      //dummy byte
    command[5] = calculateChecksum(&command[2], &command[4]);
    copySendingCommandToBuffer(&command[0], 6);
  //  CommandAckStatus.READ_Device_Name_status = COMMAND_IS_SENT;

}

void BT_ReadFeatureListCommand(void)
{
    uint8_t command[6];
    command[0] = 0xAA;                      //header byte 0
    command[1] = 0x00;                      //header byte 1
    command[2] = 0x02;                      //length
    command[3] = READ_FEATURE_LIST;    //command ID
    command[4] = 0x00;                      //dummy byte
    command[5] = calculateChecksum(&command[2], &command[4]);
    copySendingCommandToBuffer(&command[0], 6);
  //  CommandAckStatus.READ_Device_Name_status = COMMAND_IS_SENT;

}


/*------------------------------------------------------------*/
void BT_GetPairRecordCommand(void)
{
    uint8_t command[6];
    command[0] = 0xAA;                      //header byte 0
    command[1] = 0x00;                      //header byte 1
    command[2] = 0x02;                      //length
    command[3] = READ_PAIRING_RECORD;         //command ID
    command[4] = 0x00;                      //dummy byte
    command[5] = calculateChecksum(&command[2], &command[4]);
    copySendingCommandToBuffer(&command[0], 6);
    //CommandAckStatus.READ_PAIR_RECORD_status = COMMAND_IS_SENT;
}

/*------------------------------------------------------------*/
void BT_LinkBackToLastDevice(void)
{
    uint8_t command[6];
    command[0] = 0xAA;                      //header byte 0
    command[1] = 0x00;                      //header byte 1
    command[2] = 0x02;                      //length
    command[3] = PROFILE_LINK_BACK;         //command ID
    command[4] = 0x00;                      //0x00: last device, 0x01: last HFP device, 0x02: last A2DP device
    command[5] = calculateChecksum(&command[2], &command[4]);
    copySendingCommandToBuffer(&command[0], 6);
   // CommandAckStatus.LINK_BACK_status = COMMAND_IS_SENT;
}

/*------------------------------------------------------------*/
void BT_LinkBackMultipoint(void)
{
    uint8_t command[6];
    command[0] = 0xAA;                      //header byte 0
    command[1] = 0x00;                      //header byte 1
    command[2] = 0x02;                      //length
    command[3] = PROFILE_LINK_BACK;         //command ID
    command[4] = 0x06;                      //multipoint devices
    command[5] = calculateChecksum(&command[2], &command[4]);
    copySendingCommandToBuffer(&command[0], 6);
//    CommandAckStatus.LINK_BACK_status = COMMAND_IS_SENT;
}

/*------------------------------------------------------------*/
void BT_LinkBackToDeviceByBTAddress(uint8_t* address)
{
    uint8_t command[14];
    command[0] = 0xAA;                      //header byte 0
    command[1] = 0x00;                      //header byte 1
    command[2] = 10;                      //length
    command[3] = PROFILE_LINK_BACK;         //command ID
    command[4] = 0x05;              //0x05: link back to device with specified address
    command[5] = 0x00;
    command[6] = 0x07;
    command[7] = *address++;        //byte 0
    command[8] = *address++;        //byte 1
    command[9] = *address++;        //byte 2
    command[10] = *address++;        //byte 3
    command[11] = *address++;        //byte 4
    command[12] = *address++;        //byte 5
    command[13] = calculateChecksum(&command[2], &command[12]);
    copySendingCommandToBuffer(&command[0], 14);
   // CommandAckStatus.LINK_BACK_status = COMMAND_IS_SENT;
}

/*------------------------------------------------------------*/
void BT_DisconnectAllProfile(void)
{
    uint8_t command[6];
    command[0] = 0xAA;                      //header byte 0
    command[1] = 0x00;                      //header byte 1
    command[2] = 0x02;                      //length
    command[3] = DISCONNECT;                //command ID
    command[4] = 0x0f;                      //event to ack
    command[5] = calculateChecksum(&command[2], &command[4]);
    copySendingCommandToBuffer(&command[0], 6);
   // CommandAckStatus.DISCONNECT_PROFILE_status = COMMAND_IS_SENT;
}
/*------------------------------------------------------------*/
void BT_DisconnectSPPProfile(void)
{
    uint8_t command[6];
    command[0] = 0xAA;                      //header byte 0
    command[1] = 0x00;                      //header byte 1
    command[2] = 0x02;                      //length
    command[3] = DISCONNECT;                //command ID
    command[4] = 0x08;                      //event to ack
    command[5] = calculateChecksum(&command[2], &command[4]);
    copySendingCommandToBuffer(&command[0], 6);
    //CommandAckStatus.DISCONNECT_PROFILE_status = COMMAND_IS_SENT;
}

/*------------------------------------------------------------*/
void BT_DisconnectHFPProfile(void)
{
    uint8_t command[6];
    command[0] = 0xAA;                      //header byte 0
    command[1] = 0x00;                      //header byte 1
    command[2] = 0x02;                      //length
    command[3] = DISCONNECT;                //command ID
    command[4] = 0x02;                      //event to ack
    command[5] = calculateChecksum(&command[2], &command[4]);
    copySendingCommandToBuffer(&command[0], 6);
    //CommandAckStatus.DISCONNECT_PROFILE_status = COMMAND_IS_SENT;
}

/*------------------------------------------------------------*/
void BT_DisconnectA2DPProfile(void)
{
    uint8_t command[6];
    command[0] = 0xAA;                      //header byte 0
    command[1] = 0x00;                      //header byte 1
    command[2] = 0x02;                      //length
    command[3] = DISCONNECT;                //command ID
    command[4] = 0x04;                      //event to ack
    command[5] = calculateChecksum(&command[2], &command[4]);
    copySendingCommandToBuffer(&command[0], 6);
    //CommandAckStatus.DISCONNECT_PROFILE_status = COMMAND_IS_SENT;
}

/*------------------------------------------------------------*/
void BT_SetOverallGainCommand(uint8_t set_type, uint8_t gain1, uint8_t gain2, uint8_t gain3)
{
    uint8_t command[11];
    command[0] = 0xAA;                      //header byte 0
    command[1] = 0x00;                      //header byte 1
    command[3] = SET_OVERALL_GAIN;                //command ID
    command[4] = 0x00;                      //link index
    command[5] = 0x00;                      //mask bits
    command[6] = set_type;                      //type
    if(set_type == 1 || set_type == 2)
    {
        command[2] = 0x04;                    //length
        command[7] = calculateChecksum(&command[2], &command[6]);
        copySendingCommandToBuffer(&command[0], 8);
    }
    else if(set_type == 3)
    {
        command[2] = 0x07;                    //length
        command[7] = gain1&0x0f;
        command[8] = gain2&0x0f;
        command[9] = gain3&0x0f;
        command[10] = calculateChecksum(&command[2], &command[9]);
        copySendingCommandToBuffer(&command[0], 11);
    }
    else
    {
        command[2] = 0x07;                    //lengthcommand[2] = 0x07;                    //length
        command[7] = gain1&0x7f;
        command[8] = gain2&0x7f;
        command[9] = gain3&0x7f;
        command[10] = calculateChecksum(&command[2], &command[9]);
        copySendingCommandToBuffer(&command[0], 11);
    }
  //  CommandAckStatus.SET_OVERALL_GAIN_status = COMMAND_IS_SENT;
}
/*------------------------------------------------------------*/
void BT_SetOverallGain(uint8_t gain1, uint8_t gain2, uint8_t gain3)
{
    uint8_t command[11];
    command[0] = 0xAA;                      //header byte 0
    command[1] = 0x00;                      //header byte 1
    command[2] = 0x07; //lengthcommand[2] = 0x07;                    //length
    command[3] = SET_OVERALL_GAIN;                //command ID
    command[4] = 0;                      //link index
    command[5] = 0x00;                      //mask bits
    command[6] = 0x05;                      //type
    command[7] = gain1 & 0x7f;
    command[8] = gain2 & 0x7f;
    command[9] = gain3 & 0x7f;
    command[10] = calculateChecksum(&command[2], &command[9]);
    copySendingCommandToBuffer(&command[0], 11);
  //  CommandAckStatus.SET_OVERALL_GAIN_status = COMMAND_IS_SENT;
}
/*------------------------------------------------------------*/



/*------------------------------------------------------------*/
void BT_SendAppsAck(uint8_t cmd_id, uint8_t status)
{
	uint8_t command [10];
	command[0] = 0xAA;
	command[1] = 0x00;
	command[2] = 0x03;
	command[3] = 0x00;
	command[4] = cmd_id;
	command[5] = status;
	command[6] = calculateChecksum(&command[2], &command[5]);
	BT_SendSPPData(command, 7, 0);
}
void BT_SendAppsPowerStatus(uint8_t status)
{
	uint8_t command [10];
	command[0] = 0xAA;
	command[1] = 0x00;
	command[2] = 0x02;
	command[3] = 0x01;
	command[4] = status;
	command[5] = calculateChecksum(&command[2], &command[4]);
	BT_SendSPPData(command, 6, 0);
}
void BT_SendAppBTMStatus(uint8_t status)
{
	uint8_t command [10];
	command[0] = 0xAA;
	command[1] = 0x00;
	command[2] = 0x02;
	command[3] = 0x01;
	command[4] = status;
	command[5] = calculateChecksum(&command[2], &command[4]);
	BT_SendSPPData(command, 6, 0);

}


/*------------------------------------------------------------*/
void BT_SetupBTMGPIO( void )
{
    uint8_t command[20];
    command[0] = 0xAA;                      //header byte 0
    command[1] = 0x00;                      //header byte 1
    command[2] = 13;                        //length
    command[3] = GPIO_CTRL;                //command ID
    command[4] = 0xFF;                      //IO_Ctrl_Mask_P0,
    command[5] = 0xDF;                      //IO_Ctrl_Mask_P1,
    command[6] = 0xFF;                      //IO_Ctrl_Mask_P2,
    command[7] = 0xBF;                      //IO_Ctrl_Mask_P3,
    command[8] = 0x00;                      //IO_Setting_P0,
    command[9] = 0x00;                      //IO_Setting_P1,
    command[10] = 0x00;                     //IO_Setting_P2,
    command[11] = 0x00;                     //IO_Setting_P3,
    command[12] = 0x00;                     //Output_Value_P0,
    command[13] = 0x00;                     //Output_Value_P1,
    command[14] = 0x00;                     //Output_Value_P2,
    command[15] = 0x00;                     //Output_Value_P3,
    command[16] = calculateChecksum(&command[2], &command[15]);
    copySendingCommandToBuffer(&command[0], 17);
  //  CommandAckStatus.SET_GPIO_CTRL_status = COMMAND_IS_SENT;
}

/*------------------------------------------------------------*/
void BT_EnterLineInMode(uint8_t disable0_enable1, uint8_t analog0_I2S1)
{
    uint8_t command[10];
    command[0] = 0xAA;                      //header byte 0
    command[1] = 0x00;                      //header byte 1
    command[2] = 3;                        //length
    command[3] = BTM_UTILITY_FUNCTION;                //command ID
    command[4] = 1;                         //utility_function_type=0x01
    if(analog0_I2S1)
    {
        if(disable0_enable1)
            command[5] = 3;
        else
            command[5] = 2;
    }
    else
    {
        if(disable0_enable1)
            command[5] = 1;
        else
            command[5] = 0;
    }
    command[6] = calculateChecksum(&command[2], &command[5]);
    copySendingCommandToBuffer(&command[0], 7);
    //CommandAckStatus.BTM_UTILITY_REQ_status = COMMAND_IS_SENT;
}

/*------------------------------------------------------------*/
void BT_SetRXBufferSize( void )
{
    uint8_t command[10];
    command[0] = 0xAA;                      //header byte 0
    command[1] = 0x00;                      //header byte 1
    command[2] = 3;                        //length
    command[3] = BT_MCU_UART_RX_BUFF_SIZE;                //command ID
    command[4] = 0;
    command[5] = 200;
    command[6] = calculateChecksum(&command[2], &command[5]);
    copySendingCommandToBuffer(&command[0], 7);
    //CommandAckStatus.SET_RX_BUFFER_SIZE_status = COMMAND_IS_SENT;
}
void BT_ProfileLinkBack(uint8_t linked_profile, uint8_t link_index)
{
    uint8_t command[10];
    command[0] = 0xAA;                      //header byte 0
    command[1] = 0x00;                      //header byte 1
    command[2] = 3;                        //length
    command[3] = ADDITIONAL_PROFILE_LINK_SETUP;                //command ID
    command[4] = link_index;
    command[5] = linked_profile;
    command[6] = calculateChecksum(&command[2], &command[5]);
    copySendingCommandToBuffer(&command[0], 7);
    //CommandAckStatus.PROFILE_LINK_BACK_status = COMMAND_IS_SENT;
}
/*------------------------------------------------------------*/




