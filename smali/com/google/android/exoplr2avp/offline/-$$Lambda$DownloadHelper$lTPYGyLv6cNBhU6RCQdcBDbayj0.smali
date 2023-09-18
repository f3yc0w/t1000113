.class public final synthetic Lcom/google/android/exoplr2avp/offline/-$$Lambda$DownloadHelper$lTPYGyLv6cNBhU6RCQdcBDbayj0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplr2avp/text/TextOutput;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplr2avp/offline/-$$Lambda$DownloadHelper$lTPYGyLv6cNBhU6RCQdcBDbayj0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplr2avp/offline/-$$Lambda$DownloadHelper$lTPYGyLv6cNBhU6RCQdcBDbayj0;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/offline/-$$Lambda$DownloadHelper$lTPYGyLv6cNBhU6RCQdcBDbayj0;-><init>()V

    sput-object v0, Lcom/google/android/exoplr2avp/offline/-$$Lambda$DownloadHelper$lTPYGyLv6cNBhU6RCQdcBDbayj0;->INSTANCE:Lcom/google/android/exoplr2avp/offline/-$$Lambda$DownloadHelper$lTPYGyLv6cNBhU6RCQdcBDbayj0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCues(Lcom/google/android/exoplr2avp/text/CueGroup;)V
    .locals 0

    invoke-static {p1}, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->lambda$getRendererCapabilities$0(Lcom/google/android/exoplr2avp/text/CueGroup;)V

    return-void
.end method

.method public synthetic onCues(Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/text/TextOutput$-CC;->$default$onCues(Lcom/google/android/exoplr2avp/text/TextOutput;Ljava/util/List;)V

    return-void
.end method
