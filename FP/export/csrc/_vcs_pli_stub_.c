#ifndef _GNU_SOURCE
#define _GNU_SOURCE
#endif
#include <stdio.h>
#include <dlfcn.h>

#ifdef __cplusplus
extern "C" {
#endif

extern void* VCS_dlsymLookup(const char *);
extern void vcsMsgReportNoSource1(const char *, const char*);

/* PLI routine: $cwr_cosim_init:call */
#ifndef __VCS_PLI_STUB_cwrHDLCosimEndOfElab
#define __VCS_PLI_STUB_cwrHDLCosimEndOfElab
extern void cwrHDLCosimEndOfElab(int data, int reason);
#pragma weak cwrHDLCosimEndOfElab
void cwrHDLCosimEndOfElab(int data, int reason)
{
    static int _vcs_pli_stub_initialized_ = 0;
    static void (*_vcs_pli_fp_)(int data, int reason) = NULL;
    if (!_vcs_pli_stub_initialized_) {
        _vcs_pli_stub_initialized_ = 1;
        _vcs_pli_fp_ = (void (*)(int data, int reason)) dlsym(RTLD_NEXT, "cwrHDLCosimEndOfElab");
        if (_vcs_pli_fp_ == NULL) {
            _vcs_pli_fp_ = (void (*)(int data, int reason)) VCS_dlsymLookup("cwrHDLCosimEndOfElab");
        }
    }
    if (_vcs_pli_fp_) {
        _vcs_pli_fp_(data, reason);
    } else {
        vcsMsgReportNoSource1("PLI-DIFNF", "cwrHDLCosimEndOfElab");
    }
}
void (*__vcs_pli_dummy_reference_cwrHDLCosimEndOfElab)(int data, int reason) = cwrHDLCosimEndOfElab;
#endif /* __VCS_PLI_STUB_cwrHDLCosimEndOfElab */

/* PLI routine: $cwr_cosim_init:check */
#ifndef __VCS_PLI_STUB_cwrHDLCosimElab
#define __VCS_PLI_STUB_cwrHDLCosimElab
extern void cwrHDLCosimElab(int data, int reason);
#pragma weak cwrHDLCosimElab
void cwrHDLCosimElab(int data, int reason)
{
    static int _vcs_pli_stub_initialized_ = 0;
    static void (*_vcs_pli_fp_)(int data, int reason) = NULL;
    if (!_vcs_pli_stub_initialized_) {
        _vcs_pli_stub_initialized_ = 1;
        _vcs_pli_fp_ = (void (*)(int data, int reason)) dlsym(RTLD_NEXT, "cwrHDLCosimElab");
        if (_vcs_pli_fp_ == NULL) {
            _vcs_pli_fp_ = (void (*)(int data, int reason)) VCS_dlsymLookup("cwrHDLCosimElab");
        }
    }
    if (_vcs_pli_fp_) {
        _vcs_pli_fp_(data, reason);
    }
}
void (*__vcs_pli_dummy_reference_cwrHDLCosimElab)(int data, int reason) = cwrHDLCosimElab;
#endif /* __VCS_PLI_STUB_cwrHDLCosimElab */

/* PLI routine: $cwrDeltaWakeUp:call */
#ifndef __VCS_PLI_STUB_cwrDeltaWakeUpVerilog
#define __VCS_PLI_STUB_cwrDeltaWakeUpVerilog
extern void cwrDeltaWakeUpVerilog(int data, int reason);
#pragma weak cwrDeltaWakeUpVerilog
void cwrDeltaWakeUpVerilog(int data, int reason)
{
    static int _vcs_pli_stub_initialized_ = 0;
    static void (*_vcs_pli_fp_)(int data, int reason) = NULL;
    if (!_vcs_pli_stub_initialized_) {
        _vcs_pli_stub_initialized_ = 1;
        _vcs_pli_fp_ = (void (*)(int data, int reason)) dlsym(RTLD_NEXT, "cwrDeltaWakeUpVerilog");
        if (_vcs_pli_fp_ == NULL) {
            _vcs_pli_fp_ = (void (*)(int data, int reason)) VCS_dlsymLookup("cwrDeltaWakeUpVerilog");
        }
    }
    if (_vcs_pli_fp_) {
        _vcs_pli_fp_(data, reason);
    } else {
        vcsMsgReportNoSource1("PLI-DIFNF", "cwrDeltaWakeUpVerilog");
    }
}
void (*__vcs_pli_dummy_reference_cwrDeltaWakeUpVerilog)(int data, int reason) = cwrDeltaWakeUpVerilog;
#endif /* __VCS_PLI_STUB_cwrDeltaWakeUpVerilog */

/* PLI routine: $sdiWrite:call */
#ifndef __VCS_PLI_STUB_cwrVlogSdiWrite
#define __VCS_PLI_STUB_cwrVlogSdiWrite
extern void cwrVlogSdiWrite(int data, int reason);
#pragma weak cwrVlogSdiWrite
void cwrVlogSdiWrite(int data, int reason)
{
    static int _vcs_pli_stub_initialized_ = 0;
    static void (*_vcs_pli_fp_)(int data, int reason) = NULL;
    if (!_vcs_pli_stub_initialized_) {
        _vcs_pli_stub_initialized_ = 1;
        _vcs_pli_fp_ = (void (*)(int data, int reason)) dlsym(RTLD_NEXT, "cwrVlogSdiWrite");
        if (_vcs_pli_fp_ == NULL) {
            _vcs_pli_fp_ = (void (*)(int data, int reason)) VCS_dlsymLookup("cwrVlogSdiWrite");
        }
    }
    if (_vcs_pli_fp_) {
        _vcs_pli_fp_(data, reason);
    } else {
        vcsMsgReportNoSource1("PLI-DIFNF", "cwrVlogSdiWrite");
    }
}
void (*__vcs_pli_dummy_reference_cwrVlogSdiWrite)(int data, int reason) = cwrVlogSdiWrite;
#endif /* __VCS_PLI_STUB_cwrVlogSdiWrite */

/* PLI routine: $sdiWriteLarge:call */
#ifndef __VCS_PLI_STUB_cwrVlogSdiWriteLarge
#define __VCS_PLI_STUB_cwrVlogSdiWriteLarge
extern void cwrVlogSdiWriteLarge(int data, int reason);
#pragma weak cwrVlogSdiWriteLarge
void cwrVlogSdiWriteLarge(int data, int reason)
{
    static int _vcs_pli_stub_initialized_ = 0;
    static void (*_vcs_pli_fp_)(int data, int reason) = NULL;
    if (!_vcs_pli_stub_initialized_) {
        _vcs_pli_stub_initialized_ = 1;
        _vcs_pli_fp_ = (void (*)(int data, int reason)) dlsym(RTLD_NEXT, "cwrVlogSdiWriteLarge");
        if (_vcs_pli_fp_ == NULL) {
            _vcs_pli_fp_ = (void (*)(int data, int reason)) VCS_dlsymLookup("cwrVlogSdiWriteLarge");
        }
    }
    if (_vcs_pli_fp_) {
        _vcs_pli_fp_(data, reason);
    } else {
        vcsMsgReportNoSource1("PLI-DIFNF", "cwrVlogSdiWriteLarge");
    }
}
void (*__vcs_pli_dummy_reference_cwrVlogSdiWriteLarge)(int data, int reason) = cwrVlogSdiWriteLarge;
#endif /* __VCS_PLI_STUB_cwrVlogSdiWriteLarge */

/* PLI routine: $sdiDRemap:call */
#ifndef __VCS_PLI_STUB_cwrVlogSdiDRemap
#define __VCS_PLI_STUB_cwrVlogSdiDRemap
extern void cwrVlogSdiDRemap(int data, int reason);
#pragma weak cwrVlogSdiDRemap
void cwrVlogSdiDRemap(int data, int reason)
{
    static int _vcs_pli_stub_initialized_ = 0;
    static void (*_vcs_pli_fp_)(int data, int reason) = NULL;
    if (!_vcs_pli_stub_initialized_) {
        _vcs_pli_stub_initialized_ = 1;
        _vcs_pli_fp_ = (void (*)(int data, int reason)) dlsym(RTLD_NEXT, "cwrVlogSdiDRemap");
        if (_vcs_pli_fp_ == NULL) {
            _vcs_pli_fp_ = (void (*)(int data, int reason)) VCS_dlsymLookup("cwrVlogSdiDRemap");
        }
    }
    if (_vcs_pli_fp_) {
        _vcs_pli_fp_(data, reason);
    } else {
        vcsMsgReportNoSource1("PLI-DIFNF", "cwrVlogSdiDRemap");
    }
}
void (*__vcs_pli_dummy_reference_cwrVlogSdiDRemap)(int data, int reason) = cwrVlogSdiDRemap;
#endif /* __VCS_PLI_STUB_cwrVlogSdiDRemap */

/* PLI routine: $sdiInit:call */
#ifndef __VCS_PLI_STUB_cwrVlogSdiInit
#define __VCS_PLI_STUB_cwrVlogSdiInit
extern void cwrVlogSdiInit(int data, int reason);
#pragma weak cwrVlogSdiInit
void cwrVlogSdiInit(int data, int reason)
{
    static int _vcs_pli_stub_initialized_ = 0;
    static void (*_vcs_pli_fp_)(int data, int reason) = NULL;
    if (!_vcs_pli_stub_initialized_) {
        _vcs_pli_stub_initialized_ = 1;
        _vcs_pli_fp_ = (void (*)(int data, int reason)) dlsym(RTLD_NEXT, "cwrVlogSdiInit");
        if (_vcs_pli_fp_ == NULL) {
            _vcs_pli_fp_ = (void (*)(int data, int reason)) VCS_dlsymLookup("cwrVlogSdiInit");
        }
    }
    if (_vcs_pli_fp_) {
        _vcs_pli_fp_(data, reason);
    } else {
        vcsMsgReportNoSource1("PLI-DIFNF", "cwrVlogSdiInit");
    }
}
void (*__vcs_pli_dummy_reference_cwrVlogSdiInit)(int data, int reason) = cwrVlogSdiInit;
#endif /* __VCS_PLI_STUB_cwrVlogSdiInit */

/* PLI routine: $sdiRead:call */
#ifndef __VCS_PLI_STUB_cwrVlogSdiRead
#define __VCS_PLI_STUB_cwrVlogSdiRead
extern void cwrVlogSdiRead(int data, int reason);
#pragma weak cwrVlogSdiRead
void cwrVlogSdiRead(int data, int reason)
{
    static int _vcs_pli_stub_initialized_ = 0;
    static void (*_vcs_pli_fp_)(int data, int reason) = NULL;
    if (!_vcs_pli_stub_initialized_) {
        _vcs_pli_stub_initialized_ = 1;
        _vcs_pli_fp_ = (void (*)(int data, int reason)) dlsym(RTLD_NEXT, "cwrVlogSdiRead");
        if (_vcs_pli_fp_ == NULL) {
            _vcs_pli_fp_ = (void (*)(int data, int reason)) VCS_dlsymLookup("cwrVlogSdiRead");
        }
    }
    if (_vcs_pli_fp_) {
        _vcs_pli_fp_(data, reason);
    } else {
        vcsMsgReportNoSource1("PLI-DIFNF", "cwrVlogSdiRead");
    }
}
void (*__vcs_pli_dummy_reference_cwrVlogSdiRead)(int data, int reason) = cwrVlogSdiRead;
#endif /* __VCS_PLI_STUB_cwrVlogSdiRead */

/* PLI routine: $sdiReadLarge:call */
#ifndef __VCS_PLI_STUB_cwrVlogSdiReadLarge
#define __VCS_PLI_STUB_cwrVlogSdiReadLarge
extern void cwrVlogSdiReadLarge(int data, int reason);
#pragma weak cwrVlogSdiReadLarge
void cwrVlogSdiReadLarge(int data, int reason)
{
    static int _vcs_pli_stub_initialized_ = 0;
    static void (*_vcs_pli_fp_)(int data, int reason) = NULL;
    if (!_vcs_pli_stub_initialized_) {
        _vcs_pli_stub_initialized_ = 1;
        _vcs_pli_fp_ = (void (*)(int data, int reason)) dlsym(RTLD_NEXT, "cwrVlogSdiReadLarge");
        if (_vcs_pli_fp_ == NULL) {
            _vcs_pli_fp_ = (void (*)(int data, int reason)) VCS_dlsymLookup("cwrVlogSdiReadLarge");
        }
    }
    if (_vcs_pli_fp_) {
        _vcs_pli_fp_(data, reason);
    } else {
        vcsMsgReportNoSource1("PLI-DIFNF", "cwrVlogSdiReadLarge");
    }
}
void (*__vcs_pli_dummy_reference_cwrVlogSdiReadLarge)(int data, int reason) = cwrVlogSdiReadLarge;
#endif /* __VCS_PLI_STUB_cwrVlogSdiReadLarge */

/* PLI routine: $sdiRemap:call */
#ifndef __VCS_PLI_STUB_cwrVlogSdiRemap
#define __VCS_PLI_STUB_cwrVlogSdiRemap
extern void cwrVlogSdiRemap(int data, int reason);
#pragma weak cwrVlogSdiRemap
void cwrVlogSdiRemap(int data, int reason)
{
    static int _vcs_pli_stub_initialized_ = 0;
    static void (*_vcs_pli_fp_)(int data, int reason) = NULL;
    if (!_vcs_pli_stub_initialized_) {
        _vcs_pli_stub_initialized_ = 1;
        _vcs_pli_fp_ = (void (*)(int data, int reason)) dlsym(RTLD_NEXT, "cwrVlogSdiRemap");
        if (_vcs_pli_fp_ == NULL) {
            _vcs_pli_fp_ = (void (*)(int data, int reason)) VCS_dlsymLookup("cwrVlogSdiRemap");
        }
    }
    if (_vcs_pli_fp_) {
        _vcs_pli_fp_(data, reason);
    } else {
        vcsMsgReportNoSource1("PLI-DIFNF", "cwrVlogSdiRemap");
    }
}
void (*__vcs_pli_dummy_reference_cwrVlogSdiRemap)(int data, int reason) = cwrVlogSdiRemap;
#endif /* __VCS_PLI_STUB_cwrVlogSdiRemap */

/* PLI routine: $sdiGetDRemapId:call */
#ifndef __VCS_PLI_STUB_cwrVlogSdiGetDRemapId
#define __VCS_PLI_STUB_cwrVlogSdiGetDRemapId
extern void cwrVlogSdiGetDRemapId(int data, int reason);
#pragma weak cwrVlogSdiGetDRemapId
void cwrVlogSdiGetDRemapId(int data, int reason)
{
    static int _vcs_pli_stub_initialized_ = 0;
    static void (*_vcs_pli_fp_)(int data, int reason) = NULL;
    if (!_vcs_pli_stub_initialized_) {
        _vcs_pli_stub_initialized_ = 1;
        _vcs_pli_fp_ = (void (*)(int data, int reason)) dlsym(RTLD_NEXT, "cwrVlogSdiGetDRemapId");
        if (_vcs_pli_fp_ == NULL) {
            _vcs_pli_fp_ = (void (*)(int data, int reason)) VCS_dlsymLookup("cwrVlogSdiGetDRemapId");
        }
    }
    if (_vcs_pli_fp_) {
        _vcs_pli_fp_(data, reason);
    } else {
        vcsMsgReportNoSource1("PLI-DIFNF", "cwrVlogSdiGetDRemapId");
    }
}
void (*__vcs_pli_dummy_reference_cwrVlogSdiGetDRemapId)(int data, int reason) = cwrVlogSdiGetDRemapId;
#endif /* __VCS_PLI_STUB_cwrVlogSdiGetDRemapId */

/* PLI routine: $sdiGetByteSize:call */
#ifndef __VCS_PLI_STUB_cwrVlogSdiGetByteSize
#define __VCS_PLI_STUB_cwrVlogSdiGetByteSize
extern void cwrVlogSdiGetByteSize(int data, int reason);
#pragma weak cwrVlogSdiGetByteSize
void cwrVlogSdiGetByteSize(int data, int reason)
{
    static int _vcs_pli_stub_initialized_ = 0;
    static void (*_vcs_pli_fp_)(int data, int reason) = NULL;
    if (!_vcs_pli_stub_initialized_) {
        _vcs_pli_stub_initialized_ = 1;
        _vcs_pli_fp_ = (void (*)(int data, int reason)) dlsym(RTLD_NEXT, "cwrVlogSdiGetByteSize");
        if (_vcs_pli_fp_ == NULL) {
            _vcs_pli_fp_ = (void (*)(int data, int reason)) VCS_dlsymLookup("cwrVlogSdiGetByteSize");
        }
    }
    if (_vcs_pli_fp_) {
        _vcs_pli_fp_(data, reason);
    } else {
        vcsMsgReportNoSource1("PLI-DIFNF", "cwrVlogSdiGetByteSize");
    }
}
void (*__vcs_pli_dummy_reference_cwrVlogSdiGetByteSize)(int data, int reason) = cwrVlogSdiGetByteSize;
#endif /* __VCS_PLI_STUB_cwrVlogSdiGetByteSize */

/* PLI routine: $sdiGetRemap:call */
#ifndef __VCS_PLI_STUB_cwrVlogSdiGetRemap
#define __VCS_PLI_STUB_cwrVlogSdiGetRemap
extern void cwrVlogSdiGetRemap(int data, int reason);
#pragma weak cwrVlogSdiGetRemap
void cwrVlogSdiGetRemap(int data, int reason)
{
    static int _vcs_pli_stub_initialized_ = 0;
    static void (*_vcs_pli_fp_)(int data, int reason) = NULL;
    if (!_vcs_pli_stub_initialized_) {
        _vcs_pli_stub_initialized_ = 1;
        _vcs_pli_fp_ = (void (*)(int data, int reason)) dlsym(RTLD_NEXT, "cwrVlogSdiGetRemap");
        if (_vcs_pli_fp_ == NULL) {
            _vcs_pli_fp_ = (void (*)(int data, int reason)) VCS_dlsymLookup("cwrVlogSdiGetRemap");
        }
    }
    if (_vcs_pli_fp_) {
        _vcs_pli_fp_(data, reason);
    } else {
        vcsMsgReportNoSource1("PLI-DIFNF", "cwrVlogSdiGetRemap");
    }
}
void (*__vcs_pli_dummy_reference_cwrVlogSdiGetRemap)(int data, int reason) = cwrVlogSdiGetRemap;
#endif /* __VCS_PLI_STUB_cwrVlogSdiGetRemap */

/* PLI routine: $sdiRemapByInst:call */
#ifndef __VCS_PLI_STUB_cwrVlogSdiRemapByInst
#define __VCS_PLI_STUB_cwrVlogSdiRemapByInst
extern void cwrVlogSdiRemapByInst(int data, int reason);
#pragma weak cwrVlogSdiRemapByInst
void cwrVlogSdiRemapByInst(int data, int reason)
{
    static int _vcs_pli_stub_initialized_ = 0;
    static void (*_vcs_pli_fp_)(int data, int reason) = NULL;
    if (!_vcs_pli_stub_initialized_) {
        _vcs_pli_stub_initialized_ = 1;
        _vcs_pli_fp_ = (void (*)(int data, int reason)) dlsym(RTLD_NEXT, "cwrVlogSdiRemapByInst");
        if (_vcs_pli_fp_ == NULL) {
            _vcs_pli_fp_ = (void (*)(int data, int reason)) VCS_dlsymLookup("cwrVlogSdiRemapByInst");
        }
    }
    if (_vcs_pli_fp_) {
        _vcs_pli_fp_(data, reason);
    } else {
        vcsMsgReportNoSource1("PLI-DIFNF", "cwrVlogSdiRemapByInst");
    }
}
void (*__vcs_pli_dummy_reference_cwrVlogSdiRemapByInst)(int data, int reason) = cwrVlogSdiRemapByInst;
#endif /* __VCS_PLI_STUB_cwrVlogSdiRemapByInst */

#ifdef __cplusplus
}
#endif
