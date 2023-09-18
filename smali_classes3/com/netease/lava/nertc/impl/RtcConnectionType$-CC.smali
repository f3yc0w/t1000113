.class public final synthetic Lcom/netease/lava/nertc/impl/RtcConnectionType$-CC;
.super Ljava/lang/Object;
.source "RtcConnectionType.java"


# direct methods
.method public static toString(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    sget v1, Lcom/netease/lava/nertc/impl/RtcConnectionType;->CONNECTION_ETHERNET:I

    if-ne p0, v1, :cond_0

    const-string v0, "ETHERNET"

    goto :goto_0

    .line 75
    :cond_0
    sget v1, Lcom/netease/lava/nertc/impl/RtcConnectionType;->CONNECTION_WIFI:I

    if-ne p0, v1, :cond_1

    const-string v0, "WIFI"

    goto :goto_0

    .line 77
    :cond_1
    sget v1, Lcom/netease/lava/nertc/impl/RtcConnectionType;->CONNECTION_4G:I

    if-ne p0, v1, :cond_2

    const-string v0, "4G"

    goto :goto_0

    .line 79
    :cond_2
    sget v1, Lcom/netease/lava/nertc/impl/RtcConnectionType;->CONNECTION_3G:I

    if-ne p0, v1, :cond_3

    const-string v0, "3G"

    goto :goto_0

    .line 81
    :cond_3
    sget v1, Lcom/netease/lava/nertc/impl/RtcConnectionType;->CONNECTION_2G:I

    if-ne p0, v1, :cond_4

    const-string v0, "2G"

    goto :goto_0

    .line 83
    :cond_4
    sget v1, Lcom/netease/lava/nertc/impl/RtcConnectionType;->CONNECTION_BLUETOOTH:I

    if-ne p0, v1, :cond_5

    const-string v0, "BLUETOOTH"

    goto :goto_0

    .line 85
    :cond_5
    sget v1, Lcom/netease/lava/nertc/impl/RtcConnectionType;->CONNECTION_5G:I

    if-ne p0, v1, :cond_6

    const-string v0, "5G"

    goto :goto_0

    .line 87
    :cond_6
    sget v1, Lcom/netease/lava/nertc/impl/RtcConnectionType;->CONNECTION_NONE:I

    if-ne p0, v1, :cond_7

    const-string v0, "NONE"

    goto :goto_0

    .line 89
    :cond_7
    sget v1, Lcom/netease/lava/nertc/impl/RtcConnectionType;->CONNECTION_UNKNOWN_CELLULAR:I

    if-ne p0, v1, :cond_8

    const-string v0, "UNKNOWN_CELLULAR"

    goto :goto_0

    .line 91
    :cond_8
    sget v1, Lcom/netease/lava/nertc/impl/RtcConnectionType;->CONNECTION_VPN:I

    if-ne p0, v1, :cond_9

    const-string v0, "VPN"

    :cond_9
    :goto_0
    return-object v0
.end method
