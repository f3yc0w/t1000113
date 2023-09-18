.class public Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;
.super Ljava/lang/Object;
.source "NERtcVideoFrame.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;
    }
.end annotation


# instance fields
.field public data:[B

.field public format:Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;

.field public height:I

.field public rotation:I

.field public strideU:I

.field public strideV:I

.field public strideY:I

.field public textureId:I

.field public timeStamp:J

.field public transformMatrix:[F

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
