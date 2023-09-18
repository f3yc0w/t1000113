.class public final Lcom/google/android/exoplr2avp/source/TrackGroup;
.super Ljava/lang/Object;
.source "TrackGroup.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/Bundleable;


# static fields
.field public static final CREATOR:Lcom/google/android/exoplr2avp/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplr2avp/Bundleable$Creator<",
            "Lcom/google/android/exoplr2avp/source/TrackGroup;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_FORMATS:I = 0x0

.field private static final FIELD_ID:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TrackGroup"


# instance fields
.field private final formats:[Lcom/google/android/exoplr2avp/Format;

.field private hashCode:I

.field public final id:Ljava/lang/String;

.field public final length:I

.field public final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 187
    sget-object v0, Lcom/google/android/exoplr2avp/source/-$$Lambda$TrackGroup$oYtTwFEKnyU80zII42uE80guYGc;->INSTANCE:Lcom/google/android/exoplr2avp/source/-$$Lambda$TrackGroup$oYtTwFEKnyU80zII42uE80guYGc;

    sput-object v0, Lcom/google/android/exoplr2avp/source/TrackGroup;->CREATOR:Lcom/google/android/exoplr2avp/Bundleable$Creator;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Lcom/google/android/exoplr2avp/Format;)V
    .locals 2

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    array-length v0, p2

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkArgument(Z)V

    .line 93
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/TrackGroup;->id:Ljava/lang/String;

    .line 94
    iput-object p2, p0, Lcom/google/android/exoplr2avp/source/TrackGroup;->formats:[Lcom/google/android/exoplr2avp/Format;

    .line 95
    array-length p1, p2

    iput p1, p0, Lcom/google/android/exoplr2avp/source/TrackGroup;->length:I

    .line 96
    aget-object p1, p2, v1

    iget-object p1, p1, Lcom/google/android/exoplr2avp/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 98
    aget-object p1, p2, v1

    iget-object p1, p1, Lcom/google/android/exoplr2avp/Format;->containerMimeType:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result p1

    .line 100
    :cond_1
    iput p1, p0, Lcom/google/android/exoplr2avp/source/TrackGroup;->type:I

    .line 101
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/source/TrackGroup;->verifyCorrectness()V

    return-void
.end method

.method public varargs constructor <init>([Lcom/google/android/exoplr2avp/Format;)V
    .locals 1

    const-string v0, ""

    .line 82
    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplr2avp/source/TrackGroup;-><init>(Ljava/lang/String;[Lcom/google/android/exoplr2avp/Format;)V

    return-void
.end method

.method private static keyForField(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x24

    .line 200
    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$static$0(Landroid/os/Bundle;)Lcom/google/android/exoplr2avp/source/TrackGroup;
    .locals 4

    const/4 v0, 0x0

    .line 190
    invoke-static {v0}, Lcom/google/android/exoplr2avp/source/TrackGroup;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_0

    .line 193
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    goto :goto_0

    .line 194
    :cond_0
    sget-object v2, Lcom/google/android/exoplr2avp/Format;->CREATOR:Lcom/google/android/exoplr2avp/Bundleable$Creator;

    invoke-static {v2, v1}, Lcom/google/android/exoplr2avp/util/BundleableUtil;->fromBundleList(Lcom/google/android/exoplr2avp/Bundleable$Creator;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    :goto_0
    const/4 v2, 0x1

    .line 195
    invoke-static {v2}, Lcom/google/android/exoplr2avp/source/TrackGroup;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 196
    new-instance v2, Lcom/google/android/exoplr2avp/source/TrackGroup;

    new-array v0, v0, [Lcom/google/android/exoplr2avp/Format;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplr2avp/Format;

    invoke-direct {v2, p0, v0}, Lcom/google/android/exoplr2avp/source/TrackGroup;-><init>(Ljava/lang/String;[Lcom/google/android/exoplr2avp/Format;)V

    return-object v2
.end method

.method private static logErrorMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 245
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Different "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " combined in one TrackGroup: \'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' (track 0) and \'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' (track "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string p0, "TrackGroup"

    const-string p1, ""

    invoke-static {p0, p1, v0}, Lcom/google/android/exoplr2avp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static normalizeLanguage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    const-string/jumbo v0, "und"

    .line 232
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string p0, ""

    :cond_1
    return-object p0
.end method

.method private static normalizeRoleFlags(I)I
    .locals 0

    or-int/lit16 p0, p0, 0x4000

    return p0
.end method

.method private verifyCorrectness()V
    .locals 6

    .line 208
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/TrackGroup;->formats:[Lcom/google/android/exoplr2avp/Format;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/google/android/exoplr2avp/Format;->language:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/source/TrackGroup;->normalizeLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 209
    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/TrackGroup;->formats:[Lcom/google/android/exoplr2avp/Format;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/google/android/exoplr2avp/Format;->roleFlags:I

    invoke-static {v2}, Lcom/google/android/exoplr2avp/source/TrackGroup;->normalizeRoleFlags(I)I

    move-result v2

    const/4 v3, 0x1

    .line 210
    :goto_0
    iget-object v4, p0, Lcom/google/android/exoplr2avp/source/TrackGroup;->formats:[Lcom/google/android/exoplr2avp/Format;

    array-length v5, v4

    if-ge v3, v5, :cond_2

    .line 211
    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/google/android/exoplr2avp/Format;->language:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/exoplr2avp/source/TrackGroup;->normalizeLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 212
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/TrackGroup;->formats:[Lcom/google/android/exoplr2avp/Format;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/google/android/exoplr2avp/Format;->language:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/TrackGroup;->formats:[Lcom/google/android/exoplr2avp/Format;

    aget-object v1, v1, v3

    iget-object v1, v1, Lcom/google/android/exoplr2avp/Format;->language:Ljava/lang/String;

    const-string v2, "languages"

    invoke-static {v2, v0, v1, v3}, Lcom/google/android/exoplr2avp/source/TrackGroup;->logErrorMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 219
    :cond_0
    iget-object v4, p0, Lcom/google/android/exoplr2avp/source/TrackGroup;->formats:[Lcom/google/android/exoplr2avp/Format;

    aget-object v4, v4, v3

    iget v4, v4, Lcom/google/android/exoplr2avp/Format;->roleFlags:I

    invoke-static {v4}, Lcom/google/android/exoplr2avp/source/TrackGroup;->normalizeRoleFlags(I)I

    move-result v4

    if-eq v2, v4, :cond_1

    .line 220
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/TrackGroup;->formats:[Lcom/google/android/exoplr2avp/Format;

    aget-object v0, v0, v1

    iget v0, v0, Lcom/google/android/exoplr2avp/Format;->roleFlags:I

    .line 222
    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/TrackGroup;->formats:[Lcom/google/android/exoplr2avp/Format;

    aget-object v1, v1, v3

    iget v1, v1, Lcom/google/android/exoplr2avp/Format;->roleFlags:I

    .line 223
    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "role flags"

    .line 220
    invoke-static {v2, v0, v1, v3}, Lcom/google/android/exoplr2avp/source/TrackGroup;->logErrorMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public copyWithId(Ljava/lang/String;)Lcom/google/android/exoplr2avp/source/TrackGroup;
    .locals 2

    .line 112
    new-instance v0, Lcom/google/android/exoplr2avp/source/TrackGroup;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/TrackGroup;->formats:[Lcom/google/android/exoplr2avp/Format;

    invoke-direct {v0, p1, v1}, Lcom/google/android/exoplr2avp/source/TrackGroup;-><init>(Ljava/lang/String;[Lcom/google/android/exoplr2avp/Format;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 159
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 162
    :cond_1
    check-cast p1, Lcom/google/android/exoplr2avp/source/TrackGroup;

    .line 163
    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/TrackGroup;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplr2avp/source/TrackGroup;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/TrackGroup;->formats:[Lcom/google/android/exoplr2avp/Format;

    iget-object p1, p1, Lcom/google/android/exoplr2avp/source/TrackGroup;->formats:[Lcom/google/android/exoplr2avp/Format;

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getFormat(I)Lcom/google/android/exoplr2avp/Format;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/TrackGroup;->formats:[Lcom/google/android/exoplr2avp/Format;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public hashCode()I
    .locals 2

    .line 145
    iget v0, p0, Lcom/google/android/exoplr2avp/source/TrackGroup;->hashCode:I

    if-nez v0, :cond_0

    const/16 v0, 0x20f

    .line 147
    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/TrackGroup;->id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 148
    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/TrackGroup;->formats:[Lcom/google/android/exoplr2avp/Format;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 149
    iput v0, p0, Lcom/google/android/exoplr2avp/source/TrackGroup;->hashCode:I

    .line 151
    :cond_0
    iget v0, p0, Lcom/google/android/exoplr2avp/source/TrackGroup;->hashCode:I

    return v0
.end method

.method public indexOf(Lcom/google/android/exoplr2avp/Format;)I
    .locals 3

    const/4 v0, 0x0

    .line 135
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/TrackGroup;->formats:[Lcom/google/android/exoplr2avp/Format;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 136
    aget-object v1, v1, v0

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 179
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    .line 181
    invoke-static {v1}, Lcom/google/android/exoplr2avp/source/TrackGroup;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/TrackGroup;->formats:[Lcom/google/android/exoplr2avp/Format;

    invoke-static {v2}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplr2avp/util/BundleableUtil;->toBundleArrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v2

    .line 180
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const/4 v1, 0x1

    .line 182
    invoke-static {v1}, Lcom/google/android/exoplr2avp/source/TrackGroup;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/TrackGroup;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
