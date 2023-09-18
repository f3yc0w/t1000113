.class public final synthetic Lcom/google/android/exoplr2avp/upstream/-$$Lambda$PlaceholderDataSource$s2t6AiKfEQlKAbNmlkl_mzJ2Qp8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplr2avp/upstream/-$$Lambda$PlaceholderDataSource$s2t6AiKfEQlKAbNmlkl_mzJ2Qp8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplr2avp/upstream/-$$Lambda$PlaceholderDataSource$s2t6AiKfEQlKAbNmlkl_mzJ2Qp8;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/upstream/-$$Lambda$PlaceholderDataSource$s2t6AiKfEQlKAbNmlkl_mzJ2Qp8;-><init>()V

    sput-object v0, Lcom/google/android/exoplr2avp/upstream/-$$Lambda$PlaceholderDataSource$s2t6AiKfEQlKAbNmlkl_mzJ2Qp8;->INSTANCE:Lcom/google/android/exoplr2avp/upstream/-$$Lambda$PlaceholderDataSource$s2t6AiKfEQlKAbNmlkl_mzJ2Qp8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createDataSource()Lcom/google/android/exoplr2avp/upstream/DataSource;
    .locals 1

    invoke-static {}, Lcom/google/android/exoplr2avp/upstream/PlaceholderDataSource;->lambda$s2t6AiKfEQlKAbNmlkl_mzJ2Qp8()Lcom/google/android/exoplr2avp/upstream/PlaceholderDataSource;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/upstream/DataSource;

    return-object v0
.end method
