.class public Lcom/google/android/exoplr2avp/metadata/flac/VorbisComment;
.super Ljava/lang/Object;
.source "VorbisComment.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/metadata/Metadata$Entry;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/exoplr2avp/metadata/flac/VorbisComment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final key:Ljava/lang/String;

.field public final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 113
    new-instance v0, Lcom/google/android/exoplr2avp/metadata/flac/VorbisComment$1;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/metadata/flac/VorbisComment$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplr2avp/metadata/flac/VorbisComment;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplr2avp/metadata/flac/VorbisComment;->key:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/exoplr2avp/metadata/flac/VorbisComment;->value:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/android/exoplr2avp/metadata/flac/VorbisComment;->key:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/google/android/exoplr2avp/metadata/flac/VorbisComment;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 85
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 88
    :cond_1
    check-cast p1, Lcom/google/android/exoplr2avp/metadata/flac/VorbisComment;

    .line 89
    iget-object v2, p0, Lcom/google/android/exoplr2avp/metadata/flac/VorbisComment;->key:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplr2avp/metadata/flac/VorbisComment;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplr2avp/metadata/flac/VorbisComment;->value:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/exoplr2avp/metadata/flac/VorbisComment;->value:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method public synthetic getWrappedMetadataBytes()[B
    .locals 1

    invoke-static {p0}, Lcom/google/android/exoplr2avp/metadata/Metadata$Entry$-CC;->$default$getWrappedMetadataBytes(Lcom/google/android/exoplr2avp/metadata/Metadata$Entry;)[B

    move-result-object v0

    return-object v0
.end method

.method public synthetic getWrappedMetadataFormat()Lcom/google/android/exoplr2avp/Format;
    .locals 1

    invoke-static {p0}, Lcom/google/android/exoplr2avp/metadata/Metadata$Entry$-CC;->$default$getWrappedMetadataFormat(Lcom/google/android/exoplr2avp/metadata/Metadata$Entry;)Lcom/google/android/exoplr2avp/Format;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/google/android/exoplr2avp/metadata/flac/VorbisComment;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 96
    iget-object v0, p0, Lcom/google/android/exoplr2avp/metadata/flac/VorbisComment;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public populateMediaMetadata(Lcom/google/android/exoplr2avp/MediaMetadata$Builder;)V
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/google/android/exoplr2avp/metadata/flac/VorbisComment;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "ARTIST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_1
    const-string v1, "ALBUMARTIST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_2
    const-string v1, "DESCRIPTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "TITLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_4
    const-string v1, "ALBUM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 59
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/metadata/flac/VorbisComment;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/MediaMetadata$Builder;->setArtist(Ljava/lang/CharSequence;)Lcom/google/android/exoplr2avp/MediaMetadata$Builder;

    goto :goto_1

    .line 65
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/exoplr2avp/metadata/flac/VorbisComment;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/MediaMetadata$Builder;->setAlbumArtist(Ljava/lang/CharSequence;)Lcom/google/android/exoplr2avp/MediaMetadata$Builder;

    goto :goto_1

    .line 68
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/exoplr2avp/metadata/flac/VorbisComment;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/MediaMetadata$Builder;->setDescription(Ljava/lang/CharSequence;)Lcom/google/android/exoplr2avp/MediaMetadata$Builder;

    goto :goto_1

    .line 56
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/exoplr2avp/metadata/flac/VorbisComment;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/MediaMetadata$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/exoplr2avp/MediaMetadata$Builder;

    goto :goto_1

    .line 62
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/exoplr2avp/metadata/flac/VorbisComment;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/MediaMetadata$Builder;->setAlbumTitle(Ljava/lang/CharSequence;)Lcom/google/android/exoplr2avp/MediaMetadata$Builder;

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x3b7864f -> :sswitch_4
        0x4c22a38 -> :sswitch_3
        0x198917dc -> :sswitch_2
        0x681d2256 -> :sswitch_1
        0x7395d347 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VC: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/metadata/flac/VorbisComment;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/metadata/flac/VorbisComment;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 104
    iget-object p2, p0, Lcom/google/android/exoplr2avp/metadata/flac/VorbisComment;->key:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    iget-object p2, p0, Lcom/google/android/exoplr2avp/metadata/flac/VorbisComment;->value:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
