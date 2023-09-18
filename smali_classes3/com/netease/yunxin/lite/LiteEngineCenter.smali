.class public Lcom/netease/yunxin/lite/LiteEngineCenter;
.super Ljava/lang/Object;
.source "LiteEngineCenter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPermission(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 21
    invoke-static {p0}, Lcom/netease/yunxin/lite/util/SystemPermissionUtils;->checkPermission(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static native createEngine(Lcom/netease/yunxin/lite/model/LiteSDKEngineConfig;Lcom/netease/yunxin/lite/model/LiteSDKEngineSink;)Lcom/netease/yunxin/lite/LiteEngine;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "config",
            "sink"
        }
    .end annotation
.end method

.method public static native createLinkEngine(Lcom/netease/yunxin/lite/model/LiteSDKEngineConfig;Lcom/netease/yunxin/lite/model/LiteSDKLinkEngineSink;)Lcom/netease/yunxin/lite/LiteLinkEngine;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "config",
            "sink"
        }
    .end annotation
.end method

.method public static native createProbeEngine(Lcom/netease/yunxin/lite/model/LiteSDKEngineConfig;Lcom/netease/yunxin/lite/model/LiteSDKProbeEngineSink;)Lcom/netease/yunxin/lite/LiteProbeEngine;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "config",
            "sink"
        }
    .end annotation
.end method

.method public static native destroyEngine(Lcom/netease/yunxin/lite/LiteEngine;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engine"
        }
    .end annotation
.end method

.method public static native destroyLinkEngine(Lcom/netease/yunxin/lite/LiteLinkEngine;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engine"
        }
    .end annotation
.end method

.method public static native destroyProbeEngine(Lcom/netease/yunxin/lite/LiteProbeEngine;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engine"
        }
    .end annotation
.end method

.method public static native getBestVideoProfileType(II)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "height"
        }
    .end annotation
.end method

.method public static native getEngineVersion()Ljava/lang/String;
.end method

.method public static native getResolutionWithProfileType(Lcom/netease/yunxin/lite/model/LiteSDKVideoProfileUtil;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "profileUtil"
        }
    .end annotation
.end method

.method public static native initialize(Lcom/netease/yunxin/lite/model/LiteSDKConfig;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation
.end method

.method public static native resetParameters()V
.end method

.method public static native setForegroundConfig(Ljava/lang/String;Ljava/lang/String;II)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "title",
            "content",
            "icon",
            "largeIcon"
        }
    .end annotation
.end method

.method public static native setParameters(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameters"
        }
    .end annotation
.end method

.method public static native setPassThroughParameters(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameters"
        }
    .end annotation
.end method

.method public static native startForeground(Ljava/lang/String;J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "appKey",
            "backgroundTimeMs"
        }
    .end annotation
.end method

.method public static native stopForeground()V
.end method

.method public static native unInitialize()V
.end method
