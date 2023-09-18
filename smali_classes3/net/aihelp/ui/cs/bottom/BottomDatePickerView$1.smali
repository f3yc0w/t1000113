.class Lnet/aihelp/ui/cs/bottom/BottomDatePickerView$1;
.super Ljava/lang/Object;
.source "BottomDatePickerView.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;->showDatePicker(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lnet/aihelp/ui/cs/bottom/BottomDatePickerView$1;->this$0:Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 2

    .line 140
    iget-object p1, p0, Lnet/aihelp/ui/cs/bottom/BottomDatePickerView$1;->this$0:Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;

    invoke-static {p1, p2}, Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;->access$002(Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;I)I

    .line 141
    iget-object p1, p0, Lnet/aihelp/ui/cs/bottom/BottomDatePickerView$1;->this$0:Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;

    invoke-static {p1, p3}, Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;->access$102(Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;I)I

    .line 142
    iget-object p1, p0, Lnet/aihelp/ui/cs/bottom/BottomDatePickerView$1;->this$0:Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;

    invoke-static {p1, p4}, Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;->access$202(Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;I)I

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    .line 143
    iget-object p2, p0, Lnet/aihelp/ui/cs/bottom/BottomDatePickerView$1;->this$0:Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;

    invoke-static {p2}, Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;->access$000(Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, p1, p3

    .line 144
    iget-object p2, p0, Lnet/aihelp/ui/cs/bottom/BottomDatePickerView$1;->this$0:Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;

    invoke-static {p2}, Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;->access$100(Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;)I

    move-result p2

    const/4 p3, 0x1

    add-int/2addr p2, p3

    const-string p4, "0"

    const/16 v0, 0xa

    if-ge p2, v0, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/aihelp/ui/cs/bottom/BottomDatePickerView$1;->this$0:Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;

    invoke-static {v1}, Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;->access$100(Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;)I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lnet/aihelp/ui/cs/bottom/BottomDatePickerView$1;->this$0:Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;

    invoke-static {p2}, Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;->access$100(Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;)I

    move-result p2

    add-int/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :goto_0
    aput-object p2, p1, p3

    const/4 p2, 0x2

    .line 145
    iget-object p3, p0, Lnet/aihelp/ui/cs/bottom/BottomDatePickerView$1;->this$0:Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;

    invoke-static {p3}, Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;->access$200(Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;)I

    move-result p3

    if-ge p3, v0, :cond_1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lnet/aihelp/ui/cs/bottom/BottomDatePickerView$1;->this$0:Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;

    invoke-static {p4}, Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;->access$200(Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;)I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_1
    iget-object p3, p0, Lnet/aihelp/ui/cs/bottom/BottomDatePickerView$1;->this$0:Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;

    invoke-static {p3}, Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;->access$200(Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    :goto_1
    aput-object p3, p1, p2

    const-string p2, "%s%s%s"

    .line 143
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 146
    iget-object p2, p0, Lnet/aihelp/ui/cs/bottom/BottomDatePickerView$1;->this$0:Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;

    invoke-static {p2}, Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;->access$300(Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {p2, p1}, Lnet/aihelp/utils/Styles;->reRenderTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 147
    iget-object p2, p0, Lnet/aihelp/ui/cs/bottom/BottomDatePickerView$1;->this$0:Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;

    invoke-static {p2, p1}, Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;->access$400(Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;Ljava/lang/CharSequence;)V

    return-void
.end method
