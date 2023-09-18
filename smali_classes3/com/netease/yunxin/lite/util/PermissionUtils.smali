.class Lcom/netease/yunxin/lite/util/PermissionUtils;
.super Ljava/lang/Object;
.source "PermissionUtils.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isBluetoothSCOPermissionGranted()Z
    .locals 1

    .line 27
    invoke-static {}, Lcom/netease/yunxin/lite/util/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/yunxin/lite/util/SystemPermissionUtils;->checkBluetoothScoConnectPermission(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isCameraPermissionGranted()Z
    .locals 1

    .line 17
    invoke-static {}, Lcom/netease/yunxin/lite/util/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/yunxin/lite/util/SystemPermissionUtils;->checkCameraPermission(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isChangeNetworkStateGranted()Z
    .locals 1

    .line 22
    invoke-static {}, Lcom/netease/yunxin/lite/util/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/yunxin/lite/util/SystemPermissionUtils;->checkChangeNetworkStatePermission(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isRecordAudioPermissionGranted()Z
    .locals 1

    .line 12
    invoke-static {}, Lcom/netease/yunxin/lite/util/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/yunxin/lite/util/SystemPermissionUtils;->checkAudioPermission(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
