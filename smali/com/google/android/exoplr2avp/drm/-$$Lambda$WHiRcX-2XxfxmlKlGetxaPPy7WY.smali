.class public final synthetic Lcom/google/android/exoplr2avp/drm/-$$Lambda$WHiRcX-2XxfxmlKlGetxaPPy7WY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplr2avp/util/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplr2avp/drm/-$$Lambda$WHiRcX-2XxfxmlKlGetxaPPy7WY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplr2avp/drm/-$$Lambda$WHiRcX-2XxfxmlKlGetxaPPy7WY;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/drm/-$$Lambda$WHiRcX-2XxfxmlKlGetxaPPy7WY;-><init>()V

    sput-object v0, Lcom/google/android/exoplr2avp/drm/-$$Lambda$WHiRcX-2XxfxmlKlGetxaPPy7WY;->INSTANCE:Lcom/google/android/exoplr2avp/drm/-$$Lambda$WHiRcX-2XxfxmlKlGetxaPPy7WY;

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

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;->drmKeysRestored()V

    return-void
.end method
