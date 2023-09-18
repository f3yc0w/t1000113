.class Lcom/netease/lava/webrtc/AndroidVideoDecoder$FrameInfo;
.super Ljava/lang/Object;
.source "AndroidVideoDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lava/webrtc/AndroidVideoDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FrameInfo"
.end annotation


# instance fields
.field final decodeStartTimeMs:J

.field final rotation:I


# direct methods
.method constructor <init>(JI)V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-wide p1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder$FrameInfo;->decodeStartTimeMs:J

    .line 78
    iput p3, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder$FrameInfo;->rotation:I

    return-void
.end method
