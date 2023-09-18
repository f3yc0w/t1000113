.class public Lnet/aihelp/ui/cs/util/TicketStatusTracker;
.super Ljava/lang/Object;
.source "TicketStatusTracker.java"


# static fields
.field public static TICKET_ASSIGNED_TO_AGENT:I = 0x1

.field public static TICKET_ASSIGNED_TO_RPA_BOT:I = 0x2

.field public static TICKET_UNASSIGNED_WITH_AGENT:I = 0xb

.field public static TICKET_UNASSIGNED_WITH_BOT:I = 0xc

.field public static hasUnreadMsg:Z

.field public static isAppRatable:Z

.field public static isTicketActive:Z

.field public static isTicketFinished:Z

.field public static isTicketRejected:Z

.field public static isTicketWaitForAskingResolveStatus:Z

.field public static isTicketWaitForRating:Z

.field private static renderedTicketIds:Ljava/lang/StringBuilder;

.field public static ticketAssignType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/aihelp/ui/cs/util/TicketStatusTracker;->renderedTicketIds:Ljava/lang/StringBuilder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendRenderedTicketIds(Ljava/lang/String;Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 56
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sput-object p1, Lnet/aihelp/ui/cs/util/TicketStatusTracker;->renderedTicketIds:Ljava/lang/StringBuilder;

    .line 58
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 59
    sget-object p1, Lnet/aihelp/ui/cs/util/TicketStatusTracker;->renderedTicketIds:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method public static getRenderedTicketIds()Ljava/lang/String;
    .locals 1

    .line 64
    sget-object v0, Lnet/aihelp/ui/cs/util/TicketStatusTracker;->renderedTicketIds:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isTicketServingByAgent()Z
    .locals 2

    .line 43
    sget v0, Lnet/aihelp/ui/cs/util/TicketStatusTracker;->ticketAssignType:I

    sget v1, Lnet/aihelp/ui/cs/util/TicketStatusTracker;->TICKET_ASSIGNED_TO_AGENT:I

    if-eq v0, v1, :cond_1

    sget v1, Lnet/aihelp/ui/cs/util/TicketStatusTracker;->TICKET_UNASSIGNED_WITH_AGENT:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isTicketServingByAnswerBot()Z
    .locals 2

    .line 51
    sget v0, Lnet/aihelp/ui/cs/util/TicketStatusTracker;->ticketAssignType:I

    sget v1, Lnet/aihelp/ui/cs/util/TicketStatusTracker;->TICKET_UNASSIGNED_WITH_BOT:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isTicketServingByNobody()Z
    .locals 2

    .line 39
    sget v0, Lnet/aihelp/ui/cs/util/TicketStatusTracker;->ticketAssignType:I

    sget v1, Lnet/aihelp/ui/cs/util/TicketStatusTracker;->TICKET_UNASSIGNED_WITH_AGENT:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isTicketServingByRPA()Z
    .locals 2

    .line 47
    sget v0, Lnet/aihelp/ui/cs/util/TicketStatusTracker;->ticketAssignType:I

    sget v1, Lnet/aihelp/ui/cs/util/TicketStatusTracker;->TICKET_ASSIGNED_TO_RPA_BOT:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static resetTicketStatusFlags()V
    .locals 1

    const/4 v0, 0x0

    .line 76
    sput-boolean v0, Lnet/aihelp/ui/cs/util/TicketStatusTracker;->hasUnreadMsg:Z

    .line 77
    sput-boolean v0, Lnet/aihelp/ui/cs/util/TicketStatusTracker;->isTicketActive:Z

    .line 78
    sput-boolean v0, Lnet/aihelp/ui/cs/util/TicketStatusTracker;->isTicketWaitForAskingResolveStatus:Z

    .line 79
    sput-boolean v0, Lnet/aihelp/ui/cs/util/TicketStatusTracker;->isTicketWaitForRating:Z

    .line 80
    sput-boolean v0, Lnet/aihelp/ui/cs/util/TicketStatusTracker;->isTicketRejected:Z

    .line 81
    sput-boolean v0, Lnet/aihelp/ui/cs/util/TicketStatusTracker;->isTicketFinished:Z

    return-void
.end method

.method public static tryUploadLog(Z)V
    .locals 3

    const/4 v0, 0x1

    .line 86
    sput-boolean v0, Lnet/aihelp/common/Const;->TOGGLE_FETCH_MESSAGE:Z

    if-eqz p0, :cond_0

    .line 87
    sget-boolean p0, Lnet/aihelp/common/Const;->TOGGLE_UPLOAD_LOG:Z

    if-eqz p0, :cond_0

    sget-object p0, Lnet/aihelp/common/Const;->LOG_UPLOAD_PATH:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 88
    new-instance p0, Ljava/io/File;

    sget-object v0, Lnet/aihelp/common/Const;->LOG_UPLOAD_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    invoke-static {}, Lnet/aihelp/core/net/http/AIHelpRequest;->getInstance()Lnet/aihelp/core/net/http/AIHelpRequest;

    move-result-object v0

    sget-object v1, Lnet/aihelp/common/API;->UPLOAD_FILE_URL:Ljava/lang/String;

    new-instance v2, Lnet/aihelp/ui/cs/util/TicketStatusTracker$1;

    invoke-direct {v2}, Lnet/aihelp/ui/cs/util/TicketStatusTracker$1;-><init>()V

    invoke-virtual {v0, v1, p0, v2}, Lnet/aihelp/core/net/http/AIHelpRequest;->requestUpLoadFile(Ljava/lang/String;Ljava/io/File;Lnet/aihelp/core/net/http/callback/UploadCallback;)Lokhttp3/Call;

    :cond_0
    return-void
.end method

.method public static updateAssignTypeWithActiveStatus(ZI)V
    .locals 0

    .line 68
    sput-boolean p0, Lnet/aihelp/ui/cs/util/TicketStatusTracker;->isTicketActive:Z

    .line 69
    sput p1, Lnet/aihelp/ui/cs/util/TicketStatusTracker;->ticketAssignType:I

    if-nez p0, :cond_0

    .line 71
    sget p0, Lnet/aihelp/ui/cs/util/TicketStatusTracker;->TICKET_UNASSIGNED_WITH_BOT:I

    sput p0, Lnet/aihelp/ui/cs/util/TicketStatusTracker;->ticketAssignType:I

    :cond_0
    return-void
.end method
