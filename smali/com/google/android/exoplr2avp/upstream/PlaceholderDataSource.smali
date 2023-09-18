.class public final Lcom/google/android/exoplr2avp/upstream/PlaceholderDataSource;
.super Ljava/lang/Object;
.source "PlaceholderDataSource.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/upstream/DataSource;


# static fields
.field public static final FACTORY:Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;

.field public static final INSTANCE:Lcom/google/android/exoplr2avp/upstream/PlaceholderDataSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lcom/google/android/exoplr2avp/upstream/PlaceholderDataSource;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/upstream/PlaceholderDataSource;-><init>()V

    sput-object v0, Lcom/google/android/exoplr2avp/upstream/PlaceholderDataSource;->INSTANCE:Lcom/google/android/exoplr2avp/upstream/PlaceholderDataSource;

    .line 28
    sget-object v0, Lcom/google/android/exoplr2avp/upstream/-$$Lambda$PlaceholderDataSource$s2t6AiKfEQlKAbNmlkl_mzJ2Qp8;->INSTANCE:Lcom/google/android/exoplr2avp/upstream/-$$Lambda$PlaceholderDataSource$s2t6AiKfEQlKAbNmlkl_mzJ2Qp8;

    sput-object v0, Lcom/google/android/exoplr2avp/upstream/PlaceholderDataSource;->FACTORY:Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$s2t6AiKfEQlKAbNmlkl_mzJ2Qp8()Lcom/google/android/exoplr2avp/upstream/PlaceholderDataSource;
    .locals 1

    new-instance v0, Lcom/google/android/exoplr2avp/upstream/PlaceholderDataSource;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/upstream/PlaceholderDataSource;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addTransferListener(Lcom/google/android/exoplr2avp/upstream/TransferListener;)V
    .locals 0

    return-void
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public synthetic getResponseHeaders()Ljava/util/Map;
    .locals 1

    invoke-static {p0}, Lcom/google/android/exoplr2avp/upstream/DataSource$-CC;->$default$getResponseHeaders(Lcom/google/android/exoplr2avp/upstream/DataSource;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public open(Lcom/google/android/exoplr2avp/upstream/DataSpec;)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    new-instance p1, Ljava/io/IOException;

    const-string v0, "PlaceholderDataSource cannot be opened"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public read([BII)I
    .locals 0

    .line 44
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
