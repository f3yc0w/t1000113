.class public Lcom/renderheads/AVPro/Video/Manager;
.super Ljava/lang/Object;
.source "Manager.java"


# static fields
.field public static final EXOPLAYER:I = 0x2

.field public static final MEDIAPLAYER:I = 0x1

.field private static _renderFree:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/renderheads/AVPro/Video/Player_Base;",
            ">;"
        }
    .end annotation
.end field

.field private static final _renderMutex:Ljava/util/concurrent/locks/ReentrantLock;

.field public static final kUnityGfxRendererOpenGLES20:I = 0x8

.field public static final kUnityGfxRendererOpenGLES30:I = 0xb

.field private static s_Interface:Lcom/renderheads/AVPro/Video/Manager; = null

.field private static s_PreviousContextFail:Z = false

.field private static s_PreviousDeviceIndex:I = -0x1


# instance fields
.field private final PLUGIN_VERSION:Ljava/lang/String;

.field private final PLUGIN_VERSION_EXTRA:Ljava/lang/String;

.field private final PLUGIN_VERSION_TAG_CORE:Ljava/lang/String;

.field private final PLUGIN_VERSION_TAG_DEBUG:Ljava/lang/String;

.field private final PLUGIN_VERSION_TAG_RELEASE:Ljava/lang/String;

.field private final PLUGIN_VERSION_TAG_TRAIL:Ljava/lang/String;

.field private final PLUGIN_VERSION_TAG_ULTRA:Ljava/lang/String;

.field private m_Context:Landroid/content/Context;

.field private m_Players:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/renderheads/AVPro/Video/Player_Base;",
            ">;"
        }
    .end annotation
.end field

.field private m_Random:Ljava/util/Random;

.field private m_iOpenGLVersion:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/renderheads/AVPro/Video/Manager;->_renderFree:Ljava/util/List;

    .line 2
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/renderheads/AVPro/Video/Manager;->_renderMutex:Ljava/util/concurrent/locks/ReentrantLock;

    const-string v0, "AVProVideo2Native"

    .line 543
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 545
    invoke-static {}, Lcom/renderheads/AVPro/Video/Manager;->nativeInit()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "2.6.3"

    .line 2
    iput-object v0, p0, Lcom/renderheads/AVPro/Video/Manager;->PLUGIN_VERSION:Ljava/lang/String;

    const-string v0, "f1"

    .line 3
    iput-object v0, p0, Lcom/renderheads/AVPro/Video/Manager;->PLUGIN_VERSION_EXTRA:Ljava/lang/String;

    const-string v0, "-trial"

    .line 4
    iput-object v0, p0, Lcom/renderheads/AVPro/Video/Manager;->PLUGIN_VERSION_TAG_TRAIL:Ljava/lang/String;

    const-string v0, "-core"

    .line 5
    iput-object v0, p0, Lcom/renderheads/AVPro/Video/Manager;->PLUGIN_VERSION_TAG_CORE:Ljava/lang/String;

    const-string v0, "-ultra"

    .line 6
    iput-object v0, p0, Lcom/renderheads/AVPro/Video/Manager;->PLUGIN_VERSION_TAG_ULTRA:Ljava/lang/String;

    const-string v0, "-debug"

    .line 7
    iput-object v0, p0, Lcom/renderheads/AVPro/Video/Manager;->PLUGIN_VERSION_TAG_DEBUG:Ljava/lang/String;

    const-string v0, ""

    .line 8
    iput-object v0, p0, Lcom/renderheads/AVPro/Video/Manager;->PLUGIN_VERSION_TAG_RELEASE:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/renderheads/AVPro/Video/Manager;->m_Players:Ljava/util/Map;

    .line 33
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/renderheads/AVPro/Video/Manager;->m_Random:Ljava/util/Random;

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/renderheads/AVPro/Video/Manager;->m_Context:Landroid/content/Context;

    const/4 v0, -0x1

    .line 35
    iput v0, p0, Lcom/renderheads/AVPro/Video/Manager;->m_iOpenGLVersion:I

    .line 37
    sget-object v0, Lcom/renderheads/AVPro/Video/Manager;->s_Interface:Lcom/renderheads/AVPro/Video/Manager;

    if-nez v0, :cond_0

    .line 39
    sput-object p0, Lcom/renderheads/AVPro/Video/Manager;->s_Interface:Lcom/renderheads/AVPro/Video/Manager;

    :cond_0
    return-void
