.class public final synthetic Lcom/google/android/exoplr2avp/source/-$$Lambda$SampleQueue$N7L_EGoEm2fYcqr5pqq_XXWiInU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplr2avp/util/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplr2avp/source/-$$Lambda$SampleQueue$N7L_EGoEm2fYcqr5pqq_XXWiInU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplr2avp/source/-$$Lambda$SampleQueue$N7L_EGoEm2fYcqr5pqq_XXWiInU;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/source/-$$Lambda$SampleQueue$N7L_EGoEm2fYcqr5pqq_XXWiInU;-><init>()V

    sput-object v0, Lcom/google/android/exoplr2avp/source/-$$Lambda$SampleQueue$N7L_EGoEm2fYcqr5pqq_XXWiInU;->INSTANCE:Lcom/google/android/exoplr2avp/source/-$$Lambda$SampleQueue$N7L_EGoEm2fYcqr5pqq_XXWiInU;

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

    check-cast p1, Lcom/google/android/exoplr2avp/source/SampleQueue$SharedSampleMetadata;

    invoke-static {p1}, Lcom/google/android/exoplr2avp/source/SampleQueue;->lambda$new$0(Lcom/google/android/exoplr2avp/source/SampleQueue$SharedSampleMetadata;)V

    return-void
.end method
