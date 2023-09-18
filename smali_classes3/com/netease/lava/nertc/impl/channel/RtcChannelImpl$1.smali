.class synthetic Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$1;
.super Ljava/lang/Object;
.source "RtcChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$netease$lava$nertc$sdk$video$NERtcVideoFrame$Format:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 615
    invoke-static {}, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;->values()[Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$1;->$SwitchMap$com$netease$lava$nertc$sdk$video$NERtcVideoFrame$Format:[I

    :try_start_0
    sget-object v1, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;->I420:Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;

    invoke-virtual {v1}, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$1;->$SwitchMap$com$netease$lava$nertc$sdk$video$NERtcVideoFrame$Format:[I

    sget-object v1, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;->NV21:Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;

    invoke-virtual {v1}, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$1;->$SwitchMap$com$netease$lava$nertc$sdk$video$NERtcVideoFrame$Format:[I

    sget-object v1, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;->RGBA:Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;

    invoke-virtual {v1}, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$1;->$SwitchMap$com$netease$lava$nertc$sdk$video$NERtcVideoFrame$Format:[I

    sget-object v1, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;->TEXTURE_OES:Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;

    invoke-virtual {v1}, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$1;->$SwitchMap$com$netease$lava$nertc$sdk$video$NERtcVideoFrame$Format:[I

    sget-object v1, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;->TEXTURE_RGB:Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;

    invoke-virtual {v1}, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method
