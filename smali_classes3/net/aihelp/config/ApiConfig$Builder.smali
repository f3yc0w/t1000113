.class public Lnet/aihelp/config/ApiConfig$Builder;
.super Ljava/lang/Object;
.source "ApiConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/config/ApiConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private entranceId:Ljava/lang/String;

.field private welcomeMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lnet/aihelp/config/ApiConfig;
    .locals 3

    .line 45
    new-instance v0, Lnet/aihelp/config/ApiConfig;

    iget-object v1, p0, Lnet/aihelp/config/ApiConfig$Builder;->entranceId:Ljava/lang/String;

    iget-object v2, p0, Lnet/aihelp/config/ApiConfig$Builder;->welcomeMessage:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lnet/aihelp/config/ApiConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public build(Ljava/lang/String;Ljava/lang/String;)Lnet/aihelp/config/ApiConfig;
    .locals 1

    .line 41
    new-instance v0, Lnet/aihelp/config/ApiConfig;

    invoke-direct {v0, p1, p2}, Lnet/aihelp/config/ApiConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public setEntranceId(Ljava/lang/String;)Lnet/aihelp/config/ApiConfig$Builder;
    .locals 0

    .line 23
    iput-object p1, p0, Lnet/aihelp/config/ApiConfig$Builder;->entranceId:Ljava/lang/String;

    return-object p0
.end method

.method public setWelcomeMessage(Ljava/lang/String;)Lnet/aihelp/config/ApiConfig$Builder;
    .locals 0

    .line 36
    iput-object p1, p0, Lnet/aihelp/config/ApiConfig$Builder;->welcomeMessage:Ljava/lang/String;

    return-object p0
.end method
