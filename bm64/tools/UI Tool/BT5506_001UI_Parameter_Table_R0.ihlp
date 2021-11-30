256
Name
Help;;help_end;;
ID
Power Switch Type
Display with picture;;help_end;;
IDC_STATIC_POWER_SWITCH_SETTING1
Buzzer Output Enable
Enable buzzer function if enable.;;help_end;;
IDC_STATIC_BUZZER_SETTING1
Buzzer Output Type
Choose the buzzer type
0: 1/0 type buzzer
1: PWM frequency type buzzer;;help_end;;
IDC_STATIC_BUZZER_SETTING2
Buzzer Default On/Off
Buzzer mode(reset to default usage) and current buzzer mode.;;help_end;;
IDC_STATIC_BUZZER_SETTING3
Power On Buzzer Mode
Select a buzzer type for power on action.;;help_end;;
IDC_STATIC_BUZZER_SETTING4
Power Off Buzzer Mode
Select a buzzer type for power off action.;;help_end;;
IDC_STATIC_BUZZER_SETTING5
Ring Buzzer Mode
Select a buzzer type for receive an incoming call.;;help_end;;
IDC_STATIC_BUZZER_SETTING6
Enter Pairing Buzzer Mode
Select a buzzer type for enter pairing mode.;;help_end;;
IDC_STATIC_BUZZER_SETTING7
Pairing Complete Buzzer Mode
Select a buzzer type for pairing ok.;;help_end;;
IDC_STATIC_BUZZER_SETTING8
Battery Low Buzzer Mode
Select a buzzer type for low battery level.;;help_end;;
IDC_STATIC_BUZZER_SETTING9
Link Loss Buzzer Mode
Select a buzzer type for link loss.;;help_end;;
IDC_STATIC_BUZZER_SETTING13
Link Weak Buzzer Mode
Select a buzzer type for link quality bad.;;help_end;;
IDC_STATIC_BUZZER_SETTING14
NFC Buzzer Mode
Select a buzzer type for NFC triggered.;;help_end;;
IDC_STATIC_BUZZER_SETTING15
Piezo PWM Frequency
Select a buzzer type for frequency of buzzer.;;help_end;;
IDC_STATIC_BUZZER_SETTING12
Enable HCI Uart
Enable Application to use HCI UART.;;help_end;;
IDC_STATIC_UART_SETTING1
UART Baudrate
The baud rate for HCI UART.;;help_end;;
IDC_STATIC_UART_SETTING2
CPU Idle Mode
Disable/Enable cpu idle function.;;help_end;;
IDC_STATIC_UART_SETTING5
Wake Up Delay Time
Waiting time to start uart tx after wakeup mcu.;;help_end;;
IDC_STATIC_UART_SETTING4
CLIP Name or Number
"Number Only" : Send phone number only.
"Name Piority" : Send name is priority.;;help_end;;
IDC_STATIC_UART_SETTING6
NFC Detection Enable
Enable NFC detection.;;help_end;;
IDC_STATIC_NFC_SETTING1
NFC Stable Time
NFC signal detect counter;;help_end;;
IDC_STATIC_NFC_SETTING2
Link Quality Detection
Enable link quality detection.;;help_end;;
IDC_STATIC_LINK_QUALITY_SETTING1

User MMI Data Setting
Enable/Disable embedded spp predefine user data
IDC_STATIC_USER_MMI_DATA0

