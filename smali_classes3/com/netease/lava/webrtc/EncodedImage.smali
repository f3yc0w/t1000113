.class public Lcom/netease/lava/webrtc/EncodedImage;
.super Ljava/lang/Object;
.source "EncodedImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/lava/webrtc/EncodedImage$Builder;,
        Lcom/netease/lava/webrtc/EncodedImage$FrameType;
    }
.end annotation


# instance fields
.field public final buffer:Ljava/nio/ByteBuffer;

.field public final captureTimeMs:J

.field public final captureTimeNs:J

.field public final completeFrame:Z

.field public final encodedHeight:I

.field public final encodedWidth:I

.field public final frameType:Lcom/netease/lava/webrtc/EncodedImage$FrameType;

.field public final qp:Ljava/lang/Integer;

.field public final rotation:I

.field public final targetEncBps:J


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;IIJLcom/netease/lava/webrtc/EncodedImage$FrameType;IZLjava/lang/Integer;J)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/netease/lava/webrtc/EncodedImage;->buffer:Ljava/nio/ByteBuffer;

    .line 63
    iput p2, p0, Lcom/netease/lava/webrtc/EncodedImage;->encodedWidth:I

    .line 64
    iput p3, p0, Lcom/netease/lava/webrtc/EncodedImage;->encodedHeight:I

    .line 65
    sget-object p1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, p4, p5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/netease/lava/webrtc/EncodedImage;->captureTimeMs:J

    .line 66
    iput-wide p4, p0, Lcom/netease/lava/webrtc/EncodedImage;->captureTimeNs:J

    .line 67
    iput-object p6, p0, Lcom/netease/lava/webrtc/EncodedImage;->frameType:Lcom/netease/lava/webrtc/EncodedImage$FrameType;

    .line 68
    iput p7, p0, Lcom/netease/lava/webrtc/EncodedImage;->rotation:I

    .line 69
    iput-boolean p8, p0, Lcom/netease/lava/webrtc/EncodedImage;->completeFrame:Z

    .line 70
    iput-object p9, p0, Lcom/netease/lava/webrtc/EncodedImage;->qp:Ljava/lang/Integer;

    .line 71
    iput-wide p10, p0, Lcom/netease/lava/webrtc/EncodedImage;->targetEncBps:J

    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/ByteBuffer;IIJLcom/netease/lava/webrtc/EncodedImage$FrameType;IZLjava/lang/Integer;JLcom/netease/lava/webrtc/EncodedImage$1;)V
    .locals 0

    .line 20
    invoke-direct/range {p0 .. p11}, Lcom/netease/lava/webrtc/EncodedImage;-><init>(Ljava/nio/ByteBuffer;IIJLcom/netease/lava/webrtc/EncodedImage$FrameType;IZLjava/lang/Integer;J)V

    return-void
.end method

.method public static builder()Lcom/netease/lava/webrtc/EncodedImage$Builder;
    .locals 2

    .line 75
    new-instance v0, Lcom/netease/lava/webrtc/EncodedImage$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netease/lava/webrtc/EncodedImage$Builder;-><init>(Lcom/netease/lava/webrtc/EncodedImage$1;)V

    return-object v0
.end method
