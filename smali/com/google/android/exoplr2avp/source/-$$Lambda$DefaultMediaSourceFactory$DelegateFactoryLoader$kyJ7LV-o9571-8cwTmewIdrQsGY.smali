.class public final synthetic Lcom/google/android/exoplr2avp/source/-$$Lambda$DefaultMediaSourceFactory$DelegateFactoryLoader$kyJ7LV-o9571-8cwTmewIdrQsGY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory$DelegateFactoryLoader;

.field public final synthetic f$1:Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory$DelegateFactoryLoader;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/-$$Lambda$DefaultMediaSourceFactory$DelegateFactoryLoader$kyJ7LV-o9571-8cwTmewIdrQsGY;->f$0:Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory$DelegateFactoryLoader;

    iput-object p2, p0, Lcom/google/android/exoplr2avp/source/-$$Lambda$DefaultMediaSourceFactory$DelegateFactoryLoader$kyJ7LV-o9571-8cwTmewIdrQsGY;->f$1:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/-$$Lambda$DefaultMediaSourceFactory$DelegateFactoryLoader$kyJ7LV-o9571-8cwTmewIdrQsGY;->f$0:Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory$DelegateFactoryLoader;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/-$$Lambda$DefaultMediaSourceFactory$DelegateFactoryLoader$kyJ7LV-o9571-8cwTmewIdrQsGY;->f$1:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->lambda$maybeLoadSupplier$2$DefaultMediaSourceFactory$DelegateFactoryLoader(Ljava/lang/Class;)Lcom/google/android/exoplr2avp/source/MediaSource$Factory;

    move-result-object v0

    return-object v0
.end method
