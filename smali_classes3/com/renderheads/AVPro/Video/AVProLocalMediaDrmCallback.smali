.class public Lcom/renderheads/AVPro/Video/AVProLocalMediaDrmCallback;
.super Ljava/lang/Object;
.source "AVProLocalMediaDrmCallback.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/drm/MediaDrmCallback;


# instance fields
.field private keyResponse:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyResponse"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/renderheads/AVPro/Video/AVProLocalMediaDrmCallback;->keyResponse:[B

    return-void
.end method


# virtual methods
.method public executeKeyRequest(Ljava/util/UUID;Lcom/google/android/exoplr2avp/drm/ExoMediaDrm$KeyRequest;)[B
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uuid",
            "request"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 2
    iget-object p1, p0, Lcom/renderheads/AVPro/Video/AVProLocalMediaDrmCallback;->keyResponse:[B

    return-object p1
.end method

.method public executeProvisionRequest(Ljava/util/UUID;Lcom/google/android/exoplr2avp/drm/ExoMediaDrm$ProvisionRequest;)[B
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uuid",
            "request"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
