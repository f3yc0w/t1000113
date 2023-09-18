.class public Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;
.super Ljava/lang/Object;
.source "DefaultDrmSessionManager.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/drm/DrmSessionManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$PreacquiredSessionReference;,
        Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$MediaDrmEventListener;,
        Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;,
        Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;,
        Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$MediaDrmHandler;,
        Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$Mode;,
        Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$MissingSchemeDataException;,
        Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_SESSION_KEEPALIVE_MS:J = 0x493e0L

.field public static final INITIAL_DRM_REQUEST_RETRY_COUNT:I = 0x3

.field public static final MODE_DOWNLOAD:I = 0x2

.field public static final MODE_PLAYBACK:I = 0x0

.field public static final MODE_QUERY:I = 0x1

.field public static final MODE_RELEASE:I = 0x3

.field public static final PLAYREADY_CUSTOM_DATA_KEY:Ljava/lang/String; = "PRCustomData"

.field private static final TAG:Ljava/lang/String; = "DefaultDrmSessionMgr"


# instance fields
.field private final callback:Lcom/google/android/exoplr2avp/drm/MediaDrmCallback;

.field private exoMediaDrm:Lcom/google/android/exoplr2avp/drm/ExoMediaDrm;

.field private final exoMediaDrmProvider:Lcom/google/android/exoplr2avp/drm/ExoMediaDrm$Provider;

.field private final keepaliveSessions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;",
            ">;"
        }
    .end annotation
.end field

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

.field private final loadErrorHandlingPolicy:Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;

.field volatile mediaDrmHandler:Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$MediaDrmHandler;

.field private mode:I

.field private final multiSession:Z

.field private noMultiSessionDrmSession:Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;

.field private offlineLicenseKeySetId:[B

.field private placeholderDrmSession:Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;

.field private final playClearSamplesWithoutKeys:Z

.field private playbackHandler:Landroid/os/Handler;

.field private playbackLooper:Landroid/os/Looper;

.field private playerId:Lcom/google/android/exoplr2avp/analytics/PlayerId;

.field private final preacquiredSessionReferences:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$PreacquiredSessionReference;",
            ">;"
        }
    .end annotation
.end field

.field private prepareCallsCount:I

.field private final provisioningManagerImpl:Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;

.field private final referenceCountListener:Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;

.field private final sessionKeepaliveMs:J

.field private final sessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;",
            ">;"
        }
    .end annotation
.end field

