/*-----------------------------------------------------------------------
 * File: bioapi_typecast.htp
 *
 *-----------------------------------------------------------------------
 */


#ifndef __BioAPIFPTR_H__
#define __BioAPIFPTR_H__

/* API Functions */
#ifdef __cplusplus
extern "C" {
#endif

/*************************************************************************/
/*** This file is automatically generated. Do not hand edit **************/
/*************************************************************************/

/*************************************************************************/
/*** BioAPI Core Functions ***********************************************/
/*************************************************************************/

typedef BioAPI_RETURN (BioAPI *BioAPI_Init_ptr)(
						const BioAPI_VERSION *Version,
						uint32 Reserved1,
						const void *Reserved2,
						uint32 Reserved3,
						const void *Reserved4 );

typedef BioAPI_RETURN (BioAPI *BioAPI_Terminate_ptr)(
						void );

typedef BioAPI_RETURN (BioAPI *BioAPI_ModuleLoad_ptr)(
						const BioAPI_UUID *ModuleGuid,
						uint32 Reserved,
						BioAPI_ModuleEventHandler AppNotifyCallback,
						void *AppNotifyCallbackCtx );

typedef BioAPI_RETURN (BioAPI *BioAPI_ModuleUnload_ptr)(
						const BioAPI_UUID *ModuleGuid,
						BioAPI_ModuleEventHandler AppNotifyCallback,
						void *AppNotifyCallbackCtx );

typedef BioAPI_RETURN (BioAPI *BioAPI_ModuleAttach_ptr)(
						const BioAPI_UUID *ModuleGuid,
						const BioAPI_VERSION *Version,
						const BioAPI_MEMORY_FUNCS *MemoryFuncs,
						uint32 DeviceID,
						uint32 Reserved1,
						uint32 Reserved2,
						uint32 Reserved3,
						BioAPI_FUNC_NAME_ADDR *FunctionTable,
						uint32 NumFunctionTable,
						const void *Reserved4,
						BioAPI_HANDLE_PTR NewModuleHandle );

typedef BioAPI_RETURN (BioAPI *BioAPI_ModuleDetach_ptr)(
						BioAPI_HANDLE ModuleHandle );

typedef BioAPI_RETURN (BioAPI *BioAPI_QueryDevice_ptr)(
						BioAPI_HANDLE ModuleHandle,
						BioAPI_SERVICE_UID_PTR ServiceUID );


/************************************************************************/
/*** BioAPI Service Provider APIs ***************************************/
/************************************************************************/

typedef BioAPI_RETURN (BioAPI *BioAPI_FreeBIRHandle_ptr)(
						BioAPI_HANDLE ModuleHandle,
						BioAPI_BIR_HANDLE BIRHandle );

typedef BioAPI_RETURN (BioAPI *BioAPI_GetBIRFromHandle_ptr)(
						BioAPI_HANDLE ModuleHandle,
						BioAPI_BIR_HANDLE BIRHandle,
						BioAPI_BIR_PTR *BIR );

typedef BioAPI_RETURN (BioAPI *BioAPI_GetHeaderFromHandle_ptr)(
						BioAPI_HANDLE ModuleHandle,
						BioAPI_BIR_HANDLE BIRHandle,
						BioAPI_BIR_HEADER_PTR Header );

typedef BioAPI_RETURN (BioAPI *BioAPI_EnableEvents_ptr)(
						BioAPI_HANDLE ModuleHandle,
						BioAPI_MODULE_EVENT_MASK *Events );

typedef BioAPI_RETURN (BioAPI *BioAPI_SetGUICallbacks_ptr)(
						BioAPI_HANDLE ModuleHandle,
						BioAPI_GUI_STREAMING_CALLBACK GuiStreamingCallback,
						void *GuiStreamingCallbackCtx,
						BioAPI_GUI_STATE_CALLBACK GuiStateCallback,
						void *GuiStateCallbackCtx );

typedef BioAPI_RETURN (BioAPI *BioAPI_SetStreamCallback_ptr)(
						BioAPI_HANDLE ModuleHandle,
						BioAPI_STREAM_CALLBACK StreamCallback,
						void *StreamCallbackCtx );

typedef BioAPI_RETURN (BioAPI *BioAPI_StreamInputOutput_ptr)(
						BioAPI_HANDLE ModuleHandle,
						BioAPI_DATA_PTR InMessage,
						BioAPI_DATA_PTR OutMessage );

typedef BioAPI_RETURN (BioAPI *BioAPI_Capture_ptr)(
						BioAPI_HANDLE ModuleHandle,
						BioAPI_BIR_PURPOSE Purpose,
						BioAPI_BIR_HANDLE_PTR CapturedBIR,
						sint32 Timeout,
						BioAPI_BIR_HANDLE_PTR AuditData );

typedef BioAPI_RETURN (BioAPI *BioAPI_CreateTemplate_ptr)(
						BioAPI_HANDLE ModuleHandle,
						const BioAPI_INPUT_BIR *CapturedBIR,
						const BioAPI_INPUT_BIR *StoredTemplate,
						BioAPI_BIR_HANDLE_PTR NewTemplate,
						const BioAPI_DATA *Payload );

typedef BioAPI_RETURN (BioAPI *BioAPI_Process_ptr)(
						BioAPI_HANDLE ModuleHandle,
						const BioAPI_INPUT_BIR *CapturedBIR,
						BioAPI_BIR_HANDLE_PTR ProcessedBIR );

typedef BioAPI_RETURN (BioAPI *BioAPI_VerifyMatch_ptr)(
						BioAPI_HANDLE ModuleHandle,
						const BioAPI_FAR *MaxFARRequested,
						const BioAPI_FRR *MaxFRRRequested,
						const BioAPI_BOOL *FARPrecedence,
						const BioAPI_INPUT_BIR *ProcessedBIR,
						const BioAPI_INPUT_BIR *StoredTemplate,
						BioAPI_BIR_HANDLE *AdaptedBIR,
						BioAPI_BOOL *Result,
						BioAPI_FAR_PTR FARAchieved,
						BioAPI_FRR_PTR FRRAchieved,
						BioAPI_DATA_PTR *Payload );

typedef BioAPI_RETURN (BioAPI *BioAPI_IdentifyMatch_ptr)(
						BioAPI_HANDLE ModuleHandle,
						const BioAPI_FAR *MaxFARRequested,
						const BioAPI_FRR *MaxFRRRequested,
						const BioAPI_BOOL *FARPrecedence,
						const BioAPI_INPUT_BIR *ProcessedBIR,
						const BioAPI_IDENTIFY_POPULATION *Population,
						BioAPI_BOOL Binning,
						uint32 MaxNumberOfResults,
						uint32 *NumberOfResults,
						BioAPI_CANDIDATE_ARRAY_PTR *Candidates,
						sint32 Timeout );

typedef BioAPI_RETURN (BioAPI *BioAPI_Enroll_ptr)(
						BioAPI_HANDLE ModuleHandle,
						BioAPI_BIR_PURPOSE Purpose,
						const BioAPI_INPUT_BIR *StoredTemplate,
						BioAPI_BIR_HANDLE_PTR NewTemplate,
						const BioAPI_DATA *Payload,
						sint32 Timeout,
						BioAPI_BIR_HANDLE_PTR AuditData );

typedef BioAPI_RETURN (BioAPI *BioAPI_Verify_ptr)(
						BioAPI_HANDLE ModuleHandle,
						const BioAPI_FAR *MaxFARRequested,
						const BioAPI_FRR *MaxFRRRequested,
						const BioAPI_BOOL *FARPrecedence,
						const BioAPI_INPUT_BIR *StoredTemplate,
						BioAPI_BIR_HANDLE_PTR AdaptedBIR,
						BioAPI_BOOL *Result,
						BioAPI_FAR_PTR FARAchieved,
						BioAPI_FRR_PTR FRRAchieved,
						BioAPI_DATA_PTR *Payload,
						sint32 Timeout,
						BioAPI_BIR_HANDLE_PTR AuditData );

typedef BioAPI_RETURN (BioAPI *BioAPI_Identify_ptr)(
						BioAPI_HANDLE ModuleHandle,
						const BioAPI_FAR *MaxFARRequested,
						const BioAPI_FRR *MaxFRRRequested,
						const BioAPI_BOOL *FARPrecedence,
						const BioAPI_INPUT_BIR *ProcessedBIR,
						const BioAPI_IDENTIFY_POPULATION *Population,
						BioAPI_BOOL Binning,
						uint32 MaxNumberOfResults,
						uint32 *NumberOfResults,
						BioAPI_CANDIDATE_ARRAY_PTR *Candidates,
						sint32 Timeout,
						BioAPI_BIR_HANDLE_PTR AuditData );

typedef BioAPI_RETURN (BioAPI *BioAPI_Import_ptr)(
						BioAPI_HANDLE ModuleHandle,
						const BioAPI_DATA *InputData,
						BioAPI_BIR_BIOMETRIC_DATA_FORMAT InputFormat,
						BioAPI_BIR_PURPOSE Purpose,
						BioAPI_BIR_HANDLE_PTR ConstructedBIR );

typedef BioAPI_RETURN (BioAPI *BioAPI_SetPowerMode_ptr)(
						BioAPI_HANDLE ModuleHandle,
						BioAPI_POWER_MODE PowerMode );

typedef BioAPI_RETURN (BioAPI *BioAPI_DbOpen_ptr)(
						BioAPI_HANDLE ModuleHandle,
						const uint8 *DbName,
						BioAPI_DB_ACCESS_TYPE AccessRequest,
						BioAPI_DB_HANDLE_PTR DbHandle,
						BioAPI_DB_CURSOR_PTR Cursor );

typedef BioAPI_RETURN (BioAPI *BioAPI_DbClose_ptr)(
						BioAPI_HANDLE ModuleHandle,
						BioAPI_DB_HANDLE DbHandle );

typedef BioAPI_RETURN (BioAPI *BioAPI_DbCreate_ptr)(
						BioAPI_HANDLE ModuleHandle,
						const uint8 *DbName,
						BioAPI_DB_ACCESS_TYPE AccessRequest,
						BioAPI_DB_HANDLE_PTR DbHandle );

typedef BioAPI_RETURN (BioAPI *BioAPI_DbDelete_ptr)(
						BioAPI_HANDLE ModuleHandle,
						const uint8 *DbName );

typedef BioAPI_RETURN (BioAPI *BioAPI_DbSetCursor_ptr)(
						BioAPI_HANDLE ModuleHandle,
						BioAPI_DB_HANDLE DbHandle,
						const BioAPI_UUID *KeyValue,
						BioAPI_DB_CURSOR_PTR Cursor );

typedef BioAPI_RETURN (BioAPI *BioAPI_DbFreeCursor_ptr)(
						BioAPI_HANDLE ModuleHandle,
						BioAPI_DB_CURSOR_PTR Cursor );

typedef BioAPI_RETURN (BioAPI *BioAPI_DbStoreBIR_ptr)(
						BioAPI_HANDLE ModuleHandle,
						const BioAPI_INPUT_BIR *BIRToStore,
						BioAPI_DB_HANDLE DbHandle,
						BioAPI_UUID_PTR Uuid );

typedef BioAPI_RETURN (BioAPI *BioAPI_DbGetBIR_ptr)(
						BioAPI_HANDLE ModuleHandle,
						BioAPI_DB_HANDLE DbHandle,
						const BioAPI_UUID *KeyValue,
						BioAPI_BIR_HANDLE_PTR RetrievedBIR,
						BioAPI_DB_CURSOR_PTR Cursor );

typedef BioAPI_RETURN (BioAPI *BioAPI_DbGetNextBIR_ptr)(
						BioAPI_HANDLE ModuleHandle,
						BioAPI_DB_CURSOR_PTR Cursor,
						BioAPI_BIR_HANDLE_PTR RetievedBIR,
						BioAPI_UUID_PTR Uuid );

typedef BioAPI_RETURN (BioAPI *BioAPI_DbQueryBIR_ptr)(
						BioAPI_HANDLE ModuleHandle,
						BioAPI_DB_HANDLE DbHandle,
						const BioAPI_INPUT_BIR *BIRToQuery,
						BioAPI_UUID_PTR Uuid );

typedef BioAPI_RETURN (BioAPI *BioAPI_DbDeleteBIR_ptr)(
						BioAPI_HANDLE ModuleHandle,
						BioAPI_DB_HANDLE DbHandle,
						const BioAPI_UUID *KeyValue );



#ifdef __cplusplus
}
#endif

#endif /* ifndef __BioAPIFPTR_H__ */

