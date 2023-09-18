.class Lcom/netease/yunxin/lite/util/NetworkMonitorWrapper;
.super Ljava/lang/Object;
.source "NetworkMonitorWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkMonitorWrapper"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static convertConnectionType(Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "connectionType"
        }
    .end annotation

    .line 15
    sget-object v0, Lcom/netease/yunxin/lite/util/NetworkMonitorWrapper$1;->$SwitchMap$com$netease$lava$webrtc$NetworkMonitorAutoDetect$ConnectionType:[I

    invoke-virtual {p0}, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/16 p0, 0x8

    return p0

    :pswitch_1
    const/16 p0, 0x9

    return p0

    :pswitch_2
    const/4 p0, 0x6

    return p0

    :pswitch_3
    const/4 p0, 0x5

    return p0

    :pswitch_4
    const/4 p0, 0x4

    return p0

    :pswitch_5
    const/4 p0, 0x3

    return p0

    :pswitch_6
    const/4 p0, 0x2

    return p0

    :pswitch_7
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getCurrentConnectionType()I
    .locals 1

    .line 39
    invoke-static {}, Lcom/netease/lava/webrtc/NetworkMonitor;->getInstance()Lcom/netease/lava/webrtc/NetworkMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/NetworkMonitor;->getCurrentConnectionType()Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/yunxin/lite/util/NetworkMonitorWrapper;->convertConnectionType(Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;)I

    move-result v0

    return v0
.end method

.method private static startMonitor(Lcom/netease/lava/webrtc/NetworkMonitor$NetworkObserver;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation

    const-string v0, "NetworkMonitorWrapper"

    :try_start_0
    const-string v1, "startMonitor"

    .line 45
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lcom/netease/lava/webrtc/NetworkMonitor;->getInstance()Lcom/netease/lava/webrtc/NetworkMonitor;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/netease/lava/webrtc/NetworkMonitor;->addObserver(Lcom/netease/lava/webrtc/NetworkMonitor$NetworkObserver;)V

    .line 47
    invoke-static {}, Lcom/netease/lava/webrtc/NetworkMonitor;->getInstance()Lcom/netease/lava/webrtc/NetworkMonitor;

    move-result-object p0

    invoke-static {}, Lcom/netease/yunxin/lite/util/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/netease/lava/webrtc/NetworkMonitor;->startMonitoring(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initLava exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static stopMonitor(Lcom/netease/lava/webrtc/NetworkMonitor$NetworkObserver;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation

    const-string v0, "NetworkMonitorWrapper"

    :try_start_0
    const-string v1, "stopMonitor"

    .line 56
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-static {}, Lcom/netease/lava/webrtc/NetworkMonitor;->getInstance()Lcom/netease/lava/webrtc/NetworkMonitor;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/netease/lava/webrtc/NetworkMonitor;->removeObserver(Lcom/netease/lava/webrtc/NetworkMonitor$NetworkObserver;)V

    .line 58
    invoke-static {}, Lcom/netease/lava/webrtc/NetworkMonitor;->getInstance()Lcom/netease/lava/webrtc/NetworkMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/netease/lava/webrtc/NetworkMonitor;->stopMonitoring()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseInternal exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
