.class public final synthetic Lcom/google/android/exoplr2avp/util/-$$Lambda$NetworkTypeObserver$zYqhUhppi7XCUgChivS4afKMDew;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplr2avp/util/NetworkTypeObserver;

.field public final synthetic f$1:Lcom/google/android/exoplr2avp/util/NetworkTypeObserver$Listener;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplr2avp/util/NetworkTypeObserver;Lcom/google/android/exoplr2avp/util/NetworkTypeObserver$Listener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/util/-$$Lambda$NetworkTypeObserver$zYqhUhppi7XCUgChivS4afKMDew;->f$0:Lcom/google/android/exoplr2avp/util/NetworkTypeObserver;

    iput-object p2, p0, Lcom/google/android/exoplr2avp/util/-$$Lambda$NetworkTypeObserver$zYqhUhppi7XCUgChivS4afKMDew;->f$1:Lcom/google/android/exoplr2avp/util/NetworkTypeObserver$Listener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplr2avp/util/-$$Lambda$NetworkTypeObserver$zYqhUhppi7XCUgChivS4afKMDew;->f$0:Lcom/google/android/exoplr2avp/util/NetworkTypeObserver;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/util/-$$Lambda$NetworkTypeObserver$zYqhUhppi7XCUgChivS4afKMDew;->f$1:Lcom/google/android/exoplr2avp/util/NetworkTypeObserver$Listener;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/util/NetworkTypeObserver;->lambda$register$0$NetworkTypeObserver(Lcom/google/android/exoplr2avp/util/NetworkTypeObserver$Listener;)V

    return-void
.end method