Bluetooth Device Address
The BD_ADDR is the Bluetooth address of the device.;;help_end;;
IDC_STATIC_BD_ADDRESS1
Name Fragment
Name Fragment is a local device name. 
If a remote device requires a local name,
a local device replies the local device name.;;help_end;;
IDC_STATIC_NAME1
Enable Simple Pairing
Enable simple pairing when pairing;;help_end;;
IDC_STATIC_MISC_OPTION7
PIN Code
The PIN code which is four byte ASCII code is a fixed PIN code of a local device.
The local device replies the PIN  code using the PIN code when remote devices send a PIN code 
request command.;;help_end;;
IDC_STATIC_PIN_CODE
Always Re-bundle in Pairing Mode
Always request PIN code in pairing mode if enable.;;help_end;;
IDC_STATIC_MISC_OPTION2
Enable Pairing as Standby Mode
Enter pairing mode when HS in standby mode.;;help_end;;
IDC_STATIC_MISC_OPTION4
Enter Pairing When Power On
Enter pairing mode when SHS power on.;;help_end;;
IDC_STATIC_MISC_OPTION5
Suspend Stream When SCO Established
Send "Suspend" command or not when the others established SCO connection.;;help_end;;
IDC_STATIC_MISC_OPTION9
Circular Volume Control
Enable volume control using circular method.;;help_end;;
IDC_STATIC_MISC_OPTION10
Class of Device
The Class is the class of device/service field (CoD).
It is indicated using the 'Format Type field' within the CoD.
The value could be 0x040424(HS) or 0x001F00(Uncategorized);;help_end;;
IDC_STATIC_MISC_OPTION11
Phone NR and EC Function
Ask phone to enable/disable NR & AEC function.;;help_end;;
IDC_STATIC_MISC_OPTION13
Report Battery Status to Smart Phone
Report handset device about speaker/hs battery status via AT command.;;help_end;;
IDC_STATIC_MISC_OPTION14
Link Application
Single-link:Only one HF link exists.
Multi-link:Two HF links exist.;;help_end;;
IDC_STATIC_MISC_OPTION8
Hang Up a Call When Switch Off
Turn off Bluetooth device will hang up a call,too. This function only active in slide switch mode.;;help_end;;
IDC_STATIC_MISC_OPTION20
Shut Down Power in Off State
Turn off power when system is in off state. This function must be always enabled unless power is controlled by other external chip.;;help_end;;
IDC_STATIC_MISC_OPTION21
External Amplifier 
Enable the output pin to indicate external amplifier.;;help_end;;
IDC_STATIC_EXTERNAL_AMPLIFIER1
External Amplifier Indication IO
Use P2_2 to be external amplifier enable pin.;;help_end;;
IDC_STATIC_EXTERNAL_AMPLIFIER2
Indicate Pin1 Polarity (P04)
Output indication polarity (pin1).;;help_end;;
IDC_STATIC_INDICATION_FUNCTION1
Indicate Pin2 Polarity (P03)
Output indication polarity (pin2).;;help_end;;
IDC_STATIC_INDICATION_FUNCTION2
Voice(SCO) Indication
Indicate when SCO link established .;;help_end;;
IDC_STATIC_INDICATION_FUNCTION3
Audio(SBC) Indication
Indicate when playing music through SBC.;;help_end;;
IDC_STATIC_INDICATION_FUNCTION4
Ring Tone Indication
Indicate when HS has a ring tone .;;help_end;;
IDC_STATIC_INDICATION_FUNCTION5
Incoming Call Indication
Indicate when Incoming call.;;help_end;;
IDC_STATIC_INDICATION_FUNCTION6
HF Link Indication
Indicate when HF link established.;;help_end;;
IDC_STATIC_INDICATION_FUNCTION8
A2DP Link Indication
Indicate when A2DP link established.;;help_end;;
IDC_STATIC_INDICATION_FUNCTION9
Button Event Trigger Indication
Indicate when button event trigger.;;help_end;;
IDC_STATIC_INDICATION_FUNCTION10
Factory Default Timer
If in off mode,power button been pressed over this time, 
system will clear some EEPROM parameter to default value.
(This timer must bigger than Enter Pairing Press Duration);;help_end;;
IDC_STATIC_FACTORY_DEFAULT_SETTING2
Bundle
The flag for the Audio Gateway that defined the chip inside from ISSC. 
This column must be enable if you want to connect to ISSC's Audio Gateway.;;help_end;;
IDC_STATIC_AUDIO_GATEWAY_BUNDLE
Address
The BT address of specified Audio Gateway. 
When you enter data to a headset,it connects with specified Audio Gateway directly after power on.;;help_end;;
IDC_STATIC_AUDIO_GATEWAY_ADDRESS
Enable Save Max. Number of Paired Devices
Setting the max. number that will be save into EEPROM.;;help_end;;
IDC_STATIC_CONNECTION_SETTING3
Search Paired Devices Pattern Setting
If select All Devices,then Search all devices in paired device list and link back to one of all devices.
If select Last Device Only,then only find the last disconnected device in Paired list and link it back.;;help_end;;
IDC_STATIC_CONNECTION_SETTING10
Pairing Timeout
HS will close pairing mode when timer out.;;help_end;;
IDC_STATIC_CONNECTION_SETTING1
Link Loss Reconnect Timeout
When HF link loss,it will try to link back until page fail times reached this value.;;help_end;;
IDC_STATIC_CONNECTION_SETTING2
Power On Link Back Setting
Enable/Disable link back function when system power on.;;help_end;;
IDC_STATIC_CONNECTION_SETTING8
Power On Link Back Profile(s) Setting
If Last Device selected, then link back all profile(s) that last disconnected device supported and recorded in the Device
If Hands-free Profile selected, then only link back hands-free profile that last disconnected device supported and recorded in the Device
If A2DP Profile selected,then only link back A2DP profile that last disconnected device supported and recorded in the Device
Notice: 
for some mobile phone,even if you set the parameter on your bluetooth device side, but phone will perhaps establish the others profile(s) that supported by your bluetooth device and recorded in these phone.;;help_end;;
IDC_STATIC_CONNECTION_SETTING6
Link HF Timeout
HF page fail retry duration.;;help_end;;
IDC_STATIC_CONNECTION_SETTING7
Link A2DP Timeout
A2DP page fail retry duration.;;help_end;;
IDC_STATIC_CONNECTION_SETTING4
Link SPP When Profile Connection Exist
Disable:  system doesn¡¦t establish SPP link.
Hands-free Profile: system will establish SPP link when HF profile link exists.
A2DP Profile: system will establish SPP link when A2DP profile link exists.;;help_end;;
IDC_STATIC_CONNECTION_SETTING5
Power On
This is the time interval to turn on the power after pressing power button.;;help_end;;
IDC_STATIC_BUTTON_PRSEE_TIME1
Power Off
This is the time interval to turn off the power after pressing power button.;;help_end;;
IDC_STATIC_BUTTON_PRSEE_TIME2
Enter Pairing
The parameter is the time to enter the paring mode from the power on state.
The total waiting time to enter pairing mode from 
power off state = "Enter Pairing Press time" + "Power On Press Time".;;help_end;;
IDC_STATIC_BUTTON_PRSEE_TIME3
Long Button Press
This is the time for long press button action. 
When the pressing time is less then this parameter, call it "Short Press".;;help_end;;
IDC_STATIC_BUTTON_PRSEE_TIME4
MFB Double Click Recognize Period
This is the time for double click MFB action. 
When pressing MFB twice within this time, it will trigger double click function.;;help_end;;
IDC_STATIC_BUTTON_PRSEE_TIME5
No Service Warning Time
When mobile phone loss mobile signal, 
it will indicate headset to notify user every this time.;;help_end;;
IDC_STATIC_WARRING_TIME1
Low Battery Warning Time
The low battery warning time is the time period on 
which the device does some low battery warning actions while the device battery is low.;;help_end;;
IDC_STATIC_WARRING_TIME2
Mute Alarm Time
When microphone mute, it will notify user every this time.;;help_end;;
IDC_STATIC_WARRING_TIME3
Auto Power Off Time
The parameter is the time to turn off the power automatically at the standby mode.
When the value is 0, it will disable this function.;;help_end;;
IDC_STATIC_POWER_SAVE1
Auto Power Off Enable
Set auto_power_off_time to shut down power when it enters standby mode, 
no key is pressed, no adapter in and no streaming after line-in silence detect
( if detection circuit is installed and silence detect is enabled in DSP tool) 
;;help_end;;
IDC_CHECK_AUTO_POWER_OFF_MASK1
Pairing Timeout Shut Down Directly Enable
When SHS pairing timeout, then shut down.;;help_end;;
IDC_CHECK_AUTO_POWER_OFF_MASK2
A2DP Link Silence
SHS shuts down automatically when it hasn't any streaming with only a2dp link.;;help_end;;
IDC_CHECK_AUTO_POWER_OFF_MASK3
Long Press Repeat Time
When button already been long press, and repeat mask been set,
then if button been press over this time, button long press event will trigger again(unit in 80ms).;;help_end;;
IDC_STATIC_BUTTON_OPTION1
Long Press Repeat Mask
Enable button keep press trigger long button press event 
which is the same rule as check_power_button bit mask except for power button.;;help_end;;
IDC_STATIC_BUTTON_OPTION2
HS Button Mapping
Enable the Button bit mask.
If the button is not checked , then user can not select the key function.;;help_end;;
IDC_STATIC_BUTTON_OPTION3
Support HS Profile
Response HS profile, 
tell the remote host that I am a headset (SCO only).;;help_end;;
IDC_STATIC_PROFILE_SETTING1
Support HF Profile
Response HF profile, 
tell the remote host that I am a headset with AT-command.;;help_end;;
IDC_STATIC_PROFILE_SETTING2
Support A2DP Profile
Response A2DP profile, 
tell the remote host that I am a A2DP SNK(Rx).;;help_end;;
IDC_STATIC_PROFILE_SETTING3
Support AVRCP Controller
Response AVRCP CT profile, 
tell the remote host that I am an AV remote control.;;help_end;;
IDC_STATIC_PROFILE_SETTING4
Support AVRCP Target
Response AVRCP TG profile,
tell the remote host that you can ask vol-up/vol-down by AVRCP profile.;;help_end;;
IDC_STATIC_PROFILE_SETTING5
Support PBAP Profile
Response Phonebook Access profile, tell the remote host 
that I can access contact in remote device by PBAP profile.;;help_end;;
IDC_STATIC_PROFILE_SETTING6
Support Serial-Port Profile
Response SPP profile, 
tell the remote host that I am a serial-port.;;help_end;;
IDC_STATIC_PROFILE_SETTING10
Auto Register Notification
When A2DP link established, auto register EVENT to ask report media player status.;;help_end;;
IDC_STATIC_PROFILE_SETTING9
Function Mapping Table
There are eight states,Each state has twelve independent button operation,
      and four combine button option,and each operation represents one function.
      When you operate a button behavior, the corresponding fucntion will be triggered.
      For example, if you want to trigger voice dial function by short-press 
      MFB,  0x0a must be filled in short press MFB field in statndby state.
      The description of functions is as below.
