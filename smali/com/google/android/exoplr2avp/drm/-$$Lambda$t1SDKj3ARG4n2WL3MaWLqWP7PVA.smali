.class public final synthetic Lcom/google/android/exoplr2avp/drm/-$$Lambda$t1SDKj3ARG4n2WL3MaWLqWP7PVA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplr2avp/util/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplr2avp/drm/-$$Lambda$t1SDKj3ARG4n2WL3MaWLqWP7PVA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplr2avp/drm/-$$Lambda$t1SDKj3ARG4n2WL3MaWLqWP7PVA;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/drm/-$$Lambda$t1SDKj3ARG4n2WL3MaWLqWP7PVA;-><init>()V

    sput-object v0, Lcom/google/android/exoplr2avp/drm/-$$Lambda$t1SDKj3ARG4n2WL3MaWLqWP7PVA;->INSTANCE:Lcom/google/android/exoplr2avp/drm/-$$Lambda$t1SDKj3ARG4n2WL3MaWLqWP7PVA;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;->drmKeysRemoved()V

    return-void
.end method
