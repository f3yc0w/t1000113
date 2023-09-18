.class public final synthetic Lcom/google/android/exoplr2avp/source/-$$Lambda$D6033aVasIHkIj-973viVjBUPME;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplr2avp/source/ProgressiveMediaExtractor$Factory;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplr2avp/source/-$$Lambda$D6033aVasIHkIj-973viVjBUPME;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplr2avp/source/-$$Lambda$D6033aVasIHkIj-973viVjBUPME;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/source/-$$Lambda$D6033aVasIHkIj-973viVjBUPME;-><init>()V

    sput-object v0, Lcom/google/android/exoplr2avp/source/-$$Lambda$D6033aVasIHkIj-973viVjBUPME;->INSTANCE:Lcom/google/android/exoplr2avp/source/-$$Lambda$D6033aVasIHkIj-973viVjBUPME;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createProgressiveMediaExtractor(Lcom/google/android/exoplr2avp/analytics/PlayerId;)Lcom/google/android/exoplr2avp/source/ProgressiveMediaExtractor;
    .locals 1

    new-instance v0, Lcom/google/android/exoplr2avp/source/MediaParserExtractorAdapter;

    invoke-direct {v0, p1}, Lcom/google/android/exoplr2avp/source/MediaParserExtractorAdapter;-><init>(Lcom/google/android/exoplr2avp/analytics/PlayerId;)V

    check-cast v0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaExtractor;

    return-object v0
.end method
