.class synthetic Lcom/netease/lava/nertc/impl/lite/LiteHelper$1;
.super Ljava/lang/Object;
.source "LiteHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lava/nertc/impl/lite/LiteHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$netease$lava$api$IVideoRender$VideoBufferType:[I

.field static final synthetic $SwitchMap$com$netease$lava$nertc$sdk$audio$NERtcDistanceRolloffModel:[I

.field static final synthetic $SwitchMap$com$netease$lava$nertc$sdk$audio$NERtcSpatializerRenderMode:[I

.field static final synthetic $SwitchMap$com$netease$lava$nertc$sdk$video$NERtcVideoStreamType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 593
    invoke-static {}, Lcom/netease/lava/api/IVideoRender$VideoBufferType;->values()[Lcom/netease/lava/api/IVideoRender$VideoBufferType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/netease/lava/nertc/impl/lite/LiteHelper$1;->$SwitchMap$com$netease$lava$api$IVideoRender$VideoBufferType:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/netease/lava/api/IVideoRender$VideoBufferType;->VIDEO_BUFFER_TYPE_TEXTURE:Lcom/netease/lava/api/IVideoRender$VideoBufferType;

    invoke-virtual {v2}, Lcom/netease/lava/api/IVideoRender$VideoBufferType;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/netease/lava/nertc/impl/lite/LiteHelper$1;->$SwitchMap$com$netease$lava$api$IVideoRender$VideoBufferType:[I

    sget-object v3, Lcom/netease/lava/api/IVideoRender$VideoBufferType;->VIDEO_BUFFER_TYPE_RAW_DATA:Lcom/netease/lava/api/IVideoRender$VideoBufferType;

    invoke-virtual {v3}, Lcom/netease/lava/api/IVideoRender$VideoBufferType;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 539
    :catch_1
    invoke-static {}, Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerRenderMode;->values()[Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerRenderMode;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/netease/lava/nertc/impl/lite/LiteHelper$1;->$SwitchMap$com$netease$lava$nertc$sdk$audio$NERtcSpatializerRenderMode:[I

    :try_start_2
    sget-object v3, Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerRenderMode;->kNERtcSpatializerRenderBinauralLowQuality:Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerRenderMode;

    invoke-virtual {v3}, Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerRenderMode;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v2, Lcom/netease/lava/nertc/impl/lite/LiteHelper$1;->$SwitchMap$com$netease$lava$nertc$sdk$audio$NERtcSpatializerRenderMode:[I

    sget-object v3, Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerRenderMode;->kNERtcSpatializerRenderBinauralMediumQuality:Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerRenderMode;

    invoke-virtual {v3}, Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerRenderMode;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v2, 0x3

    :try_start_4
    sget-object v3, Lcom/netease/lava/nertc/impl/lite/LiteHelper$1;->$SwitchMap$com$netease$lava$nertc$sdk$audio$NERtcSpatializerRenderMode:[I

    sget-object v4, Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerRenderMode;->kNERtcSpatializerRenderBinauralHighQuality:Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerRenderMode;

    invoke-virtual {v4}, Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerRenderMode;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v3, Lcom/netease/lava/nertc/impl/lite/LiteHelper$1;->$SwitchMap$com$netease$lava$nertc$sdk$audio$NERtcSpatializerRenderMode:[I

    sget-object v4, Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerRenderMode;->kNERtcSpatializerRenderRoomEffectsOnly:Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerRenderMode;

    invoke-virtual {v4}, Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerRenderMode;->ordinal()I

    move-result v4

    const/4 v5, 0x4

    aput v5, v3, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v3, Lcom/netease/lava/nertc/impl/lite/LiteHelper$1;->$SwitchMap$com$netease$lava$nertc$sdk$audio$NERtcSpatializerRenderMode:[I

    sget-object v4, Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerRenderMode;->kNERtcSpatializerRenderStereoPanning:Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerRenderMode;

    invoke-virtual {v4}, Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerRenderMode;->ordinal()I

    move-result v4

    const/4 v5, 0x5

    aput v5, v3, v4
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    .line 371
    :catch_6
    invoke-static {}, Lcom/netease/lava/nertc/sdk/audio/NERtcDistanceRolloffModel;->values()[Lcom/netease/lava/nertc/sdk/audio/NERtcDistanceRolloffModel;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/netease/lava/nertc/impl/lite/LiteHelper$1;->$SwitchMap$com$netease$lava$nertc$sdk$audio$NERtcDistanceRolloffModel:[I

    :try_start_7
    sget-object v4, Lcom/netease/lava/nertc/sdk/audio/NERtcDistanceRolloffModel;->kNERtcDistanceRolloffLinear:Lcom/netease/lava/nertc/sdk/audio/NERtcDistanceRolloffModel;

    invoke-virtual {v4}, Lcom/netease/lava/nertc/sdk/audio/NERtcDistanceRolloffModel;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v3, Lcom/netease/lava/nertc/impl/lite/LiteHelper$1;->$SwitchMap$com$netease$lava$nertc$sdk$audio$NERtcDistanceRolloffModel:[I

    sget-object v4, Lcom/netease/lava/nertc/sdk/audio/NERtcDistanceRolloffModel;->kNERtcDistanceRolloffLogarithmic:Lcom/netease/lava/nertc/sdk/audio/NERtcDistanceRolloffModel;

    invoke-virtual {v4}, Lcom/netease/lava/nertc/sdk/audio/NERtcDistanceRolloffModel;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v3, Lcom/netease/lava/nertc/impl/lite/LiteHelper$1;->$SwitchMap$com$netease$lava$nertc$sdk$audio$NERtcDistanceRolloffModel:[I

    sget-object v4, Lcom/netease/lava/nertc/sdk/audio/NERtcDistanceRolloffModel;->kNERtcDistanceRolloffNone:Lcom/netease/lava/nertc/sdk/audio/NERtcDistanceRolloffModel;

    invoke-virtual {v4}, Lcom/netease/lava/nertc/sdk/audio/NERtcDistanceRolloffModel;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    .line 355
    :catch_9
    invoke-static {}, Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;->values()[Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/netease/lava/nertc/impl/lite/LiteHelper$1;->$SwitchMap$com$netease$lava$nertc$sdk$video$NERtcVideoStreamType:[I

    :try_start_a
    sget-object v3, Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;->kNERtcVideoStreamTypeSub:Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;

    invoke-virtual {v3}, Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v1, Lcom/netease/lava/nertc/impl/lite/LiteHelper$1;->$SwitchMap$com$netease$lava$nertc$sdk$video$NERtcVideoStreamType:[I

    sget-object v2, Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;->kNERtcVideoStreamTypeMain:Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;

    invoke-virtual {v2}, Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    return-void
.end method
