.class Lcom/netease/lava/nertc/impl/audio/NERtcAudioFrameObserverWrapper$NERtcAudioFrameAdapter;
.super Lcom/netease/lava/nertc/sdk/audio/NERtcAudioFrame;
.source "NERtcAudioFrameObserverWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lava/nertc/impl/audio/NERtcAudioFrameObserverWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NERtcAudioFrameAdapter"
.end annotation


# instance fields
.field private final core:Lcom/netease/yunxin/lite/model/LiteSDKAudioFrame;

.field private final format:Lcom/netease/lava/nertc/sdk/audio/NERtcAudioFormat;

.field final synthetic this$0:Lcom/netease/lava/nertc/impl/audio/NERtcAudioFrameObserverWrapper;


# direct methods
.method private constructor <init>(Lcom/netease/lava/nertc/impl/audio/NERtcAudioFrameObserverWrapper;Lcom/netease/yunxin/lite/model/LiteSDKAudioFrame;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            "this$0",
            "core"
        }
    .end annotation

    .line 66
    iput-object p1, p0, Lcom/netease/lava/nertc/impl/audio/NERtcAudioFrameObserverWrapper$NERtcAudioFrameAdapter;->this$0:Lcom/netease/lava/nertc/impl/audio/NERtcAudioFrameObserverWrapper;

    invoke-direct {p0}, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioFrame;-><init>()V

    .line 67
    iput-object p2, p0, Lcom/netease/lava/nertc/impl/audio/NERtcAudioFrameObserverWrapper$NERtcAudioFrameAdapter;->core:Lcom/netease/yunxin/lite/model/LiteSDKAudioFrame;

    .line 68
    invoke-static {p1, p2}, Lcom/netease/lava/nertc/impl/audio/NERtcAudioFrameObserverWrapper;->access$200(Lcom/netease/lava/nertc/impl/audio/NERtcAudioFrameObserverWrapper;Lcom/netease/yunxin/lite/model/LiteSDKAudioFrame;)Lcom/netease/lava/nertc/sdk/audio/NERtcAudioFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/lava/nertc/impl/audio/NERtcAudioFrameObserverWrapper$NERtcAudioFrameAdapter;->format:Lcom/netease/lava/nertc/sdk/audio/NERtcAudioFormat;

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/lava/nertc/impl/audio/NERtcAudioFrameObserverWrapper;Lcom/netease/yunxin/lite/model/LiteSDKAudioFrame;Lcom/netease/lava/nertc/impl/audio/NERtcAudioFrameObserverWrapper$1;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/netease/lava/nertc/impl/audio/NERtcAudioFrameObserverWrapper$NERtcAudioFrameAdapter;-><init>(Lcom/netease/lava/nertc/impl/audio/NERtcAudioFrameObserverWrapper;Lcom/netease/yunxin/lite/model/LiteSDKAudioFrame;)V

    return-void
.end method


# virtual methods
.method public getData()Ljava/nio/ByteBuffer;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/audio/NERtcAudioFrameObserverWrapper$NERtcAudioFrameAdapter;->core:Lcom/netease/yunxin/lite/model/LiteSDKAudioFrame;

    iget-object v0, v0, Lcom/netease/yunxin/lite/model/LiteSDKAudioFrame;->data:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getFormat()Lcom/netease/lava/nertc/sdk/audio/NERtcAudioFormat;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/audio/NERtcAudioFrameObserverWrapper$NERtcAudioFrameAdapter;->format:Lcom/netease/lava/nertc/sdk/audio/NERtcAudioFormat;

    return-object v0
.end method
