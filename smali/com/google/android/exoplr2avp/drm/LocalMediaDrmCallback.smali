.class public final Lcom/google/android/exoplr2avp/drm/LocalMediaDrmCallback;
.super Ljava/lang/Object;
.source "LocalMediaDrmCallback.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/drm/MediaDrmCallback;


# instance fields
.field private final keyResponse:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/google/android/exoplr2avp/drm/LocalMediaDrmCallback;->keyResponse:[B

    return-void
.end method


# virtual methods
.method public executeKeyRequest(Ljava/util/UUID;Lcom/google/android/exoplr2avp/drm/ExoMediaDrm$KeyRequest;)[B
    .locals 0

    .line 47
    iget-object p1, p0, Lcom/google/android/exoplr2avp/drm/LocalMediaDrmCallback;->keyResponse:[B

    return-object p1
.end method

.method public executeProvisionRequest(Ljava/util/UUID;Lcom/google/android/exoplr2avp/drm/ExoMediaDrm$ProvisionRequest;)[B
    .locals 0

    .line 42
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