Function list: 

  0x00 None: No action
  0x04 Answer: Answer incoming call. Be used in incoming call mode.
  0x05 Reject Call: Reject incoming call. Be used in incoming call and outgoing call mode.
  0x06 End Call: End current active call. Be used in call active and multiple calls mode.
  0x07 Toggle Mic Mute:
      If microphone mute, then un-mute microphone.
      If microphone un-mute, then mute microphone.
  0x08 Mic Mute: Mute microphone. Be used in call active and multiple calls mode.
  0x09 Mic Unmute: Unmute microphone. Be used in call active and multiple calls mode.
  0x0a Initial Voice Dial: Initial voice dial function. Be used in standby mode.
  0x0b Cancel Voice Dial: Cancel voice dial. Be used in voice dial mode.
  0x0c Last Number Redial: Redial last dial-out number. Be used in standby mode.
  0x0d Call Waiting(Switch to Second Phone): Hold active call and answer second incoming call 
      or switch to held call. Be used in call active and multiple calls mode.
  0x0e Transfer to Phone: Voice transfer. Be used in call active and standby mode. If you want
      to transfer voice between phone and headset operating the same button behavior, this
      function should be also filled in standby mode. Or you may fill "Initiate Voice Dial" or
      "Last Number Redial" in standby mode, these two functions also transfer voice to headset.
  0x10 Join Two Calls: Conference call. Be used in call active and multiple calls mode.
  0x11 Release Waiting Call: Reject second incoming call or end the held call.
  0x12 Release Active Call and Accept Waiting Call: End the active call and answer second 
      incoming call.
  0x16 Connect HF Link: Link back HF link from headset.
  0x17 Disconnect HF Link: Disconnect HF link from headset.
  0x1a Toggle RX_NR: 
      If RX NR function is ON, then trigger RX NR function OFF.
      If RX NR function is OFF, then trigger RX NR function ON.
  0x1d Toggle TX_NR:
      If TX NR function is ON, then trigger TX NR function OFF.
      If TX NR function is OFF, then trigger TX NR function ON.
  0x20 Toggle AEC: 
      If AEC function is ON, then trigger AEC function OFF.
      If AEC function is OFF, then trigger AEC function ON.
  0x23 Toggle AEC_RX_NR: 
      If RX NR function is ON, then trigger RX NR function OFF.
      If RX NR function is OFF, then trigger RX NR function ON.
      If AEC function is ON, then trigger AEC function OFF.
      If AEC function is OFF, then trigger AEC function ON.
  0x26 Toggle Active Device: Change HF primary device.
  0x30 Volume Up:
      If in audio stream state, up one audio gain level.
      If in voice state, up one voice gain level.
      Otherwise do nothing.
  0x31 Volume Down: 
      If in audio stream state, down one audio gain level.
      If in voice state, down one voice gain level.
      Otherwise do nothing.
  0x32 Play: 
      If no A2DP link, link back A2DP device(if device list available)
      Otherwise AVRCP play/pause function.
  0x33 Stop: Stop function.
  0x34 Forward: Forward function.
  0x35 Backward: Backward function.
  0x36 Fast Forward: Fast forward function.
  0x37 Rewind: Rewind function.
  0x38 EQ Up: Equalizer mode up if in audio stream state.
  0x39 EQ Down: Equalizer mode down if in audio stream state.
  0x3a Lock Button: Lock button(this event can not set on power button).
  0x3b Disconnect AV Link: Disconnect A2DP link from headset.
  0x55 OLED Reverse: Reverse OLED panel.
  0x57 Force Speaker Gain Toggle: To force decrease speaker gain an offset level.
  0x58 Button Indication Toggle: To output a GPIO to indicate other device when button event triggered.
  0x59 Function0: Used for combine two button function.
  0x5a Function1: Used for combine two button function.
  0x5b Function2: Used for combine two button function.
  0x5c Function3: Used for combine two button function.
  0x5d Pairing Mode: Button event to enter pairing mode.
  0x5f Disable LED: Turn off LED(wake up by button or BT status changed)
  0x60 Toggle Buzzer: Buzzer ON/OFF toggle.
  0x61 Mute Buzzer: Buzzer OFF.
  0x62 Unmute Buzzer: Buzzer ON.
  0x6a Indicate Battery Status: Display current battery level by LED.
  0x6b Toggle Voice Prompt:
      If the voice prompt is on, then trigger voice prompt function OFF.
      If the voice prompt is off, then trigger voice prompt tone ON.;;help_end;;
