.class Lcom/custom/lut/RotSeek$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/custom/lut/RotSeek;->handleAutoScroll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/custom/lut/RotSeek;


# direct methods
.method public constructor <init>(Lcom/custom/lut/RotSeek;)V
    .locals 0

    iput-object p1, p0, Lcom/custom/lut/RotSeek$2;->this$0:Lcom/custom/lut/RotSeek;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/custom/lut/RotSeek$2;->this$0:Lcom/custom/lut/RotSeek;

    invoke-static {v0}, Lcom/custom/lut/RotSeek;->access$200(Lcom/custom/lut/RotSeek;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/custom/lut/RotSeek$2;->this$0:Lcom/custom/lut/RotSeek;

    invoke-static {v0}, Lcom/custom/lut/RotSeek;->access$300(Lcom/custom/lut/RotSeek;)I

    move-result v0

    iget-object v1, p0, Lcom/custom/lut/RotSeek$2;->this$0:Lcom/custom/lut/RotSeek;

    invoke-static {v1}, Lcom/custom/lut/RotSeek;->access$400(Lcom/custom/lut/RotSeek;)I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, -0x1

    iget-object v2, p0, Lcom/custom/lut/RotSeek$2;->this$0:Lcom/custom/lut/RotSeek;

    invoke-static {v2}, Lcom/custom/lut/RotSeek;->access$500(Lcom/custom/lut/RotSeek;)I

    move-result v2

    const/4 v3, 0x0

    if-gt v0, v2, :cond_4

    iget-object v2, p0, Lcom/custom/lut/RotSeek$2;->this$0:Lcom/custom/lut/RotSeek;

    invoke-static {v2}, Lcom/custom/lut/RotSeek;->access$600(Lcom/custom/lut/RotSeek;)I

    move-result v2

    if-ge v0, v2, :cond_0

    goto :goto_3

    :cond_0
    iget-object v0, p0, Lcom/custom/lut/RotSeek$2;->this$0:Lcom/custom/lut/RotSeek;

    invoke-static {v0}, Lcom/custom/lut/RotSeek;->access$400(Lcom/custom/lut/RotSeek;)I

    move-result v0

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/custom/lut/RotSeek$2;->this$0:Lcom/custom/lut/RotSeek;

    invoke-static {v0}, Lcom/custom/lut/RotSeek;->access$400(Lcom/custom/lut/RotSeek;)I

    move-result v0

    add-int/2addr v0, v1

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/custom/lut/RotSeek$2;->this$0:Lcom/custom/lut/RotSeek;

    invoke-static {v0}, Lcom/custom/lut/RotSeek;->access$408(Lcom/custom/lut/RotSeek;)I

    :goto_0
    iget-object v0, p0, Lcom/custom/lut/RotSeek$2;->this$0:Lcom/custom/lut/RotSeek;

    invoke-static {v0}, Lcom/custom/lut/RotSeek;->access$400(Lcom/custom/lut/RotSeek;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/custom/lut/RotSeek;->access$320(Lcom/custom/lut/RotSeek;I)I

    iget-object v0, p0, Lcom/custom/lut/RotSeek$2;->this$0:Lcom/custom/lut/RotSeek;

    invoke-virtual {v0}, Lcom/custom/lut/RotSeek;->checkifCurrentValueHasChanged()V

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/custom/lut/RotSeek$2;->this$0:Lcom/custom/lut/RotSeek;

    invoke-static {v0}, Lcom/custom/lut/RotSeek;->access$400(Lcom/custom/lut/RotSeek;)I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/custom/lut/RotSeek$2;->this$0:Lcom/custom/lut/RotSeek;

    invoke-static {v0}, Lcom/custom/lut/RotSeek;->access$400(Lcom/custom/lut/RotSeek;)I

    move-result v0

    sub-int/2addr v0, v1

    if-gtz v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/custom/lut/RotSeek$2;->this$0:Lcom/custom/lut/RotSeek;

    invoke-static {v0}, Lcom/custom/lut/RotSeek;->access$410(Lcom/custom/lut/RotSeek;)I

    goto :goto_0

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/custom/lut/RotSeek$2;->this$0:Lcom/custom/lut/RotSeek;

    invoke-virtual {v0}, Lcom/custom/lut/RotSeek;->checkifCurrentValueHasChanged()V

    iget-object v0, p0, Lcom/custom/lut/RotSeek$2;->this$0:Lcom/custom/lut/RotSeek;

    invoke-static {v0, v3}, Lcom/custom/lut/RotSeek;->access$402(Lcom/custom/lut/RotSeek;I)I

    iget-object v0, p0, Lcom/custom/lut/RotSeek$2;->this$0:Lcom/custom/lut/RotSeek;

    invoke-static {v0}, Lcom/custom/lut/RotSeek;->access$000(Lcom/custom/lut/RotSeek;)I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/custom/lut/RotSeek;->setProgress(IZ)V

    move v1, v3

    :goto_2
    if-eqz v1, :cond_9

    iget-object v0, p0, Lcom/custom/lut/RotSeek$2;->this$0:Lcom/custom/lut/RotSeek;

    invoke-virtual {v0}, Lcom/custom/lut/RotSeek;->handleAutoScroll()V

    goto :goto_5

    :cond_4
    :goto_3
    iget-object v2, p0, Lcom/custom/lut/RotSeek$2;->this$0:Lcom/custom/lut/RotSeek;

    invoke-static {v2, v3}, Lcom/custom/lut/RotSeek;->access$202(Lcom/custom/lut/RotSeek;Z)Z

    iget-object v2, p0, Lcom/custom/lut/RotSeek$2;->this$0:Lcom/custom/lut/RotSeek;

    invoke-static {v2, v3}, Lcom/custom/lut/RotSeek;->access$402(Lcom/custom/lut/RotSeek;I)I

    iget-object v2, p0, Lcom/custom/lut/RotSeek$2;->this$0:Lcom/custom/lut/RotSeek;

    invoke-static {v2}, Lcom/custom/lut/RotSeek;->access$500(Lcom/custom/lut/RotSeek;)I

    move-result v2

    if-le v0, v2, :cond_5

    iget-object v0, p0, Lcom/custom/lut/RotSeek$2;->this$0:Lcom/custom/lut/RotSeek;

    invoke-static {v0}, Lcom/custom/lut/RotSeek;->access$700(Lcom/custom/lut/RotSeek;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    sub-int/2addr v2, v1

    :goto_4
    invoke-virtual {v0, v2, v1}, Lcom/custom/lut/RotSeek;->setProgress(IZ)V

    goto :goto_5

    :cond_5
    iget-object v2, p0, Lcom/custom/lut/RotSeek$2;->this$0:Lcom/custom/lut/RotSeek;

    invoke-static {v2}, Lcom/custom/lut/RotSeek;->access$600(Lcom/custom/lut/RotSeek;)I

    move-result v2

    if-ge v0, v2, :cond_6

    iget-object v0, p0, Lcom/custom/lut/RotSeek$2;->this$0:Lcom/custom/lut/RotSeek;

    invoke-virtual {v0, v3, v1}, Lcom/custom/lut/RotSeek;->setProgress(IZ)V

    goto :goto_5

    :cond_6
    iget-object v0, p0, Lcom/custom/lut/RotSeek$2;->this$0:Lcom/custom/lut/RotSeek;

    invoke-virtual {v0}, Lcom/custom/lut/RotSeek;->checkifCurrentValueHasChanged()V

    iget-object v0, p0, Lcom/custom/lut/RotSeek$2;->this$0:Lcom/custom/lut/RotSeek;

    invoke-static {v0}, Lcom/custom/lut/RotSeek;->access$000(Lcom/custom/lut/RotSeek;)I

    move-result v0

    iget-object v2, p0, Lcom/custom/lut/RotSeek$2;->this$0:Lcom/custom/lut/RotSeek;

    invoke-static {v2}, Lcom/custom/lut/RotSeek;->access$700(Lcom/custom/lut/RotSeek;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    sub-int/2addr v2, v1

    if-le v0, v2, :cond_7

    iget-object v0, p0, Lcom/custom/lut/RotSeek$2;->this$0:Lcom/custom/lut/RotSeek;

    invoke-static {v0}, Lcom/custom/lut/RotSeek;->access$700(Lcom/custom/lut/RotSeek;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    sub-int/2addr v2, v1

    invoke-static {v0, v2}, Lcom/custom/lut/RotSeek;->access$002(Lcom/custom/lut/RotSeek;I)I

    :cond_7
    iget-object v0, p0, Lcom/custom/lut/RotSeek$2;->this$0:Lcom/custom/lut/RotSeek;

    invoke-static {v0}, Lcom/custom/lut/RotSeek;->access$000(Lcom/custom/lut/RotSeek;)I

    move-result v0

    if-gez v0, :cond_8

    iget-object v0, p0, Lcom/custom/lut/RotSeek$2;->this$0:Lcom/custom/lut/RotSeek;

    invoke-static {v0, v3}, Lcom/custom/lut/RotSeek;->access$002(Lcom/custom/lut/RotSeek;I)I

    :cond_8
    iget-object v0, p0, Lcom/custom/lut/RotSeek$2;->this$0:Lcom/custom/lut/RotSeek;

    invoke-static {v0}, Lcom/custom/lut/RotSeek;->access$000(Lcom/custom/lut/RotSeek;)I

    move-result v2

    goto :goto_4

    :cond_9
    :goto_5
    iget-object v0, p0, Lcom/custom/lut/RotSeek$2;->this$0:Lcom/custom/lut/RotSeek;

    invoke-virtual {v0}, Lcom/custom/lut/RotSeek;->redraw()V

    :cond_a
    return-void
.end method
