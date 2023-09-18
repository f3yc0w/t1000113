.class public final synthetic Lcom/google/android/exoplr2avp/-$$Lambda$nXYnrIRfA_iNmnO1il9NEcaVWio;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/common/base/Supplier;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplr2avp/-$$Lambda$nXYnrIRfA_iNmnO1il9NEcaVWio;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplr2avp/-$$Lambda$nXYnrIRfA_iNmnO1il9NEcaVWio;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/-$$Lambda$nXYnrIRfA_iNmnO1il9NEcaVWio;-><init>()V

    sput-object v0, Lcom/google/android/exoplr2avp/-$$Lambda$nXYnrIRfA_iNmnO1il9NEcaVWio;->INSTANCE:Lcom/google/android/exoplr2avp/-$$Lambda$nXYnrIRfA_iNmnO1il9NEcaVWio;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/google/android/exoplr2avp/DefaultLoadControl;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/DefaultLoadControl;-><init>()V

    check-cast v0, Lcom/google/android/exoplr2avp/LoadControl;

    return-object v0
.end method
