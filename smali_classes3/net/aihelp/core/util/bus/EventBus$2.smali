.class synthetic Lnet/aihelp/core/util/bus/EventBus$2;
.super Ljava/lang/Object;
.source "EventBus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/util/bus/EventBus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$net$aihelp$core$util$bus$ThreadMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 431
    invoke-static {}, Lnet/aihelp/core/util/bus/ThreadMode;->values()[Lnet/aihelp/core/util/bus/ThreadMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lnet/aihelp/core/util/bus/EventBus$2;->$SwitchMap$net$aihelp$core$util$bus$ThreadMode:[I

    :try_start_0
    sget-object v1, Lnet/aihelp/core/util/bus/ThreadMode;->POSTING:Lnet/aihelp/core/util/bus/ThreadMode;

    invoke-virtual {v1}, Lnet/aihelp/core/util/bus/ThreadMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lnet/aihelp/core/util/bus/EventBus$2;->$SwitchMap$net$aihelp$core$util$bus$ThreadMode:[I

    sget-object v1, Lnet/aihelp/core/util/bus/ThreadMode;->MAIN:Lnet/aihelp/core/util/bus/ThreadMode;

    invoke-virtual {v1}, Lnet/aihelp/core/util/bus/ThreadMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lnet/aihelp/core/util/bus/EventBus$2;->$SwitchMap$net$aihelp$core$util$bus$ThreadMode:[I

    sget-object v1, Lnet/aihelp/core/util/bus/ThreadMode;->MAIN_ORDERED:Lnet/aihelp/core/util/bus/ThreadMode;

    invoke-virtual {v1}, Lnet/aihelp/core/util/bus/ThreadMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lnet/aihelp/core/util/bus/EventBus$2;->$SwitchMap$net$aihelp$core$util$bus$ThreadMode:[I

    sget-object v1, Lnet/aihelp/core/util/bus/ThreadMode;->BACKGROUND:Lnet/aihelp/core/util/bus/ThreadMode;

    invoke-virtual {v1}, Lnet/aihelp/core/util/bus/ThreadMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lnet/aihelp/core/util/bus/EventBus$2;->$SwitchMap$net$aihelp$core$util$bus$ThreadMode:[I

    sget-object v1, Lnet/aihelp/core/util/bus/ThreadMode;->ASYNC:Lnet/aihelp/core/util/bus/ThreadMode;

    invoke-virtual {v1}, Lnet/aihelp/core/util/bus/ThreadMode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method
