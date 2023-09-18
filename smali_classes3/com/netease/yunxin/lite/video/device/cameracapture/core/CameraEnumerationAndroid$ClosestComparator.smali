.class abstract Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$ClosestComparator;
.super Ljava/lang/Object;
.source "CameraEnumerationAndroid.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ClosestComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "TT;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$1;)V
    .locals 0

    .line 148
    invoke-direct {p0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$ClosestComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "t1",
            "t2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 154
    invoke-virtual {p0, p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$ClosestComparator;->diff(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p2}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$ClosestComparator;->diff(Ljava/lang/Object;)I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method abstract diff(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "supportedParameter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method
