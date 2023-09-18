.class public Lcom/netease/lava/webrtc/VideoDecoder$Settings;
.super Ljava/lang/Object;
.source "VideoDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lava/webrtc/VideoDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Settings"
.end annotation


# instance fields
.field public final height:I

.field public final numberOfCores:I

.field public final syncMode:Z

.field public final width:I


# direct methods
.method public constructor <init>(IIIZ)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/netease/lava/webrtc/VideoDecoder$Settings;->numberOfCores:I

    .line 28
    iput p2, p0, Lcom/netease/lava/webrtc/VideoDecoder$Settings;->width:I

    .line 29
    iput p3, p0, Lcom/netease/lava/webrtc/VideoDecoder$Settings;->height:I

    .line 30
    iput-boolean p4, p0, Lcom/netease/lava/webrtc/VideoDecoder$Settings;->syncMode:Z

    return-void
.end method
