.class public interface abstract Lcom/netease/lava/nertc/sdk/NERtcConstants$ConnectionType;
.super Ljava/lang/Object;
.source "NERtcConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lava/nertc/sdk/NERtcConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConnectionType"
.end annotation


# static fields
.field public static final CONNECTION_2G:I

.field public static final CONNECTION_3G:I

.field public static final CONNECTION_4G:I

.field public static final CONNECTION_5G:I

.field public static final CONNECTION_BLUETOOTH:I

.field public static final CONNECTION_ETHERNET:I

.field public static final CONNECTION_NONE:I

.field public static final CONNECTION_UNKNOWN:I

.field public static final CONNECTION_WIFI:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1171
    sget v0, Lcom/netease/lava/nertc/impl/RtcConnectionType;->CONNECTION_UNKNOWN:I

    sput v0, Lcom/netease/lava/nertc/sdk/NERtcConstants$ConnectionType;->CONNECTION_UNKNOWN:I

    .line 1181
    sget v0, Lcom/netease/lava/nertc/impl/RtcConnectionType;->CONNECTION_ETHERNET:I

    sput v0, Lcom/netease/lava/nertc/sdk/NERtcConstants$ConnectionType;->CONNECTION_ETHERNET:I

    .line 1191
    sget v0, Lcom/netease/lava/nertc/impl/RtcConnectionType;->CONNECTION_WIFI:I

    sput v0, Lcom/netease/lava/nertc/sdk/NERtcConstants$ConnectionType;->CONNECTION_WIFI:I

    .line 1201
    sget v0, Lcom/netease/lava/nertc/impl/RtcConnectionType;->CONNECTION_2G:I

    sput v0, Lcom/netease/lava/nertc/sdk/NERtcConstants$ConnectionType;->CONNECTION_2G:I

    .line 1211
    sget v0, Lcom/netease/lava/nertc/impl/RtcConnectionType;->CONNECTION_3G:I

    sput v0, Lcom/netease/lava/nertc/sdk/NERtcConstants$ConnectionType;->CONNECTION_3G:I

    .line 1221
    sget v0, Lcom/netease/lava/nertc/impl/RtcConnectionType;->CONNECTION_4G:I

    sput v0, Lcom/netease/lava/nertc/sdk/NERtcConstants$ConnectionType;->CONNECTION_4G:I

    .line 1231
    sget v0, Lcom/netease/lava/nertc/impl/RtcConnectionType;->CONNECTION_BLUETOOTH:I

    sput v0, Lcom/netease/lava/nertc/sdk/NERtcConstants$ConnectionType;->CONNECTION_BLUETOOTH:I

    .line 1241
    sget v0, Lcom/netease/lava/nertc/impl/RtcConnectionType;->CONNECTION_5G:I

    sput v0, Lcom/netease/lava/nertc/sdk/NERtcConstants$ConnectionType;->CONNECTION_5G:I

    .line 1251
    sget v0, Lcom/netease/lava/nertc/impl/RtcConnectionType;->CONNECTION_NONE:I

    sput v0, Lcom/netease/lava/nertc/sdk/NERtcConstants$ConnectionType;->CONNECTION_NONE:I

    return-void
.end method
