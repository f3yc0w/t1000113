.class public Lcom/netease/lava/nertc/sdk/predecoder/NERtcPreDecodeFrameInfo;
.super Ljava/lang/Object;
.source "NERtcPreDecodeFrameInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/lava/nertc/sdk/predecoder/NERtcPreDecodeFrameInfo$PreDecodeAudioInfo;,
        Lcom/netease/lava/nertc/sdk/predecoder/NERtcPreDecodeFrameInfo$PreDecodeVideoInfo;
    }
.end annotation


# instance fields
.field public audioInfo:Lcom/netease/lava/nertc/sdk/predecoder/NERtcPreDecodeFrameInfo$PreDecodeAudioInfo;

.field public codec:Ljava/lang/String;

.field public data:Ljava/nio/ByteBuffer;

.field public isMainStream:Z

.field public length:I

.field public mediaType:I

.field public timestampMs:J

.field public uid:J

.field public videoInfo:Lcom/netease/lava/nertc/sdk/predecoder/NERtcPreDecodeFrameInfo$PreDecodeVideoInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 15
    iput v0, p0, Lcom/netease/lava/nertc/sdk/predecoder/NERtcPreDecodeFrameInfo;->mediaType:I

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lcom/netease/lava/nertc/sdk/predecoder/NERtcPreDecodeFrameInfo;->isMainStream:Z

    .line 50
    new-instance v0, Lcom/netease/lava/nertc/sdk/predecoder/NERtcPreDecodeFrameInfo$PreDecodeVideoInfo;

    invoke-direct {v0}, Lcom/netease/lava/nertc/sdk/predecoder/NERtcPreDecodeFrameInfo$PreDecodeVideoInfo;-><init>()V

    iput-object v0, p0, Lcom/netease/lava/nertc/sdk/predecoder/NERtcPreDecodeFrameInfo;->videoInfo:Lcom/netease/lava/nertc/sdk/predecoder/NERtcPreDecodeFrameInfo$PreDecodeVideoInfo;

    .line 55
    new-instance v0, Lcom/netease/lava/nertc/sdk/predecoder/NERtcPreDecodeFrameInfo$PreDecodeAudioInfo;

    invoke-direct {v0}, Lcom/netease/lava/nertc/sdk/predecoder/NERtcPreDecodeFrameInfo$PreDecodeAudioInfo;-><init>()V

    iput-object v0, p0, Lcom/netease/lava/nertc/sdk/predecoder/NERtcPreDecodeFrameInfo;->audioInfo:Lcom/netease/lava/nertc/sdk/predecoder/NERtcPreDecodeFrameInfo$PreDecodeAudioInfo;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NERtcPreDecodeFrameInfo{, uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/netease/lava/nertc/sdk/predecoder/NERtcPreDecodeFrameInfo;->uid:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", timestampMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/netease/lava/nertc/sdk/predecoder/NERtcPreDecodeFrameInfo;->timestampMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/predecoder/NERtcPreDecodeFrameInfo;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/lava/nertc/sdk/predecoder/NERtcPreDecodeFrameInfo;->length:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", codec=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/predecoder/NERtcPreDecodeFrameInfo;->codec:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", isMainStream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netease/lava/nertc/sdk/predecoder/NERtcPreDecodeFrameInfo;->isMainStream:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", videoInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/predecoder/NERtcPreDecodeFrameInfo;->videoInfo:Lcom/netease/lava/nertc/sdk/predecoder/NERtcPreDecodeFrameInfo$PreDecodeVideoInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", audioInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/predecoder/NERtcPreDecodeFrameInfo;->audioInfo:Lcom/netease/lava/nertc/sdk/predecoder/NERtcPreDecodeFrameInfo$PreDecodeAudioInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
