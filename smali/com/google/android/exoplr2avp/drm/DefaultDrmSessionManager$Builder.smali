.class public final Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$Builder;
.super Ljava/lang/Object;
.source "DefaultDrmSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private exoMediaDrmProvider:Lcom/google/android/exoplr2avp/drm/ExoMediaDrm$Provider;

.field private final keyRequestParameters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private loadErrorHandlingPolicy:Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;

.field private multiSession:Z

.field private playClearSamplesWithoutKeys:Z

.field private sessionKeepaliveMs:J

.field private useDrmSessionsForClearContentTrackTypes:[I

.field private uuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$Builder;->keyRequestParameters:Ljava/util/HashMap;

    .line 104
    sget-object v0, Lcom/google/android/exoplr2avp/C;->WIDEVINE_UUID:Ljava/util/UUID;

    iput-object v0, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$Builder;->uuid:Ljava/util/UUID;

    .line 105
    sget-object v0, Lcom/google/android/exoplr2avp/drm/FrameworkMediaDrm;->DEFAULT_PROVIDER:Lcom/google/android/exoplr2avp/drm/ExoMediaDrm$Provider;

    iput-object v0, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$Builder;->exoMediaDrmProvider:Lcom/google/android/exoplr2avp/drm/ExoMediaDrm$Provider;

    .line 106
    new-instance v0, Lcom/google/android/exoplr2avp/upstream/DefaultLoadErrorHandlingPolicy;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/upstream/DefaultLoadErrorHandlingPolicy;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$Builder;->loadErrorHandlingPolicy:Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 107
    iput-object v0, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$Builder;->useDrmSessionsForClearContentTrackTypes:[I

    const-wide/32 v0, 0x493e0

    .line 108
    iput-wide v0, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$Builder;->sessionKeepaliveMs:J

    return-void
.end method


# virtual methods
.method public build(Lcom/google/android/exoplr2avp/drm/MediaDrmCallback;)Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;
    .locals 13

    .line 229
    new-instance v12, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$Builder;->uuid:Ljava/util/UUID;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$Builder;->exoMediaDrmProvider:Lcom/google/android/exoplr2avp/drm/ExoMediaDrm$Provider;

    iget-object v4, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$Builder;->keyRequestParameters:Ljava/util/HashMap;

    iget-boolean v5, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$Builder;->multiSession:Z

    iget-object v6, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$Builder;->useDrmSessionsForClearContentTrackTypes:[I

    iget-boolean v7, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$Builder;->playClearSamplesWithoutKeys:Z

    iget-object v8, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$Builder;->loadErrorHandlingPolicy:Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;

    iget-wide v9, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$Builder;->sessionKeepaliveMs:J

    const/4 v11, 0x0

    move-object v0, v12

    move-object v3, p1

    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;-><init>(Ljava/util/UUID;Lcom/google/android/exoplr2avp/drm/ExoMediaDrm$Provider;Lcom/google/android/exoplr2avp/drm/MediaDrmCallback;Ljava/util/HashMap;Z[IZLcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;JLcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$1;)V

    return-object v12
.end method

.method public setKeyRequestParameters(Ljava/util/Map;)Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$Builder;"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$Builder;->keyRequestParameters:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    if-eqz p1, :cond_0

    .line 124
    iget-object v0, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$Builder;->keyRequestParameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    return-object p0
.end method

.method public setLoadErrorHandlingPolicy(Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;)Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$Builder;
    .locals 0

    .line 202
    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;

    iput-object p1, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$Builder;->loadErrorHandlingPolicy:Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;

    return-object p0
.end method

.method public setMultiSession(Z)Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$Builder;
    .locals 0

    .line 154
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$Builder;->multiSession:Z

    return-object p0
.end method

.method public setPlayClearSamplesWithoutKeys(Z)Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$Builder;
    .locals 0

    .line 191
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$Builder;->playClearSamplesWithoutKeys:Z

    return-object p0
.end method

.method public setSessionKeepaliveMs(J)Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$Builder;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_1

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 222
    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkArgument(Z)V

    .line 223
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$Builder;->sessionKeepaliveMs:J

    return-object p0
.end method

.method public varargs setUseDrmSessionsForClearContent([I)Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$Builder;
    .locals 6

    .line 174
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget v3, p1, v2

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v3, v4, :cond_1

    if-ne v3, v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    .line 175
    :cond_1
    :goto_1
    invoke-static {v5}, Lcom/google/android/exoplr2avp/util/Assertions;->checkArgument(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 178
    :cond_2
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$Builder;->useDrmSessionsForClearContentTrackTypes:[I

    return-object p0
.end method

.method public setUuidAndExoMediaDrmProvider(Ljava/util/UUID;Lcom/google/android/exoplr2avp/drm/ExoMediaDrm$Provider;)Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$Builder;
    .locals 0

    .line 138
    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/UUID;

    iput-object p1, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$Builder;->uuid:Ljava/util/UUID;

    .line 139
    invoke-static {p2}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/drm/ExoMediaDrm$Provider;

    iput-object p1, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$Builder;->exoMediaDrmProvider:Lcom/google/android/exoplr2avp/drm/ExoMediaDrm$Provider;

    return-object p0
.end method
