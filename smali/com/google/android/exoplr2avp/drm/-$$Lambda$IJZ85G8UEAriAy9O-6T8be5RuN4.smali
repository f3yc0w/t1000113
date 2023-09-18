.class public final synthetic Lcom/google/android/exoplr2avp/drm/-$$Lambda$IJZ85G8UEAriAy9O-6T8be5RuN4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplr2avp/util/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplr2avp/drm/-$$Lambda$IJZ85G8UEAriAy9O-6T8be5RuN4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplr2avp/drm/-$$Lambda$IJZ85G8UEAriAy9O-6T8be5RuN4;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/drm/-$$Lambda$IJZ85G8UEAriAy9O-6T8be5RuN4;-><init>()V

    sput-object v0, Lcom/google/android/exoplr2avp/drm/-$$Lambda$IJZ85G8UEAriAy9O-6T8be5RuN4;->INSTANCE:Lcom/google/android/exoplr2avp/drm/-$$Lambda$IJZ85G8UEAriAy9O-6T8be5RuN4;

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

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;->drmKeysLoaded()V

    return-void
.end method
