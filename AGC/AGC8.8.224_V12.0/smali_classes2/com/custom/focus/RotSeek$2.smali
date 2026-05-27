.class Lcom/custom/focus/RotSeek$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/custom/focus/RotSeek;->handleAutoScroll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/custom/focus/RotSeek;


# direct methods
.method public constructor <init>(Lcom/custom/focus/RotSeek;)V
    .locals 0

    iput-object p1, p0, Lcom/custom/focus/RotSeek$2;->this$0:Lcom/custom/focus/RotSeek;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/custom/focus/RotSeek$2;->this$0:Lcom/custom/focus/RotSeek;

    invoke-static {v0}, Lcom/custom/focus/RotSeek;->access$200(Lcom/custom/focus/RotSeek;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/custom/focus/RotSeek$2;->this$0:Lcom/custom/focus/RotSeek;

    invoke-static {v0}, Lcom/custom/focus/RotSeek;->access$300(Lcom/custom/focus/RotSeek;)I

    move-result v0

    iget-object v1, p0, Lcom/custom/focus/RotSeek$2;->this$0:Lcom/custom/focus/RotSeek;

    invoke-static {v1}, Lcom/custom/focus/RotSeek;->access$400(Lcom/custom/focus/RotSeek;)I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, -0x1

    iget-object v2, p0, Lcom/custom/focus/RotSeek$2;->this$0:Lcom/custom/focus/RotSeek;

    invoke-static {v2}, Lcom/custom/focus/RotSeek;->access$500(Lcom/custom/focus/RotSeek;)I

    move-result v2

    const/4 v3, 0x0

    if-gt v0, v2, :cond_4

    iget-object v2, p0, Lcom/custom/focus/RotSeek$2;->this$0:Lcom/custom/focus/RotSeek;

    invoke-static {v2}, Lcom/custom/focus/RotSeek;->access$600(Lcom/custom/focus/RotSeek;)I

    move-result v2

    if-ge v0, v2, :cond_0

    goto :goto_3

    :cond_0
    iget-object v0, p0, Lcom/custom/focus/RotSeek$2;->this$0:Lcom/custom/focus/RotSeek;

    invoke-static {v0}, Lcom/custom/focus/RotSeek;->access$400(Lcom/custom/focus/RotSeek;)I

    move-result v0

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/custom/focus/RotSeek$2;->this$0:Lcom/custom/focus/RotSeek;

    invoke-static {v0}, Lcom/custom/focus/RotSeek;->access$400(Lcom/custom/focus/RotSeek;)I

    move-result v0

    add-int/2addr v0, v1

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/custom/focus/RotSeek$2;->this$0:Lcom/custom/focus/RotSeek;

    invoke-static {v0}, Lcom/custom/focus/RotSeek;->access$408(Lcom/custom/focus/RotSeek;)I

    :goto_0
    iget-object v0, p0, Lcom/custom/focus/RotSeek$2;->this$0:Lcom/custom/focus/RotSeek;

    invoke-static {v0}, Lcom/custom/focus/RotSeek;->access$400(Lcom/custom/focus/RotSeek;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/custom/focus/RotSeek;->access$320(Lcom/custom/focus/RotSeek;I)I

    iget-object v0, p0, Lcom/custom/focus/RotSeek$2;->this$0:Lcom/custom/focus/RotSeek;

    invoke-virtual {v0}, Lcom/custom/focus/RotSeek;->checkifCurrentValueHasChanged()V

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/custom/focus/RotSeek$2;->this$0:Lcom/custom/focus/RotSeek;

    invoke-static {v0}, Lcom/custom/focus/RotSeek;->access$400(Lcom/custom/focus/RotSeek;)I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/custom/focus/RotSeek$2;->this$0:Lcom/custom/focus/RotSeek;

    invoke-static {v0}, Lcom/custom/focus/RotSeek;->access$400(Lcom/custom/focus/RotSeek;)I

    move-result v0

    sub-int/2addr v0, v1

    if-gtz v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/custom/focus/RotSeek$2;->this$0:Lcom/custom/focus/RotSeek;

    invoke-static {v0}, Lcom/custom/focus/RotSeek;->access$410(Lcom/custom/focus/RotSeek;)I

    goto :goto_0

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/custom/focus/RotSeek$2;->this$0:Lcom/custom/focus/RotSeek;

    invoke-virtual {v0}, Lcom/custom/focus/RotSeek;->checkifCurrentValueHasChanged()V

    iget-object v0, p0, Lcom/custom/focus/RotSeek$2;->this$0:Lcom/custom/focus/RotSeek;

    invoke-static {v0, v3}, Lcom/custom/focus/RotSeek;->access$402(Lcom/custom/focus/RotSeek;I)I

    iget-object v0, p0, Lcom/custom/focus/RotSeek$2;->this$0:Lcom/custom/focus/RotSeek;

    invoke-static {v0}, Lcom/custom/focus/RotSeek;->access$000(Lcom/custom/focus/RotSeek;)I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/custom/focus/RotSeek;->setProgress(IZ)V

    move v1, v3

    :goto_2
    if-eqz v1, :cond_9

    iget-object v0, p0, Lcom/custom/focus/RotSeek$2;->this$0:Lcom/custom/focus/RotSeek;

    invoke-virtual {v0}, Lcom/custom/focus/RotSeek;->handleAutoScroll()V

    goto :goto_5

    :cond_4
    :goto_3
    iget-object v2, p0, Lcom/custom/focus/RotSeek$2;->this$0:Lcom/custom/focus/RotSeek;

    invoke-static {v2, v3}, Lcom/custom/focus/RotSeek;->access$202(Lcom/custom/focus/RotSeek;Z)Z

    iget-object v2, p0, Lcom/custom/focus/RotSeek$2;->this$0:Lcom/custom/focus/RotSeek;

    invoke-static {v2, v3}, Lcom/custom/focus/RotSeek;->access$402(Lcom/custom/focus/RotSeek;I)I

    iget-object v2, p0, Lcom/custom/focus/RotSeek$2;->this$0:Lcom/custom/focus/RotSeek;

    invoke-static {v2}, Lcom/custom/focus/RotSeek;->access$500(Lcom/custom/focus/RotSeek;)I

    move-result v2

    if-le v0, v2, :cond_5

    iget-object v0, p0, Lcom/custom/focus/RotSeek$2;->this$0:Lcom/custom/focus/RotSeek;

    invoke-static {v0}, Lcom/custom/focus/RotSeek;->access$700(Lcom/custom/focus/RotSeek;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    sub-int/2addr v2, v1

    :goto_4
    invoke-virtual {v0, v2, v1}, Lcom/custom/focus/RotSeek;->setProgress(IZ)V

    goto :goto_5

    :cond_5
    iget-object v2, p0, Lcom/custom/focus/RotSeek$2;->this$0:Lcom/custom/focus/RotSeek;

    invoke-static {v2}, Lcom/custom/focus/RotSeek;->access$600(Lcom/custom/focus/RotSeek;)I

    move-result v2

    if-ge v0, v2, :cond_6

    iget-object v0, p0, Lcom/custom/focus/RotSeek$2;->this$0:Lcom/custom/focus/RotSeek;

    invoke-virtual {v0, v3, v1}, Lcom/custom/focus/RotSeek;->setProgress(IZ)V

    goto :goto_5

    :cond_6
    iget-object v0, p0, Lcom/custom/focus/RotSeek$2;->this$0:Lcom/custom/focus/RotSeek;

    invoke-virtual {v0}, Lcom/custom/focus/RotSeek;->checkifCurrentValueHasChanged()V

    iget-object v0, p0, Lcom/custom/focus/RotSeek$2;->this$0:Lcom/custom/focus/RotSeek;

    invoke-static {v0}, Lcom/custom/focus/RotSeek;->access$000(Lcom/custom/focus/RotSeek;)I

    move-result v0

    iget-object v2, p0, Lcom/custom/focus/RotSeek$2;->this$0:Lcom/custom/focus/RotSeek;

    invoke-static {v2}, Lcom/custom/focus/RotSeek;->access$700(Lcom/custom/focus/RotSeek;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    sub-int/2addr v2, v1

    if-le v0, v2, :cond_7

    iget-object v0, p0, Lcom/custom/focus/RotSeek$2;->this$0:Lcom/custom/focus/RotSeek;

    invoke-static {v0}, Lcom/custom/focus/RotSeek;->access$700(Lcom/custom/focus/RotSeek;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    sub-int/2addr v2, v1

    invoke-static {v0, v2}, Lcom/custom/focus/RotSeek;->access$002(Lcom/custom/focus/RotSeek;I)I

    :cond_7
    iget-object v0, p0, Lcom/custom/focus/RotSeek$2;->this$0:Lcom/custom/focus/RotSeek;

    invoke-static {v0}, Lcom/custom/focus/RotSeek;->access$000(Lcom/custom/focus/RotSeek;)I

    move-result v0

    if-gez v0, :cond_8

    iget-object v0, p0, Lcom/custom/focus/RotSeek$2;->this$0:Lcom/custom/focus/RotSeek;

    invoke-static {v0, v3}, Lcom/custom/focus/RotSeek;->access$002(Lcom/custom/focus/RotSeek;I)I

    :cond_8
    iget-object v0, p0, Lcom/custom/focus/RotSeek$2;->this$0:Lcom/custom/focus/RotSeek;

    invoke-static {v0}, Lcom/custom/focus/RotSeek;->access$000(Lcom/custom/focus/RotSeek;)I

    move-result v2

    goto :goto_4

    :cond_9
    :goto_5
    iget-object v0, p0, Lcom/custom/focus/RotSeek$2;->this$0:Lcom/custom/focus/RotSeek;

    invoke-virtual {v0}, Lcom/custom/focus/RotSeek;->redraw()V

    :cond_a
    return-void
.end method
