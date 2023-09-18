.class public Lcom/netease/yunxin/lite/LiteCrashCatcher;
.super Ljava/lang/Object;
.source "LiteCrashCatcher.java"

# interfaces
.implements Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent$CrashCallback;


# static fields
.field private static final SDK_TYPE:Ljava/lang/String; = "nrtc2"

.field private static final TAG:Ljava/lang/String; = "NERtcCrashHandler"


# instance fields
.field private final mNativeHandler:J


# direct methods
.method private constructor <init>(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeHandler"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-wide p1, p0, Lcom/netease/yunxin/lite/LiteCrashCatcher;->mNativeHandler:J

    return-void
.end method

.method private native onCrash(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeHandler",
            "md5",
            "crashLogFile",
            "sdkLogDir",
            "crashTime"
        }
    .end annotation
.end method

.method private static release()V
    .locals 2

    const-string v0, "NERtcCrashHandler"

    const-string v1, "release: "

    .line 40
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "nrtc2"

    .line 41
    invoke-static {v0}, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcher;->release(Ljava/lang/String;)V

    return-void
.end method

.method private static setUp(JLjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeHandler",
            "logDirectory"
        }
    .end annotation

    const-string v0, "NERtcCrashHandler"

    const-string v1, "setUp: "

    .line 27
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "com.netease.lava.nertc"

    .line 29
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.netease.yunxin.lite"

    .line 30
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.netease.lava.webrtc"

    .line 31
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    new-instance v1, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent$Builder;

    invoke-static {}, Lcom/netease/yunxin/lite/util/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/netease/yunxin/lite/LiteCrashCatcher;

    invoke-direct {v3, p0, p1}, Lcom/netease/yunxin/lite/LiteCrashCatcher;-><init>(J)V

    const-string p0, "nrtc2"

    invoke-direct {v1, v2, p0, v0, v3}, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent$CrashCallback;)V

    .line 33
    invoke-virtual {v1, p2}, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent$Builder;->logDir(Ljava/lang/String;)Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent$Builder;

    move-result-object p1

    .line 34
    invoke-virtual {p1}, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent$Builder;->build()Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;

    move-result-object p1

    .line 35
    invoke-static {p0, p1}, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcher;->setup(Ljava/lang/String;Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;)V

    return-void
.end method


# virtual methods
.method public onCrash(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;JLjava/util/HashMap;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "md5",
            "crashLogFile",
            "sdkLogDir",
            "crashTime",
            "extraHeader",
            "isOldCrash"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 45
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string p7, "onCrash, md5:"

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p7, ", crashLogFile:"

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p7, ", sdkLogDir:"

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    const-string p7, "NERtcCrashHandler"

    invoke-static {p7, p6}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-wide v1, p0, Lcom/netease/yunxin/lite/LiteCrashCatcher;->mNativeHandler:J

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v3, p1

    move-object v5, p3

    move-wide v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/netease/yunxin/lite/LiteCrashCatcher;->onCrash(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
