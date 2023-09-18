.class Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$MoveMediaItemsMessage;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MoveMediaItemsMessage"
.end annotation


# instance fields
.field public final fromIndex:I

.field public final newFromIndex:I

.field public final shuffleOrder:Lcom/google/android/exoplr2avp/source/ShuffleOrder;

.field public final toIndex:I


# direct methods
.method public constructor <init>(IIILcom/google/android/exoplr2avp/source/ShuffleOrder;)V
    .locals 0

    .line 3076
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3077
    iput p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$MoveMediaItemsMessage;->fromIndex:I

    .line 3078
    iput p2, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$MoveMediaItemsMessage;->toIndex:I

    .line 3079
    iput p3, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$MoveMediaItemsMessage;->newFromIndex:I

    .line 3080
    iput-object p4, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$MoveMediaItemsMessage;->shuffleOrder:Lcom/google/android/exoplr2avp/source/ShuffleOrder;

    return-void
.end method
