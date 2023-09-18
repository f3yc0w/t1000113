.class public final Lcom/google/android/exoplr2avp/text/CueGroup;
.super Ljava/lang/Object;
.source "CueGroup.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/Bundleable;


# static fields
.field public static final CREATOR:Lcom/google/android/exoplr2avp/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplr2avp/Bundleable$Creator<",
            "Lcom/google/android/exoplr2avp/text/CueGroup;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY:Lcom/google/android/exoplr2avp/text/CueGroup;

.field private static final FIELD_CUES:I


# instance fields
.field public final cues:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplr2avp/text/Cue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Lcom/google/android/exoplr2avp/text/CueGroup;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplr2avp/text/CueGroup;-><init>(Ljava/util/List;)V

    sput-object v0, Lcom/google/android/exoplr2avp/text/CueGroup;->EMPTY:Lcom/google/android/exoplr2avp/text/CueGroup;

    .line 73
    sget-object v0, Lcom/google/android/exoplr2avp/text/-$$Lambda$CueGroup$RglWUtsTfux_uXVZfJpwQbmSXSU;->INSTANCE:Lcom/google/android/exoplr2avp/text/-$$Lambda$CueGroup$RglWUtsTfux_uXVZfJpwQbmSXSU;

    sput-object v0, Lcom/google/android/exoplr2avp/text/CueGroup;->CREATOR:Lcom/google/android/exoplr2avp/Bundleable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/text/Cue;",
            ">;)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/text/CueGroup;->cues:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method private static filterOutBitmapCues(Ljava/util/List;)Lcom/google/common/collect/ImmutableList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/text/Cue;",
            ">;)",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplr2avp/text/Cue;",
            ">;"
        }
    .end annotation

    .line 93
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 94
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 95
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplr2avp/text/Cue;

    iget-object v2, v2, Lcom/google/android/exoplr2avp/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    goto :goto_1

    .line 98
    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplr2avp/text/Cue;

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 100
    :cond_1
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method private static final fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplr2avp/text/CueGroup;
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-static {v0}, Lcom/google/android/exoplr2avp/text/CueGroup;->keyForField(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-nez p0, :cond_0

    .line 79
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    goto :goto_0

    .line 80
    :cond_0
    sget-object v0, Lcom/google/android/exoplr2avp/text/Cue;->CREATOR:Lcom/google/android/exoplr2avp/Bundleable$Creator;

    invoke-static {v0, p0}, Lcom/google/android/exoplr2avp/util/BundleableUtil;->fromBundleList(Lcom/google/android/exoplr2avp/Bundleable$Creator;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    .line 81
    :goto_0
    new-instance v0, Lcom/google/android/exoplr2avp/text/CueGroup;

    invoke-direct {v0, p0}, Lcom/google/android/exoplr2avp/text/CueGroup;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private static keyForField(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x24

    .line 85
    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$RglWUtsTfux_uXVZfJpwQbmSXSU(Landroid/os/Bundle;)Lcom/google/android/exoplr2avp/text/CueGroup;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplr2avp/text/CueGroup;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplr2avp/text/CueGroup;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 67
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    .line 69
    invoke-static {v1}, Lcom/google/android/exoplr2avp/text/CueGroup;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplr2avp/text/CueGroup;->cues:Lcom/google/common/collect/ImmutableList;

    invoke-static {v2}, Lcom/google/android/exoplr2avp/text/CueGroup;->filterOutBitmapCues(Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplr2avp/util/BundleableUtil;->toBundleArrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v2

    .line 68
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0
.end method
