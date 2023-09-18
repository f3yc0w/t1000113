.class public final synthetic Lcom/google/android/exoplr2avp/upstream/cache/-$$Lambda$LeastRecentlyUsedCacheEvictor$xwt4yhF4uV18I5ylBnuZF-iiBng;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplr2avp/upstream/cache/-$$Lambda$LeastRecentlyUsedCacheEvictor$xwt4yhF4uV18I5ylBnuZF-iiBng;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplr2avp/upstream/cache/-$$Lambda$LeastRecentlyUsedCacheEvictor$xwt4yhF4uV18I5ylBnuZF-iiBng;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/upstream/cache/-$$Lambda$LeastRecentlyUsedCacheEvictor$xwt4yhF4uV18I5ylBnuZF-iiBng;-><init>()V

    sput-object v0, Lcom/google/android/exoplr2avp/upstream/cache/-$$Lambda$LeastRecentlyUsedCacheEvictor$xwt4yhF4uV18I5ylBnuZF-iiBng;->INSTANCE:Lcom/google/android/exoplr2avp/upstream/cache/-$$Lambda$LeastRecentlyUsedCacheEvictor$xwt4yhF4uV18I5ylBnuZF-iiBng;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/exoplr2avp/upstream/cache/CacheSpan;

    check-cast p2, Lcom/google/android/exoplr2avp/upstream/cache/CacheSpan;

    invoke-static {p1, p2}, Lcom/google/android/exoplr2avp/upstream/cache/LeastRecentlyUsedCacheEvictor;->lambda$xwt4yhF4uV18I5ylBnuZF-iiBng(Lcom/google/android/exoplr2avp/upstream/cache/CacheSpan;Lcom/google/android/exoplr2avp/upstream/cache/CacheSpan;)I

    move-result p1

    return p1
.end method
