MACRO DEVICE_NAME
IF _DEVICE_='T'
    EQUS " Turbo"
ELIF _DEVICE_='E'
    EQUS " EPP"
ELIF _DEVICE_='P'
    EQUS " BPP"
ELIF _DEVICE_='M'
    EQUS " MM"
ENDIF
ENDMACRO

MACRO DFS_EMUL_NAME
IF NOT(_DFS_EMUL)
    EQUS " (xFS)"
ENDIF
ENDMACRO

MACRO BOOT_NAME
    BASE_NAME
    DEVICE_NAME
    DFS_EMUL_NAME
    EQUB 13, 13
ENDMACRO

MACRO BUILD_NAME
    BASE_NAME
    DEVICE_NAME
    DFS_EMUL_NAME
    EQUB 0
ENDMACRO

MACRO BUILD_COPYRIGHT
    EQUS "(C)2011 Mather", 0
ENDMACRO

MACRO BUILD_VERSION
    EQUS "1.45", 0     \\ #VERSION#
ENDMACRO
