.class synthetic Lcom/netease/lava/webrtc/RendererCommon$1;
.super Ljava/lang/Object;
.source "RendererCommon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lava/webrtc/RendererCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$netease$lava$webrtc$RendererCommon$ScalingType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 241
    invoke-static {}, Lcom/netease/lava/webrtc/RendererCommon$ScalingType;->values()[Lcom/netease/lava/webrtc/RendererCommon$ScalingType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/netease/lava/webrtc/RendererCommon$1;->$SwitchMap$com$netease$lava$webrtc$RendererCommon$ScalingType:[I

    :try_start_0
    sget-object v1, Lcom/netease/lava/webrtc/RendererCommon$ScalingType;->SCALE_ASPECT_FIT:Lcom/netease/lava/webrtc/RendererCommon$ScalingType;

    invoke-virtual {v1}, Lcom/netease/lava/webrtc/RendererCommon$ScalingType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/netease/lava/webrtc/RendererCommon$1;->$SwitchMap$com$netease$lava$webrtc$RendererCommon$ScalingType:[I

    sget-object v1, Lcom/netease/lava/webrtc/RendererCommon$ScalingType;->SCALE_ASPECT_FILL:Lcom/netease/lava/webrtc/RendererCommon$ScalingType;

    invoke-virtual {v1}, Lcom/netease/lava/webrtc/RendererCommon$ScalingType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/netease/lava/webrtc/RendererCommon$1;->$SwitchMap$com$netease$lava$webrtc$RendererCommon$ScalingType:[I

    sget-object v1, Lcom/netease/lava/webrtc/RendererCommon$ScalingType;->SCALE_ASPECT_BALANCED:Lcom/netease/lava/webrtc/RendererCommon$ScalingType;

    invoke-virtual {v1}, Lcom/netease/lava/webrtc/RendererCommon$ScalingType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
