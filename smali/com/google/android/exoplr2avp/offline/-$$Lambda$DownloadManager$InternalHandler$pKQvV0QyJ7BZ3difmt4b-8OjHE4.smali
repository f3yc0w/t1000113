.class public final synthetic Lcom/google/android/exoplr2avp/offline/-$$Lambda$DownloadManager$InternalHandler$pKQvV0QyJ7BZ3difmt4b-8OjHE4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplr2avp/offline/-$$Lambda$DownloadManager$InternalHandler$pKQvV0QyJ7BZ3difmt4b-8OjHE4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplr2avp/offline/-$$Lambda$DownloadManager$InternalHandler$pKQvV0QyJ7BZ3difmt4b-8OjHE4;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/offline/-$$Lambda$DownloadManager$InternalHandler$pKQvV0QyJ7BZ3difmt4b-8OjHE4;-><init>()V

    sput-object v0, Lcom/google/android/exoplr2avp/offline/-$$Lambda$DownloadManager$InternalHandler$pKQvV0QyJ7BZ3difmt4b-8OjHE4;->INSTANCE:Lcom/google/android/exoplr2avp/offline/-$$Lambda$DownloadManager$InternalHandler$pKQvV0QyJ7BZ3difmt4b-8OjHE4;

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

    check-cast p1, Lcom/google/android/exoplr2avp/offline/Download;

    check-cast p2, Lcom/google/android/exoplr2avp/offline/Download;

    invoke-static {p1, p2}, Lcom/google/android/exoplr2avp/offline/DownloadManager$InternalHandler;->lambda$pKQvV0QyJ7BZ3difmt4b-8OjHE4(Lcom/google/android/exoplr2avp/offline/Download;Lcom/google/android/exoplr2avp/offline/Download;)I

    move-result p1

    return p1
.end method
