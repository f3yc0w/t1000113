.class public Lcom/netease/lava/webrtc/FaceInfo;
.super Ljava/lang/Object;
.source "FaceInfo.java"


# instance fields
.field public final height:F

.field public final id:I

.field public final width:F

.field public final x:F

.field public final y:F


# direct methods
.method public constructor <init>(IFFFF)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/netease/lava/webrtc/FaceInfo;->id:I

    .line 26
    iput p2, p0, Lcom/netease/lava/webrtc/FaceInfo;->x:F

    .line 27
    iput p3, p0, Lcom/netease/lava/webrtc/FaceInfo;->y:F

    .line 28
    iput p4, p0, Lcom/netease/lava/webrtc/FaceInfo;->width:F

    .line 29
    iput p5, p0, Lcom/netease/lava/webrtc/FaceInfo;->height:F

    return-void
.end method

.method public constructor <init>(Lcom/netease/lava/webrtc/FaceInfo;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iget v0, p1, Lcom/netease/lava/webrtc/FaceInfo;->id:I

    iput v0, p0, Lcom/netease/lava/webrtc/FaceInfo;->id:I

    .line 35
    iget v0, p1, Lcom/netease/lava/webrtc/FaceInfo;->x:F

    iput v0, p0, Lcom/netease/lava/webrtc/FaceInfo;->x:F

    .line 36
    iget v0, p1, Lcom/netease/lava/webrtc/FaceInfo;->y:F

    iput v0, p0, Lcom/netease/lava/webrtc/FaceInfo;->y:F

    .line 37
    iget v0, p1, Lcom/netease/lava/webrtc/FaceInfo;->width:F

    iput v0, p0, Lcom/netease/lava/webrtc/FaceInfo;->width:F

    .line 38
    iget p1, p1, Lcom/netease/lava/webrtc/FaceInfo;->height:F

    iput p1, p0, Lcom/netease/lava/webrtc/FaceInfo;->height:F

    return-void
.end method
