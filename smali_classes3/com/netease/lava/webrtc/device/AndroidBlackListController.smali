.class public Lcom/netease/lava/webrtc/device/AndroidBlackListController;
.super Ljava/lang/Object;
.source "AndroidBlackListController.java"


# static fields
.field static final GPU_Sync_BLACKLIST:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "V2219A"

    .line 18
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/lava/webrtc/device/AndroidBlackListController;->GPU_Sync_BLACKLIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isGPUSyncBlackList()Z
    .locals 2

    .line 23
    sget-object v0, Lcom/netease/lava/webrtc/device/AndroidBlackListController;->GPU_Sync_BLACKLIST:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/netease/lava/webrtc/device/AndroidBuildInfo;->getDeviceModel()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
