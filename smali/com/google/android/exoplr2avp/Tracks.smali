.class public final Lcom/google/android/exoplr2avp/Tracks;
.super Ljava/lang/Object;
.source "Tracks.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/Bundleable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/Tracks$Group;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/exoplr2avp/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplr2avp/Bundleable$Creator<",
            "Lcom/google/android/exoplr2avp/Tracks;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY:Lcom/google/android/exoplr2avp/Tracks;

.field private static final FIELD_TRACK_GROUPS:I


# instance fields
.field private final groups:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplr2avp/Tracks$Group;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 273
    new-instance v0, Lcom/google/android/exoplr2avp/Tracks;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplr2avp/Tracks;-><init>(Ljava/util/List;)V

    sput-object v0, Lcom/google/android/exoplr2avp/Tracks;->EMPTY:Lcom/google/android/exoplr2avp/Tracks;

    .line 400
    sget-object v0, Lcom/google/android/exoplr2avp/-$$Lambda$Tracks$C-vtkQW4s9lXvEe5Lp0ORt6zclk;->INSTANCE:Lcom/google/android/exoplr2avp/-$$Lambda$Tracks$C-vtkQW4s9lXvEe5Lp0ORt6zclk;

    sput-object v0, Lcom/google/android/exoplr2avp/Tracks;->CREATOR:Lcom/google/android/exoplr2avp/Bundleable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/Tracks$Group;",
            ">;)V"
        }
    .end annotation

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method private static keyForField(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x24

    .line 412
    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$static$0(Landroid/os/Bundle;)Lcom/google/android/exoplr2avp/Tracks;
    .locals 1

    const/4 v0, 0x0

    .line 403
    invoke-static {v0}, Lcom/google/android/exoplr2avp/Tracks;->keyForField(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-nez p0, :cond_0

    .line 406
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    goto :goto_0

    .line 407
    :cond_0
    sget-object v0, Lcom/google/android/exoplr2avp/Tracks$Group;->CREATOR:Lcom/google/android/exoplr2avp/Bundleable$Creator;

    invoke-static {v0, p0}, Lcom/google/android/exoplr2avp/util/BundleableUtil;->fromBundleList(Lcom/google/android/exoplr2avp/Bundleable$Creator;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    .line 408
    :goto_0
    new-instance v0, Lcom/google/android/exoplr2avp/Tracks;

    invoke-direct {v0, p0}, Lcom/google/android/exoplr2avp/Tracks;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public containsType(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 298
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplr2avp/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 299
    iget-object v2, p0, Lcom/google/android/exoplr2avp/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplr2avp/Tracks$Group;

    invoke-virtual {v2}, Lcom/google/android/exoplr2avp/Tracks$Group;->getType()I

    move-result v2

    if-ne v2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 369
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 372
    :cond_1
    check-cast p1, Lcom/google/android/exoplr2avp/Tracks;

    .line 373
    iget-object v0, p0, Lcom/google/android/exoplr2avp/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    iget-object p1, p1, Lcom/google/android/exoplr2avp/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getGroups()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplr2avp/Tracks$Group;",
            ">;"
        }
    .end annotation

    .line 288
    iget-object v0, p0, Lcom/google/android/exoplr2avp/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/google/android/exoplr2avp/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/google/android/exoplr2avp/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isTypeSelected(I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 355
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplr2avp/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 356
    iget-object v2, p0, Lcom/google/android/exoplr2avp/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplr2avp/Tracks$Group;

    .line 357
    invoke-virtual {v2}, Lcom/google/android/exoplr2avp/Tracks$Group;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/google/android/exoplr2avp/Tracks$Group;->getType()I

    move-result v2

    if-ne v2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public isTypeSupported(I)Z
    .locals 1

    const/4 v0, 0x0

    .line 311
    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplr2avp/Tracks;->isTypeSupported(IZ)Z

    move-result p1

    return p1
.end method

.method public isTypeSupported(IZ)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 325
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplr2avp/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 326
    iget-object v2, p0, Lcom/google/android/exoplr2avp/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplr2avp/Tracks$Group;

    invoke-virtual {v2}, Lcom/google/android/exoplr2avp/Tracks$Group;->getType()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 327
    iget-object v2, p0, Lcom/google/android/exoplr2avp/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplr2avp/Tracks$Group;

    invoke-virtual {v2, p2}, Lcom/google/android/exoplr2avp/Tracks$Group;->isSupported(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public isTypeSupportedOrEmpty(I)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 341
    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplr2avp/Tracks;->isTypeSupportedOrEmpty(IZ)Z

    move-result p1

    return p1
.end method

.method public isTypeSupportedOrEmpty(IZ)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 350
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/Tracks;->containsType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplr2avp/Tracks;->isTypeSupported(IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 394
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    .line 395
    invoke-static {v1}, Lcom/google/android/exoplr2avp/Tracks;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplr2avp/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    invoke-static {v2}, Lcom/google/android/exoplr2avp/util/BundleableUtil;->toBundleArrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0
.end method
