.class public Lcom/netease/yunxin/lite/util/GrowDeviceHelper;
.super Ljava/lang/Object;
.source "GrowDeviceHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getToken()Ljava/lang/String;
    .locals 2

    .line 22
    invoke-static {}, Lcom/netease/mobsec/grow/GrowDevice;->get()Lcom/netease/mobsec/grow/GrowDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mobsec/grow/GrowDevice;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public static initial()V
    .locals 3

    .line 16
    invoke-static {}, Lcom/netease/mobsec/grow/GrowDevice;->get()Lcom/netease/mobsec/grow/GrowDevice;

    move-result-object v0

    invoke-static {}, Lcom/netease/yunxin/lite/util/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "060ddb572b854dc69d1c86a8bab3422c"

    invoke-virtual {v0, v1, v2}, Lcom/netease/mobsec/grow/GrowDevice;->init(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