.end method

.method public static native AudioCaptureBuffer_Destroy(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iPlayerIndex"
        }
    .end annotation
.end method

.method public static native AudioCaptureBuffer_GetSpaceUsed(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iPlayerIndex"
        }
    .end annotation
.end method

.method public static native AudioCaptureBuffer_Initialise(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "iPlayerIndex",
            "iBufferSize"
        }
    .end annotation
.end method

.method public static native AudioCaptureBuffer_OfferBytes(I[FI)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "iPlayerIndex",
            "aAudioData",
            "iSize"
        }
    .end annotation
.end method

.method public static native AudioCaptureBuffer_Poll([FI)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "m_afPullSamplesCachedBuffer",
            "iNumToPull"
        }
    .end annotation
.end method

.method public static native AudioCaptureBuffer_Reset(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iPlayerIndex"
        }
    .end annotation
.end method

.method public static Deinitialise()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    sput-object v0, Lcom/renderheads/AVPro/Video/Manager;->s_Interface:Lcom/renderheads/AVPro/Video/Manager;

    return-void
.end method

.method private GetAVProClassForPlayerIndex(I)Lcom/renderheads/AVPro/Video/Player_Base;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playerIndex"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Manager;->m_Players:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Manager;->m_Players:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/renderheads/AVPro/Video/Player_Base;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method private RemovePlayer(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playerIndex"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Manager;->m_Players:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Manager;->m_Players:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static RenderPlayer(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playerIndex"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/renderheads/AVPro/Video/Manager;->s_Interface:Lcom/renderheads/AVPro/Video/Manager;

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    .line 8
    sput-boolean p0, Lcom/renderheads/AVPro/Video/Manager;->s_PreviousContextFail:Z

    return-void

    .line 11
    :cond_1
    sget-boolean v0, Lcom/renderheads/AVPro/Video/Manager;->s_PreviousContextFail:Z

    if-eqz v0, :cond_2

    sget v0, Lcom/renderheads/AVPro/Video/Manager;->s_PreviousDeviceIndex:I

    if-ltz v0, :cond_2

    .line 13
    invoke-static {v0}, Lcom/renderheads/AVPro/Video/Manager;->RendererReset(I)V

    const/4 v0, 0x0

    .line 15
    sput-boolean v0, Lcom/renderheads/AVPro/Video/Manager;->s_PreviousContextFail:Z

    .line 18
    :cond_2
    sget-object v0, Lcom/renderheads/AVPro/Video/Manager;->s_Interface:Lcom/renderheads/AVPro/Video/Manager;

    invoke-direct {v0, p0}, Lcom/renderheads/AVPro/Video/Manager;->GetAVProClassForPlayerIndex(I)Lcom/renderheads/AVPro/Video/Player_Base;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 21
    invoke-virtual {p0}, Lcom/renderheads/AVPro/Video/Player_Base;->Render()Z

    :cond_3
    return-void
.end method

.method public static RendererDestroyPlayers()V
    .locals 2

    .line 1
    sget-object v0, Lcom/renderheads/AVPro/Video/Manager;->_renderMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x0

    .line 2
    :goto_0
    sget-object v1, Lcom/renderheads/AVPro/Video/Manager;->_renderFree:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 4
    sget-object v1, Lcom/renderheads/AVPro/Video/Manager;->_renderFree:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/renderheads/AVPro/Video/Player_Base;

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v1}, Lcom/renderheads/AVPro/Video/Player_Base;->DeinitialiseRender()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10
    :cond_1
    sget-object v0, Lcom/renderheads/AVPro/Video/Manager;->_renderFree:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 11
    sget-object v0, Lcom/renderheads/AVPro/Video/Manager;->_renderMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public static RendererReset(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deviceIndex"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/renderheads/AVPro/Video/Manager;->s_Interface:Lcom/renderheads/AVPro/Video/Manager;

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object v0, v0, Lcom/renderheads/AVPro/Video/Manager;->m_Players:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 8
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1, p0}, Lcom/renderheads/AVPro/Video/Manager;->RendererSetupPlayer(II)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static RendererSetupPlayer(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "playerIndex",
            "iDeviceIndex"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/renderheads/AVPro/Video/Manager;->s_Interface:Lcom/renderheads/AVPro/Video/Manager;

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    sput p1, Lcom/renderheads/AVPro/Video/Manager;->s_PreviousDeviceIndex:I

    .line 9
    invoke-direct {v0, p0}, Lcom/renderheads/AVPro/Video/Manager;->GetAVProClassForPlayerIndex(I)Lcom/renderheads/AVPro/Video/Player_Base;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 12
    sget-object v0, Lcom/renderheads/AVPro/Video/Manager;->s_Interface:Lcom/renderheads/AVPro/Video/Manager;

    iget v0, v0, Lcom/renderheads/AVPro/Video/Manager;->m_iOpenGLVersion:I

    const/16 v1, 0x8

    if-ne p1, v1, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/16 v1, 0xb

    if-ne p1, v1, :cond_2

    const/4 v0, 0x3

    .line 19
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/renderheads/AVPro/Video/Player_Base;->RendererSetup(I)V

    :cond_3
    return-void
.end method

.method public static WaitForNewFramePlayer(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playerIndex"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/renderheads/AVPro/Video/Manager;->s_Interface:Lcom/renderheads/AVPro/Video/Manager;

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-direct {v0, p0}, Lcom/renderheads/AVPro/Video/Manager;->GetAVProClassForPlayerIndex(I)Lcom/renderheads/AVPro/Video/Player_Base;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 9
    invoke-virtual {p0}, Lcom/renderheads/AVPro/Video/Player_Base;->WaitForNewFrame()V

    :cond_1
    return-void
.end method

.method public static _CanPlay(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playerIndex"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/renderheads/AVPro/Video/Manager;->s_Interface:Lcom/renderheads/AVPro/Video/Manager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 6
    :cond_0
    invoke-direct {v0, p0}, Lcom/renderheads/AVPro/Video/Manager;->GetAVProClassForPlayerIndex(I)Lcom/renderheads/AVPro/Video/Player_Base;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 9
    invoke-virtual {p0}, Lcom/renderheads/AVPro/Video/Player_Base;->CanPlay()Z

    move-result v1

    :cond_1
    return v1
.end method

.method public static _GetCurrentAudioTrackNumChannels(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playerIndex"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/renderheads/AVPro/Video/Manager;->s_Interface:Lcom/renderheads/AVPro/Video/Manager;

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {v0, p0}, Lcom/renderheads/AVPro/Video/Manager;->GetAVProClassForPlayerIndex(I)Lcom/renderheads/AVPro/Video/Player_Base;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/renderheads/AVPro/Video/Player_Base;->GetCurrentAudioTrackNumChannels()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static _GetCurrentVideoTrackBitrate(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playerIndex"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/renderheads/AVPro/Video/Manager;->s_Interface:Lcom/renderheads/AVPro/Video/Manager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 6
    :cond_0
    invoke-direct {v0, p0}, Lcom/renderheads/AVPro/Video/Manager;->GetAVProClassForPlayerIndex(I)Lcom/renderheads/AVPro/Video/Player_Base;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 9
    invoke-virtual {p0}, Lcom/renderheads/AVPro/Video/Player_Base;->GetCurrentVideoTrackBitrate()I

    move-result v1

    :cond_1
    return v1
.end method

.method public static _GetDuration(I)D
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playerIndex"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/renderheads/AVPro/Video/Manager;->s_Interface:Lcom/renderheads/AVPro/Video/Manager;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 6
    :cond_0
    invoke-direct {v0, p0}, Lcom/renderheads/AVPro/Video/Manager;->GetAVProClassForPlayerIndex(I)Lcom/renderheads/AVPro/Video/Player_Base;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 9
    invoke-virtual {p0}, Lcom/renderheads/AVPro/Video/Player_Base;->GetDurationS()D

    move-result-wide v1

    :cond_1
    return-wide v1
.end method

.method public static _GetFrameCount(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playerIndex"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/renderheads/AVPro/Video/Manager;->s_Interface:Lcom/renderheads/AVPro/Video/Manager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 6
    :cond_0
    invoke-direct {v0, p0}, Lcom/renderheads/AVPro/Video/Manager;->GetAVProClassForPlayerIndex(I)Lcom/renderheads/AVPro/Video/Player_Base;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 9
    invoke-virtual {p0}, Lcom/renderheads/AVPro/Video/Player_Base;->GetFrameCount()I

    move-result v1

    :cond_1
    return v1
.end method

.method public static _GetHeight(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playerIndex"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/renderheads/AVPro/Video/Manager;->s_Interface:Lcom/renderheads/AVPro/Video/Manager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 6
    :cond_0
    invoke-direct {v0, p0}, Lcom/renderheads/AVPro/Video/Manager;->GetAVProClassForPlayerIndex(I)Lcom/renderheads/AVPro/Video/Player_Base;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 9
    invoke-virtual {p0}, Lcom/renderheads/AVPro/Video/Player_Base;->GetHeight()I

    move-result v1

    :cond_1
    return v1
.end method

.method public static _GetLastErrorCode(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playerIndex"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/renderheads/AVPro/Video/Manager;->s_Interface:Lcom/renderheads/AVPro/Video/Manager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 6
    :cond_0
    invoke-direct {v0, p0}, Lcom/renderheads/AVPro/Video/Manager;->GetAVProClassForPlayerIndex(I)Lcom/renderheads/AVPro/Video/Player_Base;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 9
    invoke-virtual {p0}, Lcom/renderheads/AVPro/Video/Player_Base;->GetLastErrorCode()I

    move-result v1

    :cond_1
    return v1
.end method

.method public static _GetTextureHandle(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playerIndex"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/renderheads/AVPro/Video/Manager;->s_Interface:Lcom/renderheads/AVPro/Video/Manager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 6
    :cond_0
    invoke-direct {v0, p0}, Lcom/renderheads/AVPro/Video/Manager;->GetAVProClassForPlayerIndex(I)Lcom/renderheads/AVPro/Video/Player_Base;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 9
    invoke-virtual {p0}, Lcom/renderheads/AVPro/Video/Player_Base;->GetTextureHandle()I

    move-result v1

    :cond_1
    return v1
.end method

.method public static _GetVideoDisplayRate(I)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playerIndex"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/renderheads/AVPro/Video/Manager;->s_Interface:Lcom/renderheads/AVPro/Video/Manager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 6
    :cond_0
    invoke-direct {v0, p0}, Lcom/renderheads/AVPro/Video/Manager;->GetAVProClassForPlayerIndex(I)Lcom/renderheads/AVPro/Video/Player_Base;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 9
    invoke-virtual {p0}, Lcom/renderheads/AVPro/Video/Player_Base;->GetDisplayRate()F

    move-result v1

    :cond_1
    return v1
.end method

.method public static _GetWidth(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playerIndex"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/renderheads/AVPro/Video/Manager;->s_Interface:Lcom/renderheads/AVPro/Video/Manager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 6
    :cond_0
    invoke-direct {v0, p0}, Lcom/renderheads/AVPro/Video/Manager;->GetAVProClassForPlayerIndex(I)Lcom/renderheads/AVPro/Video/Player_Base;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 9
    invoke-virtual {p0}, Lcom/renderheads/AVPro/Video/Player_Base;->GetWidth()I

    move-result v1

    :cond_1
    return v1
.end method

.method public static _GrabAudio(III)[F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "playerIndex",
            "sampleCount",
            "channelCount"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/renderheads/AVPro/Video/Manager;->s_Interface:Lcom/renderheads/AVPro/Video/Manager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 6
    :cond_0
    invoke-direct {v0, p0}, Lcom/renderheads/AVPro/Video/Manager;->GetAVProClassForPlayerIndex(I)Lcom/renderheads/AVPro/Video/Player_Base;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/renderheads/AVPro/Video/Player_Base;->GrabAudio(II)[F

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method

.method private static getGlVersionFromDeviceConfig(Landroid/content/Context;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    if-eqz p0, :cond_1

    const-string v0, "activity"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 7
    iget p0, p0, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    const/high16 v0, 0x30000

    if-lt p0, v0, :cond_0

    const/4 p0, 0x3

    goto :goto_0

    :cond_0
    const/high16 v0, 0x20000

    if-lt p0, v0, :cond_1

    const/4 p0, 0x2

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private static getMajorVersion(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "glEsVersion"
        }
    .end annotation

    const/high16 v0, -0x10000

    and-int/2addr p0, v0

    shr-int/lit8 p0, p0, 0x10

    return p0
.end method

.method private static getVersionFromPackageManager(Landroid/content/Context;)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 3
    array-length v1, p0

    if-lez v1, :cond_2

    .line 5
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 8
    iget-object v4, v3, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 10
    iget p0, v3, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    if-eqz p0, :cond_0

    .line 12
    invoke-static {p0}, Lcom/renderheads/AVPro/Video/Manager;->getMajorVersion(I)I

    move-result p0

    return p0

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private static native nativeDestroy(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iPlayerIndex"
        }
    .end annotation
.end method

.method private static native nativeInit()V
.end method


# virtual methods
.method public CreatePlayer(IZZIIIZIIIIIIII)Lcom/renderheads/AVPro/Video/Player_Base;
    .locals 23
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "api",
            "useOesRenderingPath",
            "preferSoftware",
            "audioSubsystem",
            "audio360Channels",
            "iUnityAudioSampleRate",
            "bForceStartHighestBitrate",
            "iMinBufferMs",
            "iMaxBufferMs",
            "iBufferForPlaybackMs",
            "iBufferForPlaybackAfterRebufferMs",
            "peakBitrateBps",
            "maxWidth",
            "maxHeight",
            "iTextureFiltering"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1
    sget-object v2, Lcom/renderheads/AVPro/Video/Manager;->s_Interface:Lcom/renderheads/AVPro/Video/Manager;

    const/4 v3, 0x0

    if-eq v2, v0, :cond_0

    return-object v3

    :cond_0
    const/4 v2, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/16 v6, 0x100

    if-ge v5, v6, :cond_2

    .line 9
    iget-object v6, v0, Lcom/renderheads/AVPro/Video/Manager;->m_Players:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    move v2, v5

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-gez v2, :cond_3

    return-object v3

    :cond_3
    const/4 v5, 0x1

    if-eq v1, v5, :cond_5

    const/4 v6, 0x2

    if-eq v1, v6, :cond_4

    return-object v3

    .line 28
    :cond_4
    new-instance v1, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;

    iget-object v3, v0, Lcom/renderheads/AVPro/Video/Manager;->m_Random:Ljava/util/Random;

    invoke-direct {v1, v2, v4, v3, v5}, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;-><init>(IZLjava/util/Random;Z)V

    .line 29
    invoke-virtual {v1, v4}, Lcom/renderheads/AVPro/Video/Player_Base;->SetShowPosterFrame(Z)V

    .line 30
    iget-object v8, v0, Lcom/renderheads/AVPro/Video/Manager;->m_Context:Landroid/content/Context;

    move-object v7, v1

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p6

    move/from16 v14, p7

    move/from16 v15, p8

    move/from16 v16, p9

    move/from16 v17, p10

    move/from16 v18, p11

    move/from16 v19, p12

    move/from16 v20, p13

    move/from16 v21, p14

    move/from16 v22, p15

    invoke-virtual/range {v7 .. v22}, Lcom/renderheads/AVPro/Video/Player_Base;->Initialise(Landroid/content/Context;ZZIIIZIIIIIIII)Z

    .line 31
    iget-object v3, v0, Lcom/renderheads/AVPro/Video/Manager;->m_Players:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v1, v0, Lcom/renderheads/AVPro/Video/Manager;->m_Players:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/renderheads/AVPro/Video/Player_Base;

    return-object v1

    .line 33
    :cond_5
    new-instance v1, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;

    iget-object v3, v0, Lcom/renderheads/AVPro/Video/Manager;->m_Random:Ljava/util/Random;

    invoke-direct {v1, v2, v4, v3, v5}, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;-><init>(IZLjava/util/Random;Z)V

    .line 34
    iget-object v4, v0, Lcom/renderheads/AVPro/Video/Manager;->m_Context:Landroid/content/Context;

    move-object v3, v1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    move/from16 v16, p13

    move/from16 v17, p14

    move/from16 v18, p15

    invoke-virtual/range {v3 .. v18}, Lcom/renderheads/AVPro/Video/Player_Base;->Initialise(Landroid/content/Context;ZZIIIZIIIIIIII)Z

    .line 35
    iget-object v3, v0, Lcom/renderheads/AVPro/Video/Manager;->m_Players:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v1, v0, Lcom/renderheads/AVPro/Video/Manager;->m_Players:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/renderheads/AVPro/Video/Player_Base;

    return-object v1
.end method

.method public DestroyPlayer(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playerIndex"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/renderheads/AVPro/Video/Manager;->GetAVProClassForPlayerIndex(I)Lcom/renderheads/AVPro/Video/Player_Base;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/renderheads/AVPro/Video/Player_Base;->Deinitialise()V

    .line 5
    invoke-direct {p0, p1}, Lcom/renderheads/AVPro/Video/Manager;->RemovePlayer(I)V

    .line 8
    invoke-static {p1}, Lcom/renderheads/AVPro/Video/Manager;->nativeDestroy(I)V

    .line 11
    sget-object p1, Lcom/renderheads/AVPro/Video/Manager;->_renderMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 12
    sget-object v1, Lcom/renderheads/AVPro/Video/Manager;->_renderFree:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_0
    return-void
.end method

.method public GetPluginVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "2.6.3f1-ultra"

    return-object v0
.end method

.method public SetContext(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/renderheads/AVPro/Video/Manager;->m_Context:Landroid/content/Context;

    .line 3
    invoke-static {p1}, Lcom/renderheads/AVPro/Video/Manager;->getVersionFromPackageManager(Landroid/content/Context;)I

    move-result p1

    .line 4
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Manager;->m_Context:Landroid/content/Context;

    invoke-static {v0}, Lcom/renderheads/AVPro/Video/Manager;->getGlVersionFromDeviceConfig(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x3

    if-lt p1, v1, :cond_0

    if-lt v0, v1, :cond_0

    .line 7
    iput v1, p0, Lcom/renderheads/AVPro/Video/Manager;->m_iOpenGLVersion:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-lt p1, v1, :cond_1

    if-lt v0, v1, :cond_1

    .line 11
    iput v1, p0, Lcom/renderheads/AVPro/Video/Manager;->m_iOpenGLVersion:I

    :cond_1
    :goto_0
    return-void
.end method
