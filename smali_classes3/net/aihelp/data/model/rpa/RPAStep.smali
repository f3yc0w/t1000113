.class public Lnet/aihelp/data/model/rpa/RPAStep;
.super Ljava/lang/Object;
.source "RPAStep.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/data/model/rpa/RPAStep$Action;
    }
.end annotation


# static fields
.field public static final STEP_ACTION_PICKER:I = 0x4

.field public static final STEP_ADDING_ATTACHMENT:I = 0x6

.field public static final STEP_BOT_INPUT_MAIL:I = 0x2

.field public static final STEP_BOT_INPUT_NUMBER:I = 0x3

.field public static final STEP_BOT_INPUT_TEXT:I = 0x1

.field public static final STEP_DATE_PICKER:I = 0x5

.field public static final STEP_EVALUATE_FAQ:I = 0x9

.field public static final STEP_EVALUATE_SERVICE:I = 0x65

.field public static final STEP_FILLING_FORM:I = 0x7

.field public static final STEP_IGNORE_THIS:I = 0x68

.field public static final STEP_MANUAL_INPUT:I = 0x64

.field public static final STEP_NEW_CONVERSATION:I = 0x66

.field public static final STEP_SELF_SERVICE:I = 0x8

.field public static final STEP_STOP_AND_WAIT:I = 0x67


# instance fields
.field private actionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/aihelp/data/model/rpa/RPAStep$Action;",
            ">;"
        }
    .end annotation
.end field

.field private enableActionInput:Z

.field private enableSkip:Z

.field private enableUpload:Z

.field private nextStep:I

.field private skipHint:Ljava/lang/String;

.field private stepId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 25
    iput v0, p0, Lnet/aihelp/data/model/rpa/RPAStep;->nextStep:I

    return-void
.end method


# virtual methods
.method public getActionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/aihelp/data/model/rpa/RPAStep$Action;",
            ">;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lnet/aihelp/data/model/rpa/RPAStep;->actionList:Ljava/util/List;

    return-object v0
.end method

.method public getNextStep()I
    .locals 1

    .line 63
    iget v0, p0, Lnet/aihelp/data/model/rpa/RPAStep;->nextStep:I

    return v0
.end method

.method public getSkipHint()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lnet/aihelp/data/model/rpa/RPAStep;->skipHint:Ljava/lang/String;

    return-object v0
.end method

.method public getStepId()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lnet/aihelp/data/model/rpa/RPAStep;->stepId:Ljava/lang/String;

    return-object v0
.end method

.method public isEnableActionInput()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lnet/aihelp/data/model/rpa/RPAStep;->enableActionInput:Z

    return v0
.end method

.method public isEnableSkip()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lnet/aihelp/data/model/rpa/RPAStep;->enableSkip:Z

    return v0
.end method

.method public isEnableUpload()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Lnet/aihelp/data/model/rpa/RPAStep;->enableUpload:Z

    return v0
.end method

.method public setActionList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/aihelp/data/model/rpa/RPAStep$Action;",
            ">;)V"
        }
    .end annotation

    .line 83
    iput-object p1, p0, Lnet/aihelp/data/model/rpa/RPAStep;->actionList:Ljava/util/List;

    return-void
.end method

.method public setEnableActionInput(Z)V
    .locals 0

    .line 59
    iput-boolean p1, p0, Lnet/aihelp/data/model/rpa/RPAStep;->enableActionInput:Z

    return-void
.end method

.method public setEnableSkip(Z)V
    .locals 0

    .line 43
    iput-boolean p1, p0, Lnet/aihelp/data/model/rpa/RPAStep;->enableSkip:Z

    return-void
.end method

.method public setEnableUpload(Z)V
    .locals 0

    .line 51
    iput-boolean p1, p0, Lnet/aihelp/data/model/rpa/RPAStep;->enableUpload:Z

    return-void
.end method

.method public setNextStep(I)V
    .locals 0

    .line 67
    iput p1, p0, Lnet/aihelp/data/model/rpa/RPAStep;->nextStep:I

    return-void
.end method

.method public setSkipHint(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lnet/aihelp/data/model/rpa/RPAStep;->skipHint:Ljava/lang/String;

    return-void
.end method

.method public setStepId(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lnet/aihelp/data/model/rpa/RPAStep;->stepId:Ljava/lang/String;

    return-void
.end method
