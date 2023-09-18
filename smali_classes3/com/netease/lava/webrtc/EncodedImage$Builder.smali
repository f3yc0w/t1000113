.class public Lcom/netease/lava/webrtc/EncodedImage$Builder;
.super Ljava/lang/Object;
.source "EncodedImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lava/webrtc/EncodedImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private buffer:Ljava/nio/ByteBuffer;

.field private captureTimeNs:J

.field private completeFrame:Z

.field private encodedHeight:I

.field private encodedWidth:I

.field private frameType:Lcom/netease/lava/webrtc/EncodedImage$FrameType;

.field private qp:Ljava/lang/Integer;

.field private rotation:I

.field private targetEncBps:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/lava/webrtc/EncodedImage$1;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/netease/lava/webrtc/EncodedImage$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public createEncodedImage()Lcom/netease/lava/webrtc/EncodedImage;
    .locals 14

    .line 143
    new-instance v13, Lcom/netease/lava/webrtc/EncodedImage;

    iget-object v1, p0, Lcom/netease/lava/webrtc/EncodedImage$Builder;->buffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/netease/lava/webrtc/EncodedImage$Builder;->encodedWidth:I

    iget v3, p0, Lcom/netease/lava/webrtc/EncodedImage$Builder;->encodedHeight:I

    iget-wide v4, p0, Lcom/netease/lava/webrtc/EncodedImage$Builder;->captureTimeNs:J

    iget-object v6, p0, Lcom/netease/lava/webrtc/EncodedImage$Builder;->frameType:Lcom/netease/lava/webrtc/EncodedImage$FrameType;

    iget v7, p0, Lcom/netease/lava/webrtc/EncodedImage$Builder;->rotation:I

    iget-boolean v8, p0, Lcom/netease/lava/webrtc/EncodedImage$Builder;->completeFrame:Z

    iget-object v9, p0, Lcom/netease/lava/webrtc/EncodedImage$Builder;->qp:Ljava/lang/Integer;

    iget-wide v10, p0, Lcom/netease/lava/webrtc/EncodedImage$Builder;->targetEncBps:J

    const/4 v12, 0x0

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lcom/netease/lava/webrtc/EncodedImage;-><init>(Ljava/nio/ByteBuffer;IIJLcom/netease/lava/webrtc/EncodedImage$FrameType;IZLjava/lang/Integer;JLcom/netease/lava/webrtc/EncodedImage$1;)V

    return-object v13
.end method

.method public setBuffer(Ljava/nio/ByteBuffer;)Lcom/netease/lava/webrtc/EncodedImage$Builder;
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/netease/lava/webrtc/EncodedImage$Builder;->buffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public setCaptureTimeMs(J)Lcom/netease/lava/webrtc/EncodedImage$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 108
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/netease/lava/webrtc/EncodedImage$Builder;->captureTimeNs:J

    return-object p0
.end method

.method public setCaptureTimeNs(J)Lcom/netease/lava/webrtc/EncodedImage$Builder;
    .locals 0

    .line 113
    iput-wide p1, p0, Lcom/netease/lava/webrtc/EncodedImage$Builder;->captureTimeNs:J

    return-object p0
.end method

.method public setCompleteFrame(Z)Lcom/netease/lava/webrtc/EncodedImage$Builder;
    .locals 0

    .line 128
    iput-boolean p1, p0, Lcom/netease/lava/webrtc/EncodedImage$Builder;->completeFrame:Z

    return-object p0
.end method

.method public setEncodedHeight(I)Lcom/netease/lava/webrtc/EncodedImage$Builder;
    .locals 0

    .line 102
    iput p1, p0, Lcom/netease/lava/webrtc/EncodedImage$Builder;->encodedHeight:I

    return-object p0
.end method

.method public setEncodedWidth(I)Lcom/netease/lava/webrtc/EncodedImage$Builder;
    .locals 0

    .line 97
    iput p1, p0, Lcom/netease/lava/webrtc/EncodedImage$Builder;->encodedWidth:I

    return-object p0
.end method

.method public setFrameType(Lcom/netease/lava/webrtc/EncodedImage$FrameType;)Lcom/netease/lava/webrtc/EncodedImage$Builder;
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/netease/lava/webrtc/EncodedImage$Builder;->frameType:Lcom/netease/lava/webrtc/EncodedImage$FrameType;

    return-object p0
.end method

.method public setQp(Ljava/lang/Integer;)Lcom/netease/lava/webrtc/EncodedImage$Builder;
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/netease/lava/webrtc/EncodedImage$Builder;->qp:Ljava/lang/Integer;

    return-object p0
.end method

.method public setRotation(I)Lcom/netease/lava/webrtc/EncodedImage$Builder;
    .locals 0

    .line 123
    iput p1, p0, Lcom/netease/lava/webrtc/EncodedImage$Builder;->rotation:I

    return-object p0
.end method

.method public setTargetEncBps(J)Lcom/netease/lava/webrtc/EncodedImage$Builder;
    .locals 0

    .line 138
    iput-wide p1, p0, Lcom/netease/lava/webrtc/EncodedImage$Builder;->targetEncBps:J

    return-object p0
.end method
