.class public final synthetic Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImplInternal$aWOu7K1rG50zX-WDyqe1_7Mfx58;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImplInternal$aWOu7K1rG50zX-WDyqe1_7Mfx58;->f$0:Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImplInternal$aWOu7K1rG50zX-WDyqe1_7Mfx58;->f$0:Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->lambda$release$0$ExoPlayerImplInternal()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
