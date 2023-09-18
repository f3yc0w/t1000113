.class public Lcom/netease/yunxin/lite/util/LiteYuvHelper;
.super Ljava/lang/Object;
.source "LiteYuvHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native nativeToI420([BIII[B)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "src",
            "format",
            "width",
            "height",
            "dst"
        }
    .end annotation
.end method
