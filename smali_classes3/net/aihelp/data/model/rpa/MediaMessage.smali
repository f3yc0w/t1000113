.class public Lnet/aihelp/data/model/rpa/MediaMessage;
.super Lnet/aihelp/data/model/rpa/RPAMessage;
.source "MediaMessage.java"


# instance fields
.field private imageSize:[I

.field private isMessageFromServer:Z

.field private videoThumbnail:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lnet/aihelp/data/model/rpa/RPAMessage;-><init>(I)V

    .line 23
    invoke-virtual {p0, p2}, Lnet/aihelp/data/model/rpa/MediaMessage;->setContent(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getImageSize()[I
    .locals 1

    .line 44
    iget-object v0, p0, Lnet/aihelp/data/model/rpa/MediaMessage;->imageSize:[I

    return-object v0
.end method

.method public getVideoThumbnail()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lnet/aihelp/data/model/rpa/MediaMessage;->videoThumbnail:Ljava/lang/String;

    return-object v0
.end method

.method public isMessageFromServer()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lnet/aihelp/data/model/rpa/MediaMessage;->isMessageFromServer:Z

    return v0
.end method

.method public prepareVideoThumbnail()V
    .locals 1

    .line 52
    invoke-virtual {p0}, Lnet/aihelp/data/model/rpa/MediaMessage;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/aihelp/utils/MediaUtils;->getImageForVideoSync(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-virtual {p0, v0}, Lnet/aihelp/data/model/rpa/MediaMessage;->setVideoThumbnail(Ljava/lang/String;)V

    return-void
.end method

.method public setImageSize([I)V
    .locals 0

    .line 48
    iput-object p1, p0, Lnet/aihelp/data/model/rpa/MediaMessage;->imageSize:[I

    return-void
.end method

.method public setMessageFromServer(Z)V
    .locals 0

    .line 31
    iput-boolean p1, p0, Lnet/aihelp/data/model/rpa/MediaMessage;->isMessageFromServer:Z

    return-void
.end method

.method public setVideoThumbnail(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lnet/aihelp/data/model/rpa/MediaMessage;->videoThumbnail:Ljava/lang/String;

    .line 40
    invoke-static {p1}, Lnet/aihelp/ui/helper/BitmapHelper;->computeSize(Ljava/lang/String;)[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/aihelp/data/model/rpa/MediaMessage;->setImageSize([I)V

    return-void
.end method
