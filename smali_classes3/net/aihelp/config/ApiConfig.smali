.class public Lnet/aihelp/config/ApiConfig;
.super Ljava/lang/Object;
.source "ApiConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/config/ApiConfig$Builder;
    }
.end annotation


# instance fields
.field private final entranceId:Ljava/lang/String;

.field private final welcomeMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lnet/aihelp/config/ApiConfig;->entranceId:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lnet/aihelp/config/ApiConfig;->welcomeMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEntranceId()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lnet/aihelp/config/ApiConfig;->entranceId:Ljava/lang/String;

    return-object v0
.end method

.method public getWelcomeMessage()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lnet/aihelp/config/ApiConfig;->welcomeMessage:Ljava/lang/String;

    return-object v0
.end method
