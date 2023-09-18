.class public final Lcom/google/android/exoplr2avp/drm/ErrorStateDrmSession;
.super Ljava/lang/Object;
.source "ErrorStateDrmSession.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/drm/DrmSession;


# instance fields
.field private final error:Lcom/google/android/exoplr2avp/drm/DrmSession$DrmSessionException;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/drm/DrmSession$DrmSessionException;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/drm/DrmSession$DrmSessionException;

    iput-object p1, p0, Lcom/google/android/exoplr2avp/drm/ErrorStateDrmSession;->error:Lcom/google/android/exoplr2avp/drm/DrmSession$DrmSessionException;

    return-void
.end method


# virtual methods
.method public acquire(Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;)V
    .locals 0

    return-void
.end method

.method public getCryptoConfig()Lcom/google/android/exoplr2avp/decoder/CryptoConfig;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getError()Lcom/google/android/exoplr2avp/drm/DrmSession$DrmSessionException;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/google/android/exoplr2avp/drm/ErrorStateDrmSession;->error:Lcom/google/android/exoplr2avp/drm/DrmSession$DrmSessionException;

    return-object v0
.end method

.method public getOfflineLicenseKeySetId()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getSchemeUuid()Ljava/util/UUID;
    .locals 1

    .line 52
    sget-object v0, Lcom/google/android/exoplr2avp/C;->UUID_NIL:Ljava/util/UUID;

    return-object v0
.end method

.method public getState()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public playClearSamplesWithoutKeys()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public queryKeyStatus()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public release(Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;)V
    .locals 0

    return-void
.end method

.method public requiresSecureDecoder(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
