.class public Lcom/netease/yunxin/lite/unity/UnityUtility;
.super Ljava/lang/Object;
.source "UnityUtility.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UnityUtility"

.field private static volatile sInitialized:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized initialize(Landroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-class v0, Lcom/netease/yunxin/lite/unity/UnityUtility;

    monitor-enter v0

    :try_start_0
    const-string v1, "UnityUtility"

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initialize, context:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_1

    .line 23
    sget-boolean v1, Lcom/netease/yunxin/lite/unity/UnityUtility;->sInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 24
    monitor-exit v0

    return-void

    .line 27
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/netease/yunxin/lite/util/ContextUtils;->setContext(Landroid/content/Context;)V

    const-string p0, "UnityUtility"

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading library nertc-c-sdk level:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/netease/lava/webrtc/Logging$Severity;->LS_INFO:Lcom/netease/lava/webrtc/Logging$Severity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string p0, "nertc-c-sdk"

    .line 31
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string p0, "UnityUtility"

    const-string v1, "Loaded library nertc-c-sdk"

    .line 32
    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_3
    const-string p0, "UnityUtility"

    const-string v1, "Failed to load native library nertc-c-sdk"

    .line 34
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string p0, "NERtcFaceDetect"

    .line 37
    invoke-static {p0}, Lcom/netease/yunxin/lite/util/NativeLibLoader;->loadLibrary(Ljava/lang/String;)V

    const-string p0, "NERtcBeauty"

    .line 38
    invoke-static {p0}, Lcom/netease/yunxin/lite/util/NativeLibLoader;->loadLibrary(Ljava/lang/String;)V

    const-string p0, "NERtcPersonSegment"

    .line 39
    invoke-static {p0}, Lcom/netease/yunxin/lite/util/NativeLibLoader;->loadLibrary(Ljava/lang/String;)V

    const-string p0, "NERtcFaceEnhance"

    .line 40
    invoke-static {p0}, Lcom/netease/yunxin/lite/util/NativeLibLoader;->loadLibrary(Ljava/lang/String;)V

    const-string p0, "NERtcVideoDenoise"

    .line 41
    invoke-static {p0}, Lcom/netease/yunxin/lite/util/NativeLibLoader;->loadLibrary(Ljava/lang/String;)V

    const-string p0, "NERtcSuperResolution"

    .line 42
    invoke-static {p0}, Lcom/netease/yunxin/lite/util/NativeLibLoader;->loadLibrary(Ljava/lang/String;)V

    const-string p0, "NERtcnn"

    .line 43
    invoke-static {p0}, Lcom/netease/yunxin/lite/util/NativeLibLoader;->loadLibrary(Ljava/lang/String;)V

    const-string p0, "NERtcAiHowling"

    .line 44
    invoke-static {p0}, Lcom/netease/yunxin/lite/util/NativeLibLoader;->loadLibrary(Ljava/lang/String;)V

    const-string p0, "NERtcAiDenoise"

    .line 45
    invoke-static {p0}, Lcom/netease/yunxin/lite/util/NativeLibLoader;->loadLibrary(Ljava/lang/String;)V

    const-string p0, "NERtcAudio3D"

    .line 46
    invoke-static {p0}, Lcom/netease/yunxin/lite/util/NativeLibLoader;->loadLibrary(Ljava/lang/String;)V

    .line 48
    sget-object p0, Lcom/netease/lava/webrtc/Logging$Severity;->LS_INFO:Lcom/netease/lava/webrtc/Logging$Severity;

    invoke-static {p0}, Lcom/netease/lava/webrtc/Logging;->enableLogToDebugOutput(Lcom/netease/lava/webrtc/Logging$Severity;)V

    const-string p0, "UnityUtility"

    const-string v1, "initialized"

    .line 50
    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    .line 51
    sput-boolean p0, Lcom/netease/yunxin/lite/unity/UnityUtility;->sInitialized:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 52
    monitor-exit v0

    return-void

    .line 20
    :cond_1
    :try_start_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v1, "context is null"

    invoke-direct {p0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
