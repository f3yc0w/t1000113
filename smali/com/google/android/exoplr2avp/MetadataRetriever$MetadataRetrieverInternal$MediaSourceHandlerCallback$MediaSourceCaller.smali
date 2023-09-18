.class final Lcom/google/android/exoplr2avp/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller;
.super Ljava/lang/Object;
.source "MetadataRetriever.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/source/MediaSource$MediaSourceCaller;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaSourceCaller"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller$MediaPeriodCallback;
    }
.end annotation


# instance fields
.field private final allocator:Lcom/google/android/exoplr2avp/upstream/Allocator;

.field private final mediaPeriodCallback:Lcom/google/android/exoplr2avp/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller$MediaPeriodCallback;

.field private mediaPeriodCreated:Z

.field final synthetic this$1:Lcom/google/android/exoplr2avp/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;)V
    .locals 2

    .line 184
    iput-object p1, p0, Lcom/google/android/exoplr2avp/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller;->this$1:Lcom/google/android/exoplr2avp/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    new-instance p1, Lcom/google/android/exoplr2avp/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller$MediaPeriodCallback;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/google/android/exoplr2avp/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller$MediaPeriodCallback;-><init>(Lcom/google/android/exoplr2avp/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller;Lcom/google/android/exoplr2avp/MetadataRetriever$1;)V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller;->mediaPeriodCallback:Lcom/google/android/exoplr2avp/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller$MediaPeriodCallback;

    .line 186
    new-instance p1, Lcom/google/android/exoplr2avp/upstream/DefaultAllocator;

    const/4 v0, 0x1

    const/high16 v1, 0x10000

    invoke-direct {p1, v0, v1}, Lcom/google/android/exoplr2avp/upstream/DefaultAllocator;-><init>(ZI)V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller;->allocator:Lcom/google/android/exoplr2avp/upstream/Allocator;

    return-void
.end method


# virtual methods
.method public onSourceInfoRefreshed(Lcom/google/android/exoplr2avp/source/MediaSource;Lcom/google/android/exoplr2avp/Timeline;)V
    .locals 4

    .line 194
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller;->mediaPeriodCreated:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 198
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller;->mediaPeriodCreated:Z

    .line 199
    iget-object v0, p0, Lcom/google/android/exoplr2avp/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller;->this$1:Lcom/google/android/exoplr2avp/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;

    new-instance v1, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    const/4 v2, 0x0

    .line 201
    invoke-virtual {p2, v2}, Lcom/google/android/exoplr2avp/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {v1, p2}, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/google/android/exoplr2avp/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller;->allocator:Lcom/google/android/exoplr2avp/upstream/Allocator;

    const-wide/16 v2, 0x0

    .line 200
    invoke-interface {p1, v1, p2, v2, v3}, Lcom/google/android/exoplr2avp/source/MediaSource;->createPeriod(Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplr2avp/upstream/Allocator;J)Lcom/google/android/exoplr2avp/source/MediaPeriod;

    move-result-object p1

    .line 199
    invoke-static {v0, p1}, Lcom/google/android/exoplr2avp/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;->access$502(Lcom/google/android/exoplr2avp/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;Lcom/google/android/exoplr2avp/source/MediaPeriod;)Lcom/google/android/exoplr2avp/source/MediaPeriod;

    .line 204
    iget-object p1, p0, Lcom/google/android/exoplr2avp/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller;->this$1:Lcom/google/android/exoplr2avp/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;

    invoke-static {p1}, Lcom/google/android/exoplr2avp/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;->access$500(Lcom/google/android/exoplr2avp/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;)Lcom/google/android/exoplr2avp/source/MediaPeriod;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/exoplr2avp/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller;->mediaPeriodCallback:Lcom/google/android/exoplr2avp/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller$MediaPeriodCallback;

    invoke-interface {p1, p2, v2, v3}, Lcom/google/android/exoplr2avp/source/MediaPeriod;->prepare(Lcom/google/android/exoplr2avp/source/MediaPeriod$Callback;J)V

    return-void
.end method
