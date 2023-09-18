.class public final synthetic Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayer$Builder$Yx7uEMmIAOwLKf-A-kWe__CJiJo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayer$Builder$Yx7uEMmIAOwLKf-A-kWe__CJiJo;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayer$Builder$Yx7uEMmIAOwLKf-A-kWe__CJiJo;->f$0:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->lambda$new$15(Landroid/content/Context;)Lcom/google/android/exoplr2avp/upstream/BandwidthMeter;

    move-result-object v0

    return-object v0
.end method
