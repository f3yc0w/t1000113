.class public Lcom/netease/yunxin/lite/model/LiteSDKPreDecodeFrameInfo;
.super Ljava/lang/Object;
.source "LiteSDKPreDecodeFrameInfo.java"


# instance fields
.field public codec:Ljava/lang/String;

.field public data:Ljava/nio/ByteBuffer;

.field public height:I

.field public isKeyFrame:Z

.field public isMainStream:Z

.field public length:I

.field public mediaType:I

.field public perTimeMs:J

.field public timestampMs:J

.field public toc:I

.field public uid:J

.field public width:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 18
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKPreDecodeFrameInfo;->mediaType:I

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKPreDecodeFrameInfo;->isMainStream:Z

    return-void
.end method


# virtual methods
.method public setAudioInfo(JI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "perTimeMs",
            "toc"
        }
    .end annotation

    .line 91
    iput-wide p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKPreDecodeFrameInfo;->perTimeMs:J

    .line 92
    iput p3, p0, Lcom/netease/yunxin/lite/model/LiteSDKPreDecodeFrameInfo;->toc:I

    return-void
.end method

.method public setCodec(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "codec"
        }
    .end annotation

    .line 82
    iput-object p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKPreDecodeFrameInfo;->codec:Ljava/lang/String;

    return-void
.end method

.method public setData(Ljava/nio/ByteBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKPreDecodeFrameInfo;->data:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public setLength(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "length"
        }
    .end annotation

    .line 78
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKPreDecodeFrameInfo;->length:I

    return-void
.end method

.method public setMainStream(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mainStream"
        }
    .end annotation

    .line 86
    iput-boolean p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKPreDecodeFrameInfo;->isMainStream:Z

    return-void
.end method

.method public setMediaType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mediaType"
        }
    .end annotation

    .line 62
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKPreDecodeFrameInfo;->mediaType:I

    return-void
.end method

.method public setTimestampMs(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timestampMs"
        }
    .end annotation

    .line 70
    iput-wide p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKPreDecodeFrameInfo;->timestampMs:J

    return-void
.end method

.method public setUid(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    .line 66
    iput-wide p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKPreDecodeFrameInfo;->uid:J

    return-void
.end method

.method public setVideoInfo(IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "isKeyFrame"
        }
    .end annotation

    .line 98
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKPreDecodeFrameInfo;->width:I

    .line 99
    iput p2, p0, Lcom/netease/yunxin/lite/model/LiteSDKPreDecodeFrameInfo;->height:I

    .line 100
    iput-boolean p3, p0, Lcom/netease/yunxin/lite/model/LiteSDKPreDecodeFrameInfo;->isKeyFrame:Z

    return-void
.end method
