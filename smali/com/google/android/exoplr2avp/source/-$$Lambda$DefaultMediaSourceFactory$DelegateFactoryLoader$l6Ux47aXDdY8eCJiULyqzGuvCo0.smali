.class public final synthetic Lcom/google/android/exoplr2avp/source/-$$Lambda$DefaultMediaSourceFactory$DelegateFactoryLoader$l6Ux47aXDdY8eCJiULyqzGuvCo0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory$DelegateFactoryLoader;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory$DelegateFactoryLoader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/-$$Lambda$DefaultMediaSourceFactory$DelegateFactoryLoader$l6Ux47aXDdY8eCJiULyqzGuvCo0;->f$0:Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory$DelegateFactoryLoader;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/-$$Lambda$DefaultMediaSourceFactory$DelegateFactoryLoader$l6Ux47aXDdY8eCJiULyqzGuvCo0;->f$0:Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory$DelegateFactoryLoader;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->lambda$maybeLoadSupplier$4$DefaultMediaSourceFactory$DelegateFactoryLoader()Lcom/google/android/exoplr2avp/source/MediaSource$Factory;

    move-result-object v0

    return-object v0
.end method
