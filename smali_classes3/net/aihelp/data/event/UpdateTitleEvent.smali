.class public Lnet/aihelp/data/event/UpdateTitleEvent;
.super Lnet/aihelp/core/util/bus/event/EventCenter;
.source "UpdateTitleEvent.java"


# static fields
.field public static final CUSTOM_SERVICE:I = 0x1

.field public static final HELP_CENTER:I


# instance fields
.field private final icon:Ljava/lang/String;

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lnet/aihelp/core/util/bus/event/EventCenter;-><init>(I)V

    .line 16
    iput-object p2, p0, Lnet/aihelp/data/event/UpdateTitleEvent;->icon:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lnet/aihelp/data/event/UpdateTitleEvent;->title:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Lnet/aihelp/core/util/bus/event/EventCenter;-><init>()V

    const-string v0, ""

    .line 21
    iput-object v0, p0, Lnet/aihelp/data/event/UpdateTitleEvent;->icon:Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lnet/aihelp/data/event/UpdateTitleEvent;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getIcon()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lnet/aihelp/data/event/UpdateTitleEvent;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lnet/aihelp/data/event/UpdateTitleEvent;->title:Ljava/lang/String;

    return-object v0
.end method