.field private final useDrmSessionsForClearContentTrackTypes:[I

.field private final uuid:Ljava/util/UUID;


# direct methods
.method private constructor <init>(Ljava/util/UUID;Lcom/google/android/exoplr2avp/drm/ExoMediaDrm$Provider;Lcom/google/android/exoplr2avp/drm/MediaDrmCallback;Ljava/util/HashMap;Z[IZLcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lcom/google/android/exoplr2avp/drm/ExoMediaDrm$Provider;",
            "Lcom/google/android/exoplr2avp/drm/MediaDrmCallback;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z[IZ",
            "Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;",
            "J)V"
        }
    .end annotation

    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 407
    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    sget-object v0, Lcom/google/android/exoplr2avp/C;->COMMON_PSSH_UUID:Ljava/util/UUID;

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Use C.CLEARKEY_UUID instead"

    invoke-static {v0, v1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 409
    iput-object p1, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->uuid:Ljava/util/UUID;

    .line 410
    iput-object p2, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->exoMediaDrmProvider:Lcom/google/android/exoplr2avp/drm/ExoMediaDrm$Provider;

    .line 411
    iput-object p3, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->callback:Lcom/google/android/exoplr2avp/drm/MediaDrmCallback;

    .line 412
    iput-object p4, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->keyRequestParameters:Ljava/util/HashMap;

    .line 413
    iput-boolean p5, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->multiSession:Z

    .line 414
    iput-object p6, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->useDrmSessionsForClearContentTrackTypes:[I

    .line 415
    iput-boolean p7, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->playClearSamplesWithoutKeys:Z

    .line 416
    iput-object p8, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->loadErrorHandlingPolicy:Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;

    .line 417
    new-instance p1, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;

    invoke-direct {p1, p0}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;-><init>(Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;)V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->provisioningManagerImpl:Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;

    .line 418
    new-instance p1, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;-><init>(Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$1;)V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->referenceCountListener:Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;

    const/4 p1, 0x0

    .line 419
    iput p1, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->mode:I

    .line 420
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->sessions:Ljava/util/List;

    .line 421
    invoke-static {}, Lcom/google/common/collect/Sets;->newIdentityHashSet()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->preacquiredSessionReferences:Ljava/util/Set;

    .line 422
    invoke-static {}, Lcom/google/common/collect/Sets;->newIdentityHashSet()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->keepaliveSessions:Ljava/util/Set;

    .line 423
    iput-wide p9, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->sessionKeepaliveMs:J

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/UUID;Lcom/google/android/exoplr2avp/drm/ExoMediaDrm$Provider;Lcom/google/android/exoplr2avp/drm/MediaDrmCallback;Ljava/util/HashMap;Z[IZLcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;JLcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$1;)V
    .locals 0

    .line 69
    invoke-direct/range {p0 .. p10}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;-><init>(Ljava/util/UUID;Lcom/google/android/exoplr2avp/drm/ExoMediaDrm$Provider;Lcom/google/android/exoplr2avp/drm/MediaDrmCallback;Ljava/util/HashMap;Z[IZLcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;J)V

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Lcom/google/android/exoplr2avp/drm/ExoMediaDrm;Lcom/google/android/exoplr2avp/drm/MediaDrmCallback;Ljava/util/HashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lcom/google/android/exoplr2avp/drm/ExoMediaDrm;",
            "Lcom/google/android/exoplr2avp/drm/MediaDrmCallback;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p4, :cond_0

    .line 333
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    :cond_0
    move-object v4, p4

    const/4 v5, 0x0

    const/4 v6, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 329
    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;-><init>(Ljava/util/UUID;Lcom/google/android/exoplr2avp/drm/ExoMediaDrm;Lcom/google/android/exoplr2avp/drm/MediaDrmCallback;Ljava/util/HashMap;ZI)V

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Lcom/google/android/exoplr2avp/drm/ExoMediaDrm;Lcom/google/android/exoplr2avp/drm/MediaDrmCallback;Ljava/util/HashMap;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lcom/google/android/exoplr2avp/drm/ExoMediaDrm;",
            "Lcom/google/android/exoplr2avp/drm/MediaDrmCallback;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p4, :cond_0

    .line 360
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    :cond_0
    move-object v4, p4

    const/4 v6, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p5

    .line 356
    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;-><init>(Ljava/util/UUID;Lcom/google/android/exoplr2avp/drm/ExoMediaDrm;Lcom/google/android/exoplr2avp/drm/MediaDrmCallback;Ljava/util/HashMap;ZI)V

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Lcom/google/android/exoplr2avp/drm/ExoMediaDrm;Lcom/google/android/exoplr2avp/drm/MediaDrmCallback;Ljava/util/HashMap;ZI)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lcom/google/android/exoplr2avp/drm/ExoMediaDrm;",
            "Lcom/google/android/exoplr2avp/drm/MediaDrmCallback;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZI)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 385
    new-instance v2, Lcom/google/android/exoplr2avp/drm/ExoMediaDrm$AppManagedProvider;

    move-object v0, p2

    invoke-direct {v2, p2}, Lcom/google/android/exoplr2avp/drm/ExoMediaDrm$AppManagedProvider;-><init>(Lcom/google/android/exoplr2avp/drm/ExoMediaDrm;)V

    if-nez p4, :cond_0

    .line 389
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, p4

    :goto_0
    const/4 v0, 0x0

    new-array v6, v0, [I

    const/4 v7, 0x0

    new-instance v8, Lcom/google/android/exoplr2avp/upstream/DefaultLoadErrorHandlingPolicy;

    move/from16 v0, p6

    invoke-direct {v8, v0}, Lcom/google/android/exoplr2avp/upstream/DefaultLoadErrorHandlingPolicy;-><init>(I)V

    const-wide/32 v9, 0x493e0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move/from16 v5, p5

    .line 385
    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;-><init>(Ljava/util/UUID;Lcom/google/android/exoplr2avp/drm/ExoMediaDrm$Provider;Lcom/google/android/exoplr2avp/drm/MediaDrmCallback;Ljava/util/HashMap;Z[IZLcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;J)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;)Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->noMultiSessionDrmSession:Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;)Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->noMultiSessionDrmSession:Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;)Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->provisioningManagerImpl:Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->maybeReleaseMediaDrm()V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;)Ljava/util/Set;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->preacquiredSessionReferences:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;)Landroid/os/Looper;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->playbackLooper:Landroid/os/Looper;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;Landroid/os/Looper;Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplr2avp/Format;Z)Lcom/google/android/exoplr2avp/drm/DrmSession;
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->acquireSession(Landroid/os/Looper;Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplr2avp/Format;Z)Lcom/google/android/exoplr2avp/drm/DrmSession;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;)Ljava/util/List;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->sessions:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;)J
    .locals 2

    .line 69
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->sessionKeepaliveMs:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;)Ljava/util/Set;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->keepaliveSessions:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$700(Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;)Landroid/os/Handler;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->playbackHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$800(Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;)I
    .locals 0

    .line 69
    iget p0, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->prepareCallsCount:I

    return p0
