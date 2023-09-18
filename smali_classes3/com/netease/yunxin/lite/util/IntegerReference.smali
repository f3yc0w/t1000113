.class public Lcom/netease/yunxin/lite/util/IntegerReference;
.super Ljava/lang/Object;
.source "IntegerReference.java"


# instance fields
.field public value:I


# direct methods
.method private constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/netease/yunxin/lite/util/IntegerReference;->value:I

    return-void
.end method

.method private getValue()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/netease/yunxin/lite/util/IntegerReference;->value:I

    return v0
.end method

.method private setValue(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 18
    iput p1, p0, Lcom/netease/yunxin/lite/util/IntegerReference;->value:I

    return-void
.end method
