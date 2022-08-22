'---------------------------------------------------------------------------------------------------------
' MIDI Player library using Win32 WinMM MIDI streaming API
' Copyright (c) 2022 Samuel Gomes
'---------------------------------------------------------------------------------------------------------

'---------------------------------------------------------------------------------------------------------
' HEADER FILES
'---------------------------------------------------------------------------------------------------------
'$Include:'./Common.bi'
'---------------------------------------------------------------------------------------------------------

$If LIBNATIVEMIDI_BI = UNDEFINED Then
    $Let LIBNATIVEMIDI_BI = TRUE
    '-----------------------------------------------------------------------------------------------------
    ' EXTERNAL LIBRARIES
    '-----------------------------------------------------------------------------------------------------
    Declare Library "./LibNativeMIDI"
        Function MIDI_Play%% (fileName As String, Byval loops As Long) ' Always null terminate filename. Pass null to shutdown
        Function MIDI_IsPlaying%%
        Sub MIDI_Pause
        Sub MIDI_Resume
        Sub MIDI_SetVolume (ByVal volume As Single) ' 0.0 to 1.0
    End Declare
    '-----------------------------------------------------------------------------------------------------
$End If
'---------------------------------------------------------------------------------------------------------
