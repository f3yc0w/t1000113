.class public Lcom/netease/lava/webrtc/device/HardwareLevel;
.super Ljava/lang/Object;
.source "HardwareLevel.java"


# static fields
.field public static final LEVEL_HIGH:I = 0x3

.field public static final LEVEL_LOW:I = 0x1

.field public static final LEVEL_MEDIUM:I = 0x2

.field public static final LEVEL_UNKNOWN:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static level()I
    .locals 8

    .line 14
    invoke-static {}, Lcom/netease/lava/webrtc/device/AndroidDeviceInfo;->getCPUABI()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 15
    invoke-static {v1}, Lcom/netease/lava/webrtc/device/AndroidDeviceInfo;->getTotalMemory(Landroid/content/Context;)J

    move-result-wide v1

    .line 16
    invoke-static {}, Lcom/netease/lava/webrtc/device/AndroidDeviceInfo;->getCPUMaxFreqKHz()I

    move-result v3

    int-to-long v3, v3

    if-eqz v0, :cond_4

    const-wide/16 v5, -0x1

    cmp-long v7, v1, v5

    if-eqz v7, :cond_4

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    goto :goto_1

    :cond_0
    const-wide v5, 0x80000000L

    cmp-long v7, v1, v5

    if-lez v7, :cond_3

    .line 22
    invoke-static {v0}, Lcom/netease/lava/webrtc/device/CpuFamily$-CC;->is64BitArch(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-le v5, v6, :cond_3

    const-wide/32 v5, 0x16e360

    cmp-long v7, v3, v5

    if-gez v7, :cond_1

    goto :goto_0

    .line 27
    :cond_1
    invoke-static {v0}, Lcom/netease/lava/webrtc/device/CpuFamily$-CC;->is64BitArch(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide v5, 0x1c0000000L

    cmp-long v0, v1, v5

    if-ltz v0, :cond_2

    const-wide/32 v0, 0x2625a0

    cmp-long v2, v3, v0

    if-lez v2, :cond_2

    const/4 v0, 0x3

    return v0

    :cond_2
    const/4 v0, 0x2

    return v0

    :cond_3
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_4
    :goto_1
    const/4 v0, -0x1

    return v0
.end method
