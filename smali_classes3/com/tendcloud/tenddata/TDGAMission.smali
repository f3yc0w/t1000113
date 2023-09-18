.class public final Lcom/tendcloud/tenddata/TDGAMission;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendcloud/tenddata/TDGAMission$a;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onBegin(Ljava/lang/String;)V
    .locals 8

    .line 15
    invoke-static {}, Lcom/tendcloud/tenddata/game/ac;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "TDGAMission.onBegin()#SDK not initialized. "

    .line 16
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/ar;->eForDeveloper(Ljava/lang/String;)V

    return-void

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TDGAMission.onBegin()# missionId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ar;->iForDeveloper(Ljava/lang/String;)V

    .line 21
    sget-object v3, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    sget-object v4, Lcom/tendcloud/tenddata/TDGAMission$a;->START:Lcom/tendcloud/tenddata/TDGAMission$a;

    const-wide/16 v5, 0x0

    sget-object v7, Lcom/tendcloud/tenddata/game/a;->GAME:Lcom/tendcloud/tenddata/game/a;

    const-string v2, ""

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/tendcloud/tenddata/game/ac;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/TDGAAccount;Lcom/tendcloud/tenddata/TDGAMission$a;JLcom/tendcloud/tenddata/game/a;)V

    .line 22
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/as;->setMissionId(Ljava/lang/String;)V

    .line 23
    sget-object v0, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    if-eqz v0, :cond_1

    .line 24
    sget-object v0, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    invoke-virtual {v0, p0}, Lcom/tendcloud/tenddata/TDGAAccount;->a(Ljava/lang/String;)V

    .line 26
    :cond_1
    sput-object p0, Lcom/tendcloud/tenddata/TDGAMission;->a:Ljava/lang/String;

    return-void
.end method

.method public static onCompleted(Ljava/lang/String;)V
    .locals 9

    .line 31
    invoke-static {}, Lcom/tendcloud/tenddata/game/ac;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "TDGAMission.onCompleted()#SDK not initialized. "

    .line 32
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/ar;->eForDeveloper(Ljava/lang/String;)V

    return-void

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TDGAMission.onCompleted()# missionId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ar;->iForDeveloper(Ljava/lang/String;)V

    .line 36
    sget-object v0, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    .line 37
    invoke-virtual {v0, p0}, Lcom/tendcloud/tenddata/TDGAAccount;->b(Ljava/lang/String;)J

    move-result-wide v0

    :goto_0
    move-wide v6, v0

    .line 38
    sget-object v4, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    sget-object v5, Lcom/tendcloud/tenddata/TDGAMission$a;->COMPLETED:Lcom/tendcloud/tenddata/TDGAMission$a;

    sget-object v8, Lcom/tendcloud/tenddata/game/a;->GAME:Lcom/tendcloud/tenddata/game/a;

    const-string v3, ""

    move-object v2, p0

    invoke-static/range {v2 .. v8}, Lcom/tendcloud/tenddata/game/ac;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/TDGAAccount;Lcom/tendcloud/tenddata/TDGAMission$a;JLcom/tendcloud/tenddata/game/a;)V

    const-string p0, ""

    .line 40
    sput-object p0, Lcom/tendcloud/tenddata/TDGAMission;->a:Ljava/lang/String;

    .line 41
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/as;->setMissionId(Ljava/lang/String;)V

    return-void
.end method

.method public static onFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 46
    invoke-static {}, Lcom/tendcloud/tenddata/game/ac;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "TDGAMission.onFailed#SDK not initialized. "

    .line 47
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/ar;->eForDeveloper(Ljava/lang/String;)V

    return-void

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TDGAMission.onFailed()# missionId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " cause:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ar;->iForDeveloper(Ljava/lang/String;)V

    .line 51
    sget-object v0, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    .line 52
    invoke-virtual {v0, p0}, Lcom/tendcloud/tenddata/TDGAAccount;->b(Ljava/lang/String;)J

    move-result-wide v0

    :goto_0
    move-wide v6, v0

    .line 53
    sget-object v4, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    sget-object v5, Lcom/tendcloud/tenddata/TDGAMission$a;->FAILED:Lcom/tendcloud/tenddata/TDGAMission$a;

    sget-object v8, Lcom/tendcloud/tenddata/game/a;->GAME:Lcom/tendcloud/tenddata/game/a;

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v2 .. v8}, Lcom/tendcloud/tenddata/game/ac;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/TDGAAccount;Lcom/tendcloud/tenddata/TDGAMission$a;JLcom/tendcloud/tenddata/game/a;)V

    const-string p0, ""

    .line 55
    sput-object p0, Lcom/tendcloud/tenddata/TDGAMission;->a:Ljava/lang/String;

    .line 56
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/as;->setMissionId(Ljava/lang/String;)V

    return-void
.end method
