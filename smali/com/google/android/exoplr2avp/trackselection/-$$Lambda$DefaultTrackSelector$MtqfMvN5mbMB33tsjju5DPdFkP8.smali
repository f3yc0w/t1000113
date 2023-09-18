.class public final synthetic Lcom/google/android/exoplr2avp/trackselection/-$$Lambda$DefaultTrackSelector$MtqfMvN5mbMB33tsjju5DPdFkP8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/common/base/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/trackselection/-$$Lambda$DefaultTrackSelector$MtqfMvN5mbMB33tsjju5DPdFkP8;->f$0:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplr2avp/trackselection/-$$Lambda$DefaultTrackSelector$MtqfMvN5mbMB33tsjju5DPdFkP8;->f$0:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;

    check-cast p1, Lcom/google/android/exoplr2avp/Format;

    invoke-static {v0, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->lambda$MtqfMvN5mbMB33tsjju5DPdFkP8(Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;Lcom/google/android/exoplr2avp/Format;)Z

    move-result p1

    return p1
.end method
