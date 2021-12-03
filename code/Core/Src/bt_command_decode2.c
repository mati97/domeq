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

#include <bt_command_decode2.h>
#include "bt_command_send.h"



#define BT_CMD_SIZE_MAX				200
#define Set_LED_Style(x,y,z)

//command decode state machine
typedef enum {
	RX_DECODE_CMD_SYNC_AA,
	RX_DECODE_CMD_SYNC_00,
	RX_DECODE_CMD_LENGTH,
	RX_DECODE_CMD_DATA,
	RX_DECODE_CMD_CHECKSUM
} RX_DECODE_MODE;
typedef enum
{
	APPS_GET_STATUS,
	APPS_SET_STATUS
}APPS_COMMAND;

//event ID
enum
{
  ACK = 0x00,
  DEVICE_STATE = 0x01,
  CALL_STATUS = 0x02,
  CALL_ID = 0x03,
  SMS_INDICATION = 0x04,
  MISS_CALL_INDICATION = 0x05,
  PHONE_MAX_BATTERY_LEVEL = 0x06,
  PHONE_BATTERY_LEVEL = 0x07,
  PHONE_ROAMING_STATUS = 0x08,
  PHONE_MAX_SIGNAL_STRENGTH = 0x09,
  PHONE_SIGNAL_STRENGTH = 0x0A,
  PHONE_SERVICE_STATUS = 0x0B,
  BATTERY_LEVEL = 0x0C,
  CHARGER_STATUS = 0x0D,
  RESET_TO_DEFAULT = 0x0E,
  VOLUME_LEVEL = 0x0F,
  EQ_MODE = 0x10,
  MISS_CALL_HISTORY = 0x11,
  RECEIVED_CALL_HISTORY = 0x12,
  DIALED_CALL_HISTORY = 0x13,
  COMBINE_CALL_HISTORY = 0x14,
  PHONE_BOOK = 0x15,
  ACCESS_FINISH = 0x16,
  REMOTE_DEVICE_NAME = 0x17,
  UART_VERSION = 0x18,
  CALL_LIST_REPORT = 0x19,
  AVRCP_SPEC_RSP = 0x1A,
  BTM_UTILITY_REQ = 0x1B,
  VENDOR_AT_CMD_RSP = 0x1C,
  UNKNOW_AT_RESULT = 0x1D,
  REPORT_LINK_STATUS = 0x1E,
  REPORT_PAIRING_RECORD = 0x1F,
  REPORT_LOCAL_BD_ADDR = 0x20,
  REPORT_LOCAL_DEVICE_NAME = 0x21,
  REPORT_SPP_DATA = 0x22,
  REPORT_LINK_BACK_STATUS = 0x23,
  RINGTONE_FINISH_INDICATION = 0x24,
  USER_CONFIRM_SSP_REQ = 0x25,
  REPORT_AVRCP_VOL_CTRL = 0x26,
  REPORT_INPUT_SIGNAL_LEVEL = 0x27,
  REPORT_IAP_INFO = 0x28,
  REPORT_AVRCP_ABS_VOL_CTRL = 0x29,
  REPORT_VOICE_PROMPT_STATUS = 0x2A,
  REPORT_MAP_DATA = 0x2B,
  SECURITY_BONDLING_RES = 0x2C,
  REPORT_TYPE_CODEC = 0x2D,
  REPORT_TYPE_BTM_SETTING = 0x2E,
  REPORT_MCU_UPDATE_REPLY = 0x2F,
  REPORT_BTM_INITIAL_STATUS = 0x30,
  REPORT_LE_EVENT = 0x32,
  REPORT_nSPK_STATUS = 0x33,
  REPORT_nSPK_VENDOR_EVENT = 0x34,
  REPORT_CUSTOMER_GATT_ATTRIBUTE_DATA = 0x39,
  REPORT_LINK_MODE = 0x3A,
  REPORT_FEATURE_LIST = 0x40
};

//Command decode: BTM_Utility_Req
enum
{
    BTM_CONTROL_AMP = 0x00,
    BTM_REPORT_LINE_IN_STATUS = 0x01,
    BTM_NOTIFY_HANDLE_BTM = 0x02,
    BTM_NOTIFY_EEPROM_UPDATE_FINISH = 0x03,
    BTM_REPORT_CODEC_STATUS = 0x04,
    NSPK_SYNC_POWER_OFF = 0x05,
    NSPK_SYNC_VOLUME_CTRL = 0x06,
    NSPK_SYNC_INTERNAL_GAIN = 0x07,
    NSPK_SYNC_A2DP_ABS_VOL = 0x08,
    NSPK_SYNC_CURRENT_CHANNEL_SETTING = 0x09,
    NSPK_NOTIFY_POWER_SYNCED = 0x0A,
    NSPK_NOTIFY_COMMAND_SUCCESS = 0x0B,
    NSPK_NOTIFY_COMMAND_FAIL = 0x0C,
    NSPK_NOTIFY_SLAVE_STATUS_CHANGED = 0x0D,
    NSPK_RESERVED = 0x0E,
    NSPK_NOTIFY_ADD_THIRD_SPEAKER = 0x0F
};
//command decode: BTM status
enum
{
  BT_OFF = 0x00,
  BT_DISCOVERABLE = 0x01,
  BT_ON = 0x02,
  BT_PAIRING_COMPLETE = 0x03,
  BT_PAIRING_FAIL = 0x04,
  BT_HFP_CONNECTED = 0x05,
  BT_A2DP_CONNECTED = 0x06,
  BT_HFP_DISCONNECTED = 0x07,
  BT_A2DP_DISCONNECTED = 0x08,
  BT_SCO_CONNECTED = 0x09,
  BT_SCO_DISCONNECTED = 0x0A,
  BT_ARVCP_CONNECTED = 0x0B,
  BT_AVRCP_DISCONNECTED = 0x0C,
  BT_SPP_CONNECTED = 0x0D,
  BT_SPP_DISCONNECTED = 0x0E,
  BT_STANDBY = 0x0F,
  BT_iAP_CONNECTED = 0x10,
  BT_ACL_DISCONNECTED = 0x11,
  BT_MAP_CONNECTED = 0x12,
  BT_MAP_FORBIDDEN = 0x13,
  BT_MAP_DISCONNECTED = 0x14,
  BT_ACL_CONNECTED = 0x15
};

