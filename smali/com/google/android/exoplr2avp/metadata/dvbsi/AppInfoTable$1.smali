.class Lcom/google/android/exoplr2avp/metadata/dvbsi/AppInfoTable$1;
.super Ljava/lang/Object;
.source "AppInfoTable.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/metadata/dvbsi/AppInfoTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/exoplr2avp/metadata/dvbsi/AppInfoTable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/exoplr2avp/metadata/dvbsi/AppInfoTable;
    .locals 2

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 72
    new-instance v1, Lcom/google/android/exoplr2avp/metadata/dvbsi/AppInfoTable;

    invoke-direct {v1, p1, v0}, Lcom/google/android/exoplr2avp/metadata/dvbsi/AppInfoTable;-><init>(ILjava/lang/String;)V

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 67
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/metadata/dvbsi/AppInfoTable$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/exoplr2avp/metadata/dvbsi/AppInfoTable;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/google/android/exoplr2avp/metadata/dvbsi/AppInfoTable;
    .locals 0

    .line 77
    new-array p1, p1, [Lcom/google/android/exoplr2avp/metadata/dvbsi/AppInfoTable;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 67
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/metadata/dvbsi/AppInfoTable$1;->newArray(I)[Lcom/google/android/exoplr2avp/metadata/dvbsi/AppInfoTable;

    move-result-object p1

    return-object p1
.end method
