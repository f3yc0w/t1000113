.class public Lcom/netease/lava/webrtc/VideoEncoder$EncodeInfo;
.super Ljava/lang/Object;
.source "VideoEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lava/webrtc/VideoEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EncodeInfo"
.end annotation


# instance fields
.field public final frameTypes:[Lcom/netease/lava/webrtc/EncodedImage$FrameType;


# direct methods
.method public constructor <init>([Lcom/netease/lava/webrtc/EncodedImage$FrameType;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/netease/lava/webrtc/VideoEncoder$EncodeInfo;->frameTypes:[Lcom/netease/lava/webrtc/EncodedImage$FrameType;

    return-void
.end method