#define INDIV_ACTION_CMD_LENGTH		8		// 4byte MAC address
//#define INDIV_ACTION_CMD_LENGTH		10		// 6byte MAC address



/*======================*/
/*  external variables  */
/*======================*/
uint8_t  BT_CmdDecodedFlag;
uint8_t  BT_CmdBuffer[BT_CMD_SIZE_MAX	];
uint8_t  BT_linkIndex = 0;

/*======================================*/
/*  internal variables          */
/*======================================*/
static RX_DECODE_MODE  BT_CmdDecodeState;
static uint8_t  BT_CmdDecodeCmdLength;
static uint8_t  BT_CmdDecodeChecksum;
static uint8_t  BT_CmdDecodeDataCnt;                    //temporary variable in decoding
static unsigned short BT_CmdBufferPt;                    //

#ifdef DATABASE2_TEST       //test only
bool ParsePayloadAsCommand(uint8_t* command, uint8_t length);
#endif
void AppsCommandDecode(uint8_t* buffer);


/*======================================*/
/*  function implemention       */
/*======================================*/
void BT_CommandDecodeInit(void)
{
    BT_CmdDecodedFlag = 0;
    BT_CmdDecodeState = RX_DECODE_CMD_SYNC_AA;
   // while(eusartRxCount)
    //{
    //    EUSART_Read();
   // }
    //BT_SPPBuffClear();
}

void BT_CommandDecodeMain(void)
{
	BT_CommandHandler();
	if(BT_CmdDecodedFlag)
	{
            BT_CommandDecode();
            BT_CmdDecodedFlag = 0;
	}
}

extern volatile uint8_t eusartRxCount;

void BT_CommandHandler(void) {
    uint8_t current_byte;

    while (eusartRxCount) {
        //current_byte = EUSART_Read();

        switch (BT_CmdDecodeState) {
            case RX_DECODE_CMD_SYNC_AA:
                if (current_byte == 0xaa)
                    BT_CmdDecodeState = RX_DECODE_CMD_SYNC_00;
                break;

            case RX_DECODE_CMD_SYNC_00:
                if (current_byte == 0x00)
                    BT_CmdDecodeState = RX_DECODE_CMD_LENGTH;
                else
                    BT_CmdDecodeState = RX_DECODE_CMD_SYNC_AA;
                break;

            case RX_DECODE_CMD_LENGTH:
                BT_CmdDecodedFlag = 0; //command receive flag clear
                BT_CmdBufferPt = 0; //buffer reset for command parameter
                BT_CmdDecodeCmdLength = current_byte;
                BT_CmdDecodeChecksum = current_byte; //checksum calculation start!
                BT_CmdDecodeDataCnt = current_byte; //save bytes number, use to check where is command end
                BT_CmdDecodeState = RX_DECODE_CMD_DATA; //next state
                break;

            case RX_DECODE_CMD_DATA:
                BT_CmdDecodeChecksum += current_byte;
                BT_CmdDecodeDataCnt--;
                BT_CmdBuffer[BT_CmdBufferPt++] = current_byte;
                if (BT_CmdDecodeDataCnt == 0) //no data remained?
                    BT_CmdDecodeState = RX_DECODE_CMD_CHECKSUM; //yes, next mode: checksum
                break;

            case RX_DECODE_CMD_CHECKSUM:
                if ((uint8_t) (BT_CmdDecodeChecksum + current_byte) == 0) {
                    BT_CmdDecodedFlag = 1;
                } else {
                }
                BT_CmdDecodeState = RX_DECODE_CMD_SYNC_AA;
                break;
            default:
                break;
        }

        if (BT_CmdDecodedFlag) {
            break;
        }
    }
}

void BT_CommandDecode( void )
{
    switch(BT_CmdBuffer[0])
    {
    	case CALL_STATUS:

    		//BTAPP_EventHandler(BT_EVENT_CALL_STATUS_CHANGED, (uint16_t)BT_CmdBuffer[2], &BT_CmdBuffer[1]);
    		break;

        case REPORT_AVRCP_ABS_VOL_CTRL: //0x29 command

            //BTAPP_EventHandler(BT_EVENT_AVRCP_ABS_VOLUME_CHANGED, (uint16_t)(BT_CmdBuffer[2]), &BT_CmdBuffer[1]);
            break;

        case RINGTONE_FINISH_INDICATION: //0x29 command

            //BTAPP_EventHandler(BT_EVENT_AVRCP_ABS_VOLUME_CHANGED, (uint16_t)(BT_CmdBuffer[2]), &BT_CmdBuffer[1]);
            break;

        default:
        	break;
    }

}
