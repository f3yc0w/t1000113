.class Lcom/netease/yunxin/lite/util/DeviceStateMonitor;
.super Ljava/lang/Object;
.source "DeviceStateMonitor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DeviceStateMonitor"

.field private static mHandler:Landroid/os/Handler;

.field private static mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private static mThread:Landroid/os/HandlerThread;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static startMonitor(Lcom/netease/yunxin/lite/util/DeviceStateObserver;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation

    const-string v0, "DeviceStateMonitor"

    const-string v1, "startMonitor"

    .line 23
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-static {}, Lcom/netease/yunxin/lite/util/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/yunxin/lite/util/SystemPermissionUtils;->checkReadPhoneState(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 25
    sget-object v1, Lcom/netease/yunxin/lite/util/DeviceStateMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_0

    .line 27
    invoke-static {}, Lcom/netease/yunxin/lite/util/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    sput-object v1, Lcom/netease/yunxin/lite/util/DeviceStateMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/16 v2, 0x20

    .line 28
    invoke-virtual {v1, p0, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 32
    :cond_0
    sget-object v1, Lcom/netease/yunxin/lite/util/DeviceStateMonitor;->mThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_1

    .line 33
    new-instance v1, Landroid/os/HandlerThread;

    invoke-direct {v1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/netease/yunxin/lite/util/DeviceStateMonitor;->mThread:Landroid/os/HandlerThread;

    .line 34
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 35
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/netease/yunxin/lite/util/DeviceStateMonitor;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/netease/yunxin/lite/util/DeviceStateMonitor;->mHandler:Landroid/os/Handler;

    .line 37
    :cond_1
    invoke-static {}, Lcom/netease/lava/webrtc/ForegroundMonitor;->getInstance()Lcom/netease/lava/webrtc/ForegroundMonitor;

    move-result-object v0

    sget-object v1, Lcom/netease/yunxin/lite/util/DeviceStateMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/netease/lava/webrtc/ForegroundMonitor;->startMonitor(Landroid/os/Handler;)V

    .line 38
    invoke-static {}, Lcom/netease/lava/webrtc/ForegroundMonitor;->getInstance()Lcom/netease/lava/webrtc/ForegroundMonitor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/netease/lava/webrtc/ForegroundMonitor;->addObserver(Lcom/netease/lava/webrtc/ForegroundMonitor$Observer;)V

    return-void
.end method

.method private static stopMonitor(Lcom/netease/yunxin/lite/util/DeviceStateObserver;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation

    const-string v0, "DeviceStateMonitor"

    const-string v1, "stopMonitor"

    .line 43
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-static {}, Lcom/netease/lava/webrtc/ForegroundMonitor;->getInstance()Lcom/netease/lava/webrtc/ForegroundMonitor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/netease/lava/webrtc/ForegroundMonitor;->removeObserver(Lcom/netease/lava/webrtc/ForegroundMonitor$Observer;)V

    .line 45
    invoke-static {}, Lcom/netease/lava/webrtc/ForegroundMonitor;->getInstance()Lcom/netease/lava/webrtc/ForegroundMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/ForegroundMonitor;->stopMonitor()V

    .line 46
    sget-object v0, Lcom/netease/yunxin/lite/util/DeviceStateMonitor;->mThread:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 47
    sget-object v0, Lcom/netease/yunxin/lite/util/DeviceStateMonitor;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/netease/yunxin/lite/util/LooperUtils;->quitSafely(Landroid/os/Handler;)V

    .line 48
    sput-object v1, Lcom/netease/yunxin/lite/util/DeviceStateMonitor;->mHandler:Landroid/os/Handler;

    .line 50
    :try_start_0
    sget-object v0, Lcom/netease/yunxin/lite/util/DeviceStateMonitor;->mThread:Landroid/os/HandlerThread;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/os/HandlerThread;->join(J)V

    .line 51
    sput-object v1, Lcom/netease/yunxin/lite/util/DeviceStateMonitor;->mThread:Landroid/os/HandlerThread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 53
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 56
    :cond_0
    :goto_0
    sget-object v0, Lcom/netease/yunxin/lite/util/DeviceStateMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    const/4 v2, 0x0

    .line 57
    invoke-virtual {v0, p0, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 58
    sput-object v1, Lcom/netease/yunxin/lite/util/DeviceStateMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    :cond_1
    return-void
.end method
