.class public Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$CheckResult;
.super Ljava/lang/Object;
.source "EmulatorCheckUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CheckResult"
.end annotation


# static fields
.field static final RESULT_EMULATOR:I = 0x1

.field static final RESULT_MAYBE_EMULATOR:I = 0x0

.field static final RESULT_UNKNOWN:I = 0x2


# instance fields
.field public result:I

.field public value:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "result",
            "value"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$CheckResult;->result:I

    .line 32
    iput-object p2, p0, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$CheckResult;->value:Ljava/lang/String;

    return-void
.end method
