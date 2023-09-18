.class public final synthetic Lcom/google/android/exoplr2avp/extractor/mp4/-$$Lambda$Mp4Extractor$Cn0dSbbkKbtuiNs98kEe-5bbZCo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/common/base/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplr2avp/extractor/mp4/-$$Lambda$Mp4Extractor$Cn0dSbbkKbtuiNs98kEe-5bbZCo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplr2avp/extractor/mp4/-$$Lambda$Mp4Extractor$Cn0dSbbkKbtuiNs98kEe-5bbZCo;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/extractor/mp4/-$$Lambda$Mp4Extractor$Cn0dSbbkKbtuiNs98kEe-5bbZCo;-><init>()V

    sput-object v0, Lcom/google/android/exoplr2avp/extractor/mp4/-$$Lambda$Mp4Extractor$Cn0dSbbkKbtuiNs98kEe-5bbZCo;->INSTANCE:Lcom/google/android/exoplr2avp/extractor/mp4/-$$Lambda$Mp4Extractor$Cn0dSbbkKbtuiNs98kEe-5bbZCo;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/android/exoplr2avp/extractor/mp4/Track;

    invoke-static {p1}, Lcom/google/android/exoplr2avp/extractor/mp4/Mp4Extractor;->lambda$processMoovAtom$1(Lcom/google/android/exoplr2avp/extractor/mp4/Track;)Lcom/google/android/exoplr2avp/extractor/mp4/Track;

    move-result-object p1

    return-object p1
.end method