.end method

.method static synthetic access$900(Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;)Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->placeholderDrmSession:Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;

    return-object p0
.end method

.method static synthetic access$902(Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;)Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->placeholderDrmSession:Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;

    return-object p1
.end method

.method private acquireSession(Landroid/os/Looper;Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplr2avp/Format;Z)Lcom/google/android/exoplr2avp/drm/DrmSession;
    .locals 4

    .line 533
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->maybeCreateMediaDrmHandler(Landroid/os/Looper;)V

    .line 535
    iget-object p1, p3, Lcom/google/android/exoplr2avp/Format;->drmInitData:Lcom/google/android/exoplr2avp/drm/DrmInitData;

    if-nez p1, :cond_0

    .line 537
    iget-object p1, p3, Lcom/google/android/exoplr2avp/Format;->sampleMimeType:Ljava/lang/String;

    .line 538
    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result p1

    .line 537
    invoke-direct {p0, p1, p4}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->maybeAcquirePlaceholderSession(IZ)Lcom/google/android/exoplr2avp/drm/DrmSession;

    move-result-object p1

    return-object p1

    .line 543
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->offlineLicenseKeySetId:[B

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_2

    .line 544
    iget-object p1, p3, Lcom/google/android/exoplr2avp/Format;->drmInitData:Lcom/google/android/exoplr2avp/drm/DrmInitData;

    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/drm/DrmInitData;

    iget-object p3, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->uuid:Ljava/util/UUID;

    invoke-static {p1, p3, v0}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->getSchemeDatas(Lcom/google/android/exoplr2avp/drm/DrmInitData;Ljava/util/UUID;Z)Ljava/util/List;

    move-result-object p1

    .line 545
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 546
    new-instance p1, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$MissingSchemeDataException;

    iget-object p3, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->uuid:Ljava/util/UUID;

    invoke-direct {p1, p3, v1}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$MissingSchemeDataException;-><init>(Ljava/util/UUID;Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$1;)V

    const-string p3, "DefaultDrmSessionMgr"

    const-string p4, "DRM error"

    .line 547
    invoke-static {p3, p4, p1}, Lcom/google/android/exoplr2avp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p2, :cond_1

    .line 549
    invoke-virtual {p2, p1}, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;->drmSessionManagerError(Ljava/lang/Exception;)V

    .line 551
    :cond_1
    new-instance p2, Lcom/google/android/exoplr2avp/drm/ErrorStateDrmSession;

    new-instance p3, Lcom/google/android/exoplr2avp/drm/DrmSession$DrmSessionException;

    const/16 p4, 0x1773

    invoke-direct {p3, p1, p4}, Lcom/google/android/exoplr2avp/drm/DrmSession$DrmSessionException;-><init>(Ljava/lang/Throwable;I)V

    invoke-direct {p2, p3}, Lcom/google/android/exoplr2avp/drm/ErrorStateDrmSession;-><init>(Lcom/google/android/exoplr2avp/drm/DrmSession$DrmSessionException;)V

    return-object p2

    :cond_2
    move-object p1, v1

    .line 557
    :cond_3
    iget-boolean p3, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->multiSession:Z

    if-nez p3, :cond_4

    .line 558
    iget-object v1, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->noMultiSessionDrmSession:Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;

    goto :goto_0

    .line 562
    :cond_4
    iget-object p3, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->sessions:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_5
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;

    .line 563
    iget-object v3, v2, Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;->schemeDatas:Ljava/util/List;

    invoke-static {v3, p1}, Lcom/google/android/exoplr2avp/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v1, v2

    :cond_6
    :goto_0
    if-nez v1, :cond_8

    .line 573
    invoke-direct {p0, p1, v0, p2, p4}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->createAndAcquireSessionWithRetry(Ljava/util/List;ZLcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;Z)Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;

    move-result-object v1

    .line 578
    iget-boolean p1, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->multiSession:Z

    if-nez p1, :cond_7

    .line 579
    iput-object v1, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->noMultiSessionDrmSession:Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;

    .line 581
    :cond_7
    iget-object p1, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->sessions:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 583
    :cond_8
    invoke-virtual {v1, p2}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;->acquire(Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;)V

    :goto_1
    return-object v1
.end method

.method private static acquisitionFailedIndicatingResourceShortage(Lcom/google/android/exoplr2avp/drm/DrmSession;)Z
    .locals 3

    .line 720
    invoke-interface {p0}, Lcom/google/android/exoplr2avp/drm/DrmSession;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget v0, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_1

    .line 722
    invoke-interface {p0}, Lcom/google/android/exoplr2avp/drm/DrmSession;->getError()Lcom/google/android/exoplr2avp/drm/DrmSession$DrmSessionException;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplr2avp/drm/DrmSession$DrmSessionException;

    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/drm/DrmSession$DrmSessionException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of p0, p0, Landroid/media/ResourceBusyException;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private canAcquireSession(Lcom/google/android/exoplr2avp/drm/DrmInitData;)Z
    .locals 4

    .line 633
    iget-object v0, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->offlineLicenseKeySetId:[B

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 637
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->uuid:Ljava/util/UUID;

    invoke-static {p1, v0, v1}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->getSchemeDatas(Lcom/google/android/exoplr2avp/drm/DrmInitData;Ljava/util/UUID;Z)Ljava/util/List;

    move-result-object v0

    .line 638
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 639
    iget v0, p1, Lcom/google/android/exoplr2avp/drm/DrmInitData;->schemeDataCount:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p1, v2}, Lcom/google/android/exoplr2avp/drm/DrmInitData;->get(I)Lcom/google/android/exoplr2avp/drm/DrmInitData$SchemeData;

    move-result-object v0

    sget-object v3, Lcom/google/android/exoplr2avp/C;->COMMON_PSSH_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v3}, Lcom/google/android/exoplr2avp/drm/DrmInitData$SchemeData;->matches(Ljava/util/UUID;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DrmInitData only contains common PSSH SchemeData. Assuming support for: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->uuid:Ljava/util/UUID;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "DefaultDrmSessionMgr"

    invoke-static {v3, v0}, Lcom/google/android/exoplr2avp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return v2

    .line 648
    :cond_2
    :goto_0
    iget-object p1, p1, Lcom/google/android/exoplr2avp/drm/DrmInitData;->schemeType:Ljava/lang/String;

    if-eqz p1, :cond_8

    const-string v0, "cenc"

    .line 649
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    const-string v0, "cbcs"

    .line 652
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 655
    sget p1, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/16 v0, 0x19

    if-lt p1, v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_5
    const-string v0, "cbc1"

    .line 656
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "cens"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    return v1

    :cond_7
    :goto_2
    return v2

    :cond_8
    :goto_3
    return v1
.end method

.method private createAndAcquireSession(Ljava/util/List;ZLcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;)Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/drm/DrmInitData$SchemeData;",
            ">;Z",
            "Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;",
            ")",
            "Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 767
    iget-object v1, v0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->exoMediaDrm:Lcom/google/android/exoplr2avp/drm/ExoMediaDrm;

    invoke-static {v1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 769
    iget-boolean v1, v0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->playClearSamplesWithoutKeys:Z

    or-int v9, v1, p2

    .line 770
    new-instance v1, Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;

    iget-object v3, v0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->uuid:Ljava/util/UUID;

    iget-object v4, v0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->exoMediaDrm:Lcom/google/android/exoplr2avp/drm/ExoMediaDrm;

    iget-object v5, v0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->provisioningManagerImpl:Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;

    iget-object v6, v0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->referenceCountListener:Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;

    iget v8, v0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->mode:I

    iget-object v11, v0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->offlineLicenseKeySetId:[B

    iget-object v12, v0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->keyRequestParameters:Ljava/util/HashMap;

    iget-object v13, v0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->callback:Lcom/google/android/exoplr2avp/drm/MediaDrmCallback;

    iget-object v2, v0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->playbackLooper:Landroid/os/Looper;

    .line 783
    invoke-static {v2}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/os/Looper;

    iget-object v15, v0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->loadErrorHandlingPolicy:Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;

    iget-object v2, v0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->playerId:Lcom/google/android/exoplr2avp/analytics/PlayerId;

    .line 785
    invoke-static {v2}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lcom/google/android/exoplr2avp/analytics/PlayerId;

    move-object v2, v1

    move-object/from16 v7, p1

    move/from16 v10, p2

    invoke-direct/range {v2 .. v16}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;-><init>(Ljava/util/UUID;Lcom/google/android/exoplr2avp/drm/ExoMediaDrm;Lcom/google/android/exoplr2avp/drm/DefaultDrmSession$ProvisioningManager;Lcom/google/android/exoplr2avp/drm/DefaultDrmSession$ReferenceCountListener;Ljava/util/List;IZZ[BLjava/util/HashMap;Lcom/google/android/exoplr2avp/drm/MediaDrmCallback;Landroid/os/Looper;Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;Lcom/google/android/exoplr2avp/analytics/PlayerId;)V

    move-object/from16 v2, p3

    .line 790
    invoke-virtual {v1, v2}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;->acquire(Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;)V

    .line 791
    iget-wide v2, v0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->sessionKeepaliveMs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    const/4 v2, 0x0

    .line 793
    invoke-virtual {v1, v2}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;->acquire(Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;)V

    :cond_0
    return-object v1
.end method

.method private createAndAcquireSessionWithRetry(Ljava/util/List;ZLcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;Z)Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/drm/DrmInitData$SchemeData;",
            ">;Z",
            "Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;",
            "Z)",
            "Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;"
        }
    .end annotation

    .line 690
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->createAndAcquireSession(Ljava/util/List;ZLcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;)Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;

    move-result-object v0

    .line 693
    invoke-static {v0}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->acquisitionFailedIndicatingResourceShortage(Lcom/google/android/exoplr2avp/drm/DrmSession;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->keepaliveSessions:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 694
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->releaseAllKeepaliveSessions()V

    .line 695
    invoke-direct {p0, v0, p3}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->undoAcquisition(Lcom/google/android/exoplr2avp/drm/DrmSession;Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;)V

    .line 696
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->createAndAcquireSession(Ljava/util/List;ZLcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;)Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;

    move-result-object v0

    .line 702
    :cond_0
    invoke-static {v0}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->acquisitionFailedIndicatingResourceShortage(Lcom/google/android/exoplr2avp/drm/DrmSession;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p4, :cond_2

    iget-object p4, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->preacquiredSessionReferences:Ljava/util/Set;

    .line 704
    invoke-interface {p4}, Ljava/util/Set;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_2

    .line 705
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->releaseAllPreacquiredSessions()V

    .line 706
    iget-object p4, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->keepaliveSessions:Ljava/util/Set;

    invoke-interface {p4}, Ljava/util/Set;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_1

    .line 709
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->releaseAllKeepaliveSessions()V

    .line 711
    :cond_1
    invoke-direct {p0, v0, p3}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->undoAcquisition(Lcom/google/android/exoplr2avp/drm/DrmSession;Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;)V

    .line 712
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->createAndAcquireSession(Ljava/util/List;ZLcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;)Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method private static getSchemeDatas(Lcom/google/android/exoplr2avp/drm/DrmInitData;Ljava/util/UUID;Z)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplr2avp/drm/DrmInitData;",
            "Ljava/util/UUID;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/drm/DrmInitData$SchemeData;",
            ">;"
        }
    .end annotation

    .line 822
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/google/android/exoplr2avp/drm/DrmInitData;->schemeDataCount:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 823
    :goto_0
    iget v3, p0, Lcom/google/android/exoplr2avp/drm/DrmInitData;->schemeDataCount:I

    if-ge v2, v3, :cond_4

    .line 824
    invoke-virtual {p0, v2}, Lcom/google/android/exoplr2avp/drm/DrmInitData;->get(I)Lcom/google/android/exoplr2avp/drm/DrmInitData$SchemeData;

    move-result-object v3

    .line 826
    invoke-virtual {v3, p1}, Lcom/google/android/exoplr2avp/drm/DrmInitData$SchemeData;->matches(Ljava/util/UUID;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lcom/google/android/exoplr2avp/C;->CLEARKEY_UUID:Ljava/util/UUID;

    .line 827
    invoke-virtual {v4, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/google/android/exoplr2avp/C;->COMMON_PSSH_UUID:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Lcom/google/android/exoplr2avp/drm/DrmInitData$SchemeData;->matches(Ljava/util/UUID;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v4, 0x1

    :goto_2
    if-eqz v4, :cond_3

    .line 828
    iget-object v4, v3, Lcom/google/android/exoplr2avp/drm/DrmInitData$SchemeData;->data:[B

    if-nez v4, :cond_2

    if-eqz p2, :cond_3

    .line 829
    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private declared-synchronized initPlaybackLooper(Landroid/os/Looper;)V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "this.playbackLooper",
            "this.playbackHandler"
        }
    .end annotation

    monitor-enter p0

    .line 669
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->playbackLooper:Landroid/os/Looper;

    if-nez v0, :cond_0

    .line 670
    iput-object p1, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->playbackLooper:Landroid/os/Looper;

    .line 671
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->playbackHandler:Landroid/os/Handler;

    goto :goto_1

    :cond_0
    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 673
    :goto_0
    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 674
    iget-object p1, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->playbackHandler:Landroid/os/Handler;

    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 676
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private maybeAcquirePlaceholderSession(IZ)Lcom/google/android/exoplr2avp/drm/DrmSession;
    .locals 4

    .line 607
    iget-object v0, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->exoMediaDrm:Lcom/google/android/exoplr2avp/drm/ExoMediaDrm;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/drm/ExoMediaDrm;

    .line 609
    invoke-interface {v0}, Lcom/google/android/exoplr2avp/drm/ExoMediaDrm;->getCryptoType()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    sget-boolean v1, Lcom/google/android/exoplr2avp/drm/FrameworkCryptoConfig;->WORKAROUND_DEVICE_NEEDS_KEYS_TO_CONFIGURE_CODEC:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v3, 0x0

    if-nez v1, :cond_3

    .line 612
    iget-object v1, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->useDrmSessionsForClearContentTrackTypes:[I

    .line 613
    invoke-static {v1, p1}, Lcom/google/android/exoplr2avp/util/Util;->linearSearch([II)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_3

    .line 614
    invoke-interface {v0}, Lcom/google/android/exoplr2avp/drm/ExoMediaDrm;->getCryptoType()I

    move-result p1

    if-ne p1, v2, :cond_1

    goto :goto_2

    .line 617
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->placeholderDrmSession:Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;

    if-nez p1, :cond_2

    .line 620
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    .line 619
    invoke-direct {p0, p1, v2, v3, p2}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->createAndAcquireSessionWithRetry(Ljava/util/List;ZLcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;Z)Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;

    move-result-object p1

    .line 624
    iget-object p2, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->sessions:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 625
    iput-object p1, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->placeholderDrmSession:Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;

    goto :goto_1

    .line 627
    :cond_2
    invoke-virtual {p1, v3}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;->acquire(Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;)V

    .line 629
    :goto_1
    iget-object p1, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->placeholderDrmSession:Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;

    return-object p1

    :cond_3
    :goto_2
    return-object v3
.end method

.method private maybeCreateMediaDrmHandler(Landroid/os/Looper;)V
    .locals 1

    .line 679
    iget-object v0, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->mediaDrmHandler:Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$MediaDrmHandler;

    if-nez v0, :cond_0

    .line 680
    new-instance v0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$MediaDrmHandler;

    invoke-direct {v0, p0, p1}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$MediaDrmHandler;-><init>(Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->mediaDrmHandler:Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$MediaDrmHandler;

    :cond_0
    return-void
.end method

.method private maybeReleaseMediaDrm()V
    .locals 1

    .line 799
    iget-object v0, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->exoMediaDrm:Lcom/google/android/exoplr2avp/drm/ExoMediaDrm;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->prepareCallsCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->sessions:Ljava/util/List;

    .line 801
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->preacquiredSessionReferences:Ljava/util/Set;

    .line 802
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 804
    iget-object v0, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->exoMediaDrm:Lcom/google/android/exoplr2avp/drm/ExoMediaDrm;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/drm/ExoMediaDrm;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/drm/ExoMediaDrm;->release()V

    const/4 v0, 0x0

    .line 805
    iput-object v0, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->exoMediaDrm:Lcom/google/android/exoplr2avp/drm/ExoMediaDrm;

    :cond_0
    return-void
.end method

.method private releaseAllKeepaliveSessions()V
    .locals 3

    .line 740
    iget-object v0, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->keepaliveSessions:Ljava/util/Set;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    .line 741
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplr2avp/drm/DrmSession;

    const/4 v2, 0x0

    .line 742
    invoke-interface {v1, v2}, Lcom/google/android/exoplr2avp/drm/DrmSession;->release(Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private releaseAllPreacquiredSessions()V
    .locals 2

    .line 749
    iget-object v0, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->preacquiredSessionReferences:Ljava/util/Set;

    .line 750
    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    .line 751
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$PreacquiredSessionReference;

    .line 752
    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->release()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private undoAcquisition(Lcom/google/android/exoplr2avp/drm/DrmSession;Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;)V
    .locals 4

    .line 731
    invoke-interface {p1, p2}, Lcom/google/android/exoplr2avp/drm/DrmSession;->release(Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;)V

    .line 732
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->sessionKeepaliveMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, v0, v2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 733
    invoke-interface {p1, p2}, Lcom/google/android/exoplr2avp/drm/DrmSession;->release(Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public acquireSession(Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplr2avp/Format;)Lcom/google/android/exoplr2avp/drm/DrmSession;
    .locals 2

    .line 517
    iget v0, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->prepareCallsCount:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 518
    iget-object v0, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->playbackLooper:Landroid/os/Looper;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    iget-object v0, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->playbackLooper:Landroid/os/Looper;

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->acquireSession(Landroid/os/Looper;Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplr2avp/Format;Z)Lcom/google/android/exoplr2avp/drm/DrmSession;

    move-result-object p1

    return-object p1
.end method

.method public getCryptoType(Lcom/google/android/exoplr2avp/Format;)I
    .locals 2

    .line 591
    iget-object v0, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->exoMediaDrm:Lcom/google/android/exoplr2avp/drm/ExoMediaDrm;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/drm/ExoMediaDrm;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/drm/ExoMediaDrm;->getCryptoType()I

    move-result v0

    .line 592
    iget-object v1, p1, Lcom/google/android/exoplr2avp/Format;->drmInitData:Lcom/google/android/exoplr2avp/drm/DrmInitData;

    if-nez v1, :cond_1

    .line 593
    iget-object p1, p1, Lcom/google/android/exoplr2avp/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result p1

    .line 594
    iget-object v1, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->useDrmSessionsForClearContentTrackTypes:[I

    invoke-static {v1, p1}, Lcom/google/android/exoplr2avp/util/Util;->linearSearch([II)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 598
    :cond_1
    iget-object p1, p1, Lcom/google/android/exoplr2avp/Format;->drmInitData:Lcom/google/android/exoplr2avp/drm/DrmInitData;

    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->canAcquireSession(Lcom/google/android/exoplr2avp/drm/DrmInitData;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public preacquireSession(Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplr2avp/Format;)Lcom/google/android/exoplr2avp/drm/DrmSessionManager$DrmSessionReference;
    .locals 1

    .line 505
    iget v0, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->prepareCallsCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 506
    iget-object v0, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->playbackLooper:Landroid/os/Looper;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    new-instance v0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$PreacquiredSessionReference;

    invoke-direct {v0, p0, p1}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$PreacquiredSessionReference;-><init>(Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;)V

    .line 509
    invoke-virtual {v0, p2}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->acquire(Lcom/google/android/exoplr2avp/Format;)V

    return-object v0
.end method

.method public final prepare()V
    .locals 6

    .line 463
    iget v0, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->prepareCallsCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->prepareCallsCount:I

    if-eqz v0, :cond_0

    return-void

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->exoMediaDrm:Lcom/google/android/exoplr2avp/drm/ExoMediaDrm;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 467
    iget-object v0, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->exoMediaDrmProvider:Lcom/google/android/exoplr2avp/drm/ExoMediaDrm$Provider;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->uuid:Ljava/util/UUID;

    invoke-interface {v0, v2}, Lcom/google/android/exoplr2avp/drm/ExoMediaDrm$Provider;->acquireExoMediaDrm(Ljava/util/UUID;)Lcom/google/android/exoplr2avp/drm/ExoMediaDrm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->exoMediaDrm:Lcom/google/android/exoplr2avp/drm/ExoMediaDrm;

    .line 468
    new-instance v2, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$MediaDrmEventListener;

    invoke-direct {v2, p0, v1}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$MediaDrmEventListener;-><init>(Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$1;)V

    invoke-interface {v0, v2}, Lcom/google/android/exoplr2avp/drm/ExoMediaDrm;->setOnEventListener(Lcom/google/android/exoplr2avp/drm/ExoMediaDrm$OnEventListener;)V

    goto :goto_1

    .line 469
    :cond_1
    iget-wide v2, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->sessionKeepaliveMs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 471
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->sessions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 472
    iget-object v2, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->sessions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;->acquire(Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final release()V
    .locals 5

    .line 479
    iget v0, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->prepareCallsCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->prepareCallsCount:I

    if-eqz v0, :cond_0

    return-void

    .line 483
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->sessionKeepaliveMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 486
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->sessions:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    .line 487
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 488
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;->release(Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 491
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->releaseAllPreacquiredSessions()V

    .line 493
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->maybeReleaseMediaDrm()V

    return-void
.end method

.method public setMode(I[B)V
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->sessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 453
    :cond_0
    invoke-static {p2}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    :cond_1
    iput p1, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->mode:I

    .line 456
    iput-object p2, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->offlineLicenseKeySetId:[B

    return-void
.end method

.method public setPlayer(Landroid/os/Looper;Lcom/google/android/exoplr2avp/analytics/PlayerId;)V
    .locals 0

    .line 498
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->initPlaybackLooper(Landroid/os/Looper;)V

    .line 499
    iput-object p2, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->playerId:Lcom/google/android/exoplr2avp/analytics/PlayerId;

    return-void
.end method
