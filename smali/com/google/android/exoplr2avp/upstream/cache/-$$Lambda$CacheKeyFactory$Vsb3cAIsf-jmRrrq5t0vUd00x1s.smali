.class public final synthetic Lcom/google/android/exoplr2avp/upstream/cache/-$$Lambda$CacheKeyFactory$Vsb3cAIsf-jmRrrq5t0vUd00x1s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplr2avp/upstream/cache/CacheKeyFactory;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplr2avp/upstream/cache/-$$Lambda$CacheKeyFactory$Vsb3cAIsf-jmRrrq5t0vUd00x1s;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplr2avp/upstream/cache/-$$Lambda$CacheKeyFactory$Vsb3cAIsf-jmRrrq5t0vUd00x1s;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/upstream/cache/-$$Lambda$CacheKeyFactory$Vsb3cAIsf-jmRrrq5t0vUd00x1s;-><init>()V

    sput-object v0, Lcom/google/android/exoplr2avp/upstream/cache/-$$Lambda$CacheKeyFactory$Vsb3cAIsf-jmRrrq5t0vUd00x1s;->INSTANCE:Lcom/google/android/exoplr2avp/upstream/cache/-$$Lambda$CacheKeyFactory$Vsb3cAIsf-jmRrrq5t0vUd00x1s;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final buildCacheKey(Lcom/google/android/exoplr2avp/upstream/DataSpec;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/google/android/exoplr2avp/upstream/cache/CacheKeyFactory$-CC;->lambda$static$0(Lcom/google/android/exoplr2avp/upstream/DataSpec;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