IDC_STATIC_FUNCTION_MAPPING_TABLE
LED1 Brightness
The brightness of LED1.;;help_end;;
IDC_STATIC_LED_BRIGHTNESS_SETTING1
LED2 Brightness
The brightness of LED2.;;help_end;;
IDC_STATIC_LED_BRIGHTNESS_SETTING2
Type
This is the LED display method.;;help_end;;
IDC_STATIC_LED_TYPE
On Duration
This the LED on time for flash.;;help_end;;
IDC_STATIC_LED_ON_TIME
Off Duration
This the LED off time for flash.;;help_end;;
IDC_STATIC_LED_OFF_TIME
Count
This is the number of the flash times for a round.;;help_end;;
IDC_STATIC_LED_COUNT
Type
This is the LED display method.;;help_end;;
IDC_STATIC_LED_TYPE
On Duration
This the LED on time for flash.;;help_end;;
IDC_STATIC_LED_ON_TIME
Off Duration
This the LED off time for flash.;;help_end;;
IDC_STATIC_LED_OFF_TIME
Count
This is the number of the flash times for a round.;;help_end;;
IDC_STATIC_LED_COUNT
Type
This is the LED display method.;;help_end;;
IDC_STATIC_LED_TYPE
On Duration
This the LED on time for flash.;;help_end;;
IDC_STATIC_LED_ON_TIME
Off Duration
This the LED off time for flash.;;help_end;;
IDC_STATIC_LED_OFF_TIME
Count
This is the number of the flash times for a round.;;help_end;;
IDC_STATIC_LED_COUNT
Interval
This is the time interval for a round.;;help_end;;
IDC_STATIC_LED_INTERVAL
Type
This is the LED display method.;;help_end;;
IDC_STATIC_LED_TYPE
On Duration
This the LED on time for flash.;;help_end;;
IDC_STATIC_LED_ON_TIME
Off Duration
This the LED off time for flash.;;help_end;;
IDC_STATIC_LED_OFF_TIME
Count
This is the number of the flash times for a round.;;help_end;;
IDC_STATIC_LED_COUNT
Type
This is the LED display method.;;help_end;;
IDC_STATIC_LED_TYPE
On Duration
This the LED on time for flash.;;help_end;;
IDC_STATIC_LED_ON_TIME
Off Duration
This the LED off time for flash.;;help_end;;
IDC_STATIC_LED_OFF_TIME
Count
This is the number of the flash times for a round.;;help_end;;
IDC_STATIC_LED_COUNT
Interval
This is the time interval for a round.;;help_end;;
IDC_STATIC_LED_INTERVAL
Type
This is the LED display method.;;help_end;;
IDC_STATIC_LED_TYPE
On Duration
This the LED on time for flash.;;help_end;;
IDC_STATIC_LED_ON_TIME
Off Duration
This the LED off time for flash.;;help_end;;
IDC_STATIC_LED_OFF_TIME
Count
This is the number of the flash times for a round.;;help_end;;
IDC_STATIC_LED_COUNT
Interval
This is the time interval for a round.;;help_end;;
IDC_STATIC_LED_INTERVAL
Type
This is the LED display method.;;help_end;;
IDC_STATIC_LED_TYPE
On Duration
This the LED on time for flash.;;help_end;;
IDC_STATIC_LED_ON_TIME
Off Duration
This the LED off time for flash.;;help_end;;
IDC_STATIC_LED_OFF_TIME
Count
This is the number of the flash times for a round.;;help_end;;
IDC_STATIC_LED_COUNT
Type
This is the LED display method.;;help_end;;
IDC_STATIC_LED_TYPE
On Duration
This the LED on time for flash.;;help_end;;
IDC_STATIC_LED_ON_TIME
Off Duration
This the LED off time for flash.;;help_end;;
IDC_STATIC_LED_OFF_TIME
Count
This is the number of the flash times for a round.;;help_end;;
IDC_STATIC_LED_COUNT
Interval
This is the time interval for a round.;;help_end;;
IDC_STATIC_LED_INTERVAL
Type
This is the LED display method.;;help_end;;
IDC_STATIC_LED_TYPE
On Duration
This the LED on time for flash.;;help_end;;
IDC_STATIC_LED_ON_TIME
Off Duration
This the LED off time for flash.;;help_end;;
IDC_STATIC_LED_OFF_TIME
Count
This is the number of the flash times for a round.;;help_end;;
IDC_STATIC_LED_COUNT
Interval
This is the time interval for a round.;;help_end;;
IDC_STATIC_LED_INTERVAL
Type
This is the LED display method.;;help_end;;
IDC_STATIC_LED_TYPE
On Duration
This the LED on time for flash.;;help_end;;
IDC_STATIC_LED_ON_TIME
Off Duration
This the LED off time for flash.;;help_end;;
IDC_STATIC_LED_OFF_TIME
Count
This is the number of the flash times for a round.;;help_end;;
IDC_STATIC_LED_COUNT
Type
This is the LED display method.;;help_end;;
IDC_STATIC_LED_TYPE
On Duration
This the LED on time for flash.;;help_end;;
IDC_STATIC_LED_ON_TIME
Off Duration
This the LED off time for flash.;;help_end;;
IDC_STATIC_LED_OFF_TIME
Count
This is the number of the flash times for a round.;;help_end;;
IDC_STATIC_LED_COUNT
Interval
This is the time interval for a round.;;help_end;;
IDC_STATIC_LED_INTERVAL
Type
This is the LED display method.;;help_end;;
IDC_STATIC_LED_TYPE
On Duration
This the LED on time for flash.;;help_end;;
IDC_STATIC_LED_ON_TIME
Off Duration
This the LED off time for flash.;;help_end;;
IDC_STATIC_LED_OFF_TIME
Count
This is the number of the flash times for a round.;;help_end;;
IDC_STATIC_LED_COUNT
Interval
This is the time interval for a round.;;help_end;;
IDC_STATIC_LED_INTERVAL
Type
This is the LED display method.;;help_end;;
IDC_STATIC_LED_TYPE
On Duration
This the LED on time for flash.;;help_end;;
IDC_STATIC_LED_ON_TIME
Off Duration
This the LED off time for flash.;;help_end;;
IDC_STATIC_LED_OFF_TIME
Count
This is the number of the flash times for a round.;;help_end;;
IDC_STATIC_LED_COUNT
Interval
This is the time interval for a round.;;help_end;;
IDC_STATIC_LED_INTERVAL
Charging Led Option
Charger do not affect LED function if 0x01.;;help_end;;
IDC_STATIC_CHARGING_LED_SETTING1
Charging Led Complete Option
0x00 Normal: No extra action to indicate.
0x01 LED0 On Then Normal: LED0 flash one time then return to normal.
0x02 LED0 always On: LED0 is always on.
0x03 LED0 always Off: LED0 is always off.;;help_end;;
IDC_STATIC_CHARGING_LED_SETTING2
Charging Error Led Option
0x00 Same as charge OK: The LED behavior is the same with charging complete.
0x01 LED1 flash, LED0 always Off: LED1 keeping flash and LED0 always off.;;help_end;;
IDC_STATIC_CHARGING_LED_SETTING3
Extra Charging Complete Led
Use P2_4 to control LED for charger status.
(only ON when charger complete);;help_end;;
IDC_STATIC_CHARGING_LED_SETTING4
Use Tone Set
Disable/Enable use 2nd tone set.;;help_end;;
IDC_STATIC_TONE_SETTING23
Power On Tone
Tone type for power on.;;help_end;;
IDC_STATIC_TONE_SETTING10
Enter Pairing Tone
Ring tone when enter pairing mode.;;help_end;;
IDC_STATIC_TONE_SETTING12
Pairing Complete Tone
Tone type for pairing complete.;;help_end;;
IDC_STATIC_TONE_SETTING6
Pairing Not Complete Tone
Tone type for pairing fail.;;help_end;;
IDC_STATIC_TONE_SETTING29
Incoming Call Tone
Tone type for incoming call.;;help_end;;
IDC_STATIC_TONE_SETTING7
Reject Incoming Call Tone
Ring tone when rejecting an incoming call.;;help_end;;
IDC_STATIC_TONE_SETTING34
Call Actvie Tone
Ring tone when answering a call.;;help_end;;
IDC_STATIC_TONE_SETTING4
End Call Tone
Ring tone when ending a call.;;help_end;;
IDC_STATIC_TONE_SETTING5
Charging Initiate Tone
Ring tone when charger initialize.;;help_end;;
IDC_STATIC_TONE_SETTING35
Charging Complete Tone
Ring tone when charging is completed.;;help_end;;
IDC_STATIC_TONE_SETTING36
Low Battery Tone
Ring tone in low battery.(<3.5v);;help_end;;
IDC_STATIC_TONE_SETTING8
Battery Level 2 Tone
Ring tone in battery level two.(>=3.6v);;help_end;;
IDC_STATIC_TONE_SETTING38
Battery Level 3 Tone
Ring tone in battery level three.(>=3.7v);;help_end;;
IDC_STATIC_TONE_SETTING39
Battery Level 4 Tone
Ring tone in battery level four.(>=3.8v);;help_end;;
IDC_STATIC_TONE_SETTING40
Battery Level 5 Tone
Ring tone in battery level five.(>=3.9v);;help_end;;
IDC_STATIC_TONE_SETTING41
Battery Level 6 Tone
Ring tone in battery level six.(>=4.0v);;help_end;;
IDC_STATIC_TONE_SETTING42
Full Battery Tone
Ring tone in battery is full.(>=4.1v);;help_end;;
IDC_STATIC_TONE_SETTING43
Max Volume Tone
Ring tone when volume level is maximum.;;help_end;;
IDC_STATIC_TONE_SETTING44
Min Volume Tone
Ring tone when volume level is minimum.;;help_end;;
IDC_STATIC_TONE_SETTING45
HF Link Ok Tone
Ring tone when HF linked.;;help_end;;
IDC_STATIC_TONE_SETTING27
Music Mode Ready Tone
Ring tone when A2DP linked.;;help_end;;
IDC_STATIC_TONE_SETTING17
Link Loss Tone
Tone type for link lost.;;help_end;;
IDC_STATIC_TONE_SETTING18
Link Disconnect Tone
Tone type for normal ACL link disconnect.;;help_end;;
IDC_STATIC_TONE_SETTING13
Toggle Tone Set Tone
Ring tone when changing tone set.;;help_end;;
IDC_STATIC_TONE_SETTING46
Voice Dial Tone
Ring tone when initiate voice dial.;;help_end;;
IDC_STATIC_TONE_SETTING47
Last Number Redial Tone
Ring tone when redialing last phone number.;;help_end;;
IDC_STATIC_TONE_SETTING48
Short Press Tone
Ring tone when short press MFB.;;help_end;;
IDC_STATIC_TONE_SETTING1
Long Press Tone
Ring tone when long press MFB.;;help_end;;
IDC_STATIC_TONE_SETTING2
Double Click Tone
Ring tone when double click MFB.;;help_end;;
IDC_STATIC_TONE_SETTING3
No Service Tone
Ring tone when system service of mobile phone is not available.;;help_end;;
IDC_STATIC_TONE_SETTING9
Mute Tone
Ring tone when mute tunction enable.;;help_end;;
IDC_STATIC_TONE_SETTING15
Button Lock Tone
Ring tone when button locked.;;help_end;;
IDC_STATIC_TONE_SETTING16
Function Alarm Tone
Ring tone when NFC plug;;help_end;;
IDC_STATIC_TONE_SETTING32
Link Quality Warning Tone
Ring tone when out of range .;;help_end;;
IDC_STATIC_TONE_SETTING28
Connected Second Profile Tone
Select the tone type for the second profile connected.;;help_end;;
IDC_STATIC_TONE_SETTING62
RSSI Weak Threshold
"RSSI Weak Threshold" will be compared with the average of real rssi , 
the average of real rssi was calculated by (2^Average_RSSI_Counter) times rssi data.;;help_end;;
IDC_STATIC_TONE_SETTING24
Fixed Ring Tone Volume
Fix ring tone volume.;;help_end;;
IDC_STATIC_TONE_SETTING19
Ring Tone Volume
Gain level(0¡ã15) for fix ring tone volume usage.;;help_end;;
IDC_STATIC_TONE_SETTING20
Button Press Alarm
Always alarm ring tone when any button triggered except volume control key.;;help_end;;
IDC_STATIC_TONE_SETTING21
MFB Long Press Force Alarm
Always alarm ring tone when MFB triggered.;;help_end;;
IDC_STATIC_TONE_SETTING22
Incoming Call Repetition
Enable the repeated tone setting for receiving incoming call.;;help_end;;
IDC_STATIC_TONE_SETTING33
Phone Number Prompt
Enable prompt incoming call phone number.;;help_end;;
IDC_STATIC_TONE_SETTING49
Use 2nd Connected Tone
0: Use dedicate profile connected tone setting.
1: Use connected_tone2 as 2nd connected profile indication tone.;;help_end;;
IDC_STATIC_TONE_SETTING50
Battery Status Prompt When Button Triggered
Battery status prompt when trigger MMI event;;help_end;;
IDC_STATIC_TONE_SETTING51
Battery Status Prompt When Power On
Battery Status Prompt When Power On;;help_end;;
IDC_STATIC_TONE_SETTING52
Battery Detection Enable
Enable/Disable battery detection function.;;help_end;;
IDC_STATIC_BATTERY_DETECTION1
Low Battery Warning Level
This parameter is defined a normal voltage value of a battery. 
When the voltage is lower than this value, the device will start ring tone alert.;;help_end;;
IDC_STATIC_BATTERY_DETECTION2
Battery Shut Down Level
The Low_Battery_Level is defined a low voltage value of a battery. 
When the voltage is lower than this value, the device will shut down.;;help_end;;
IDC_STATIC_BATTERY_DETECTION3
Charging Detect Enable
Enable charger function.;;help_end;;
IDC_STATIC_CHARGING_SETTING1
Advance Charger Enable  (charging 30 min more)
Addition of 30mins charger.;;help_end;;
IDC_STATIC_CHARGING_SETTING2
Re-charging As Charge Complete
Re-charging if battery voltage <= 4.1V.;;help_end;;
IDC_STATIC_CHARGING_SETTING3
Constant Current Percent
Charger current in constant current mode will be C x CC_current_percent /100 .
Note : The maximum charge current = 200mAH.;;help_end;;
IDC_STATIC_CHARGING_SETTING6
Constant Voltage Charging OK Current
Charging current to stop charger(C ).;;help_end;;
IDC_STATIC_CHARGING_SETTING7
Constant Current Protect Time
Protect time in constant current charging mode.;;help_end;;
IDC_STATIC_CHARGING_SETTING9
Constant Voltage Pretect Time
Protect time in constant voltage charging mode.;;help_end;;
IDC_STATIC_CHARGING_SETTING10
Disallow SHS Active As Charging
Disallow SHS active when charger plug in.;;help_end;;
IDC_STATIC_CHARGING_SETTING4
Speaker Output
Single end: Speaker output with a DC blocking capacitor.
Capless: Speaker output without a DC blocking capacitor.;;help_end;;
IDC_STATIC_CODEC_FUNC1
Filter Type For Stereo Audio Quality
Stereo audio quality by selecting different filter type.;;help_end;;
IDC_STATIC_CODEC_FUNC3
Enable LR Sound Channel Swap
Swap left and right channel speaker output(only for A2DP).;;help_end;;
IDC_STATIC_CODEC_FUNC4
Enable LR Sound Mix
Mix left and right speaker output to mono speaker output.;;help_end;;
IDC_STATIC_CODEC_FUNC5
DAC Bias For Audio Quality
Select different DAC BIAS for audio quality.;;help_end;;
IDC_STATIC_CODEC_FUNC6
DSP CODEC Always On Enable
Never power down codec and DSP if enable.;;help_end;;
IDC_STATIC_CODEC_FUNC9
Close CODEC Time
When DSP in SBC decode state, and FW do not receive any stream data, 
it will set this timer to cut off codec.;;help_end;;
IDC_STATIC_CODEC_FUNC10
SDM Order
SDM Order.;;help_end;;
IDC_STATIC_CODEC_FUNC11
Stereo Line In Loop Back(P3_0 = 0 Enable)
Enable line in detection pin(input).;;help_end;;
IDC_STATIC_LINE_IN_SETTING1
Line In Priority
Line in piority > SBC.;;help_end;;
IDC_STATIC_LINE_IN_SETTING2
Line In Mute/Unmute
Enable mute/unmute feature when lin-in priority.;;help_end;;
IDC_STATIC_LINE_IN_SETTING3
Line In Silence Detect
Enable non-streaming detection in line-in state.;;help_end;;
IDC_STATIC_LINE_IN_SETTING6
Line-in Path
The path of Line-in function.;;help_end;;
IDC_STATIC_LINE_IN_SETTING4
Line In Indicate Led Ctrl(P24)
The path of Line-in function.;;help_end;;
IDC_STATIC_LINE_IN_SETTING5
Cut Off Amplifier When Mute
Off amplifier when codec state is mute;;help_end;;
IDC_STATIC_AMP_CONTROL_SETTING1
Off Amplifier T0
when codec mute, set this timer to turn off amplifier, 
if this value set to 0, then turn off amplifier directly;;help_end;;
IDC_STATIC_AMP_CONTROL_SETTING2
Off Amplifier T1
when config codec ACTIVE, wait this time to turn on amplifier, 
if this value is 0, then wait 100ms;;help_end;;
IDC_STATIC_AMP_CONTROL_SETTING3
Off Amplifier T2
when AMP_CTRL_T1 expired, then wait at least this time to start play audio, 
if this value is 0, then wait at least 100ms;;help_end;;
IDC_STATIC_AMP_CONTROL_SETTING4
LE Auto Disconnect Time
 ;;help_end;;
IDC_STATIC_LE_RECONNECTION_TIMEOUT
Ambient Temperature Charging Detection
Enable or disable ambient temperature detection during charging. ;;help_end;;
IDC_STATIC_CHARGING_SETTING13
High Temp. Stop Charging
The SAR of max voltage for ambient temperature detection to stop or restart charger.;;help_end;;
IDC_STATIC_CHARGING_SETTING14
Low Temp. Stop Charging
The SAR of min voltage for ambient temperature detection to stop or restart charger.;;help_end;;
IDC_STATIC_CHARGING_SETTING15
Reviving Charging Protect Time
Reviving charging mode protect time, unit in one minute.;;help_end;;
IDC_STATIC_CHARGING_SETTING12
Charging Current
Charging current.;;help_end;;
IDC_STATIC_CHARGING_SETTING11
