.class public Lcom/google/android/exoplr2avp/decoder/CryptoException;
.super Ljava/lang/Exception;
.source "CryptoException.java"


# instance fields
.field public final errorCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 30
    iput p1, p0, Lcom/google/android/exoplr2avp/decoder/CryptoException;->errorCode:I

    return-void
.end method
