.class final Lnet/aihelp/core/util/logger/controller/LoggerDBController$LazyHolder;
.super Ljava/lang/Object;
.source "LoggerDBController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/util/logger/controller/LoggerDBController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LazyHolder"
.end annotation


# static fields
.field static final INSTANCE:Lnet/aihelp/core/util/logger/controller/LoggerDBController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 80
    new-instance v0, Lnet/aihelp/core/util/logger/controller/LoggerDBController;

    invoke-direct {v0}, Lnet/aihelp/core/util/logger/controller/LoggerDBController;-><init>()V

    sput-object v0, Lnet/aihelp/core/util/logger/controller/LoggerDBController$LazyHolder;->INSTANCE:Lnet/aihelp/core/util/logger/controller/LoggerDBController;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
