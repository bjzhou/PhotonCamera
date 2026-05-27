.class Lcom/agc/widget/recyclerview/AsyncListDiffer$1$1;
.super Lcom/agc/widget/recyclerview/DiffUtil$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/widget/recyclerview/AsyncListDiffer$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/agc/widget/recyclerview/AsyncListDiffer$1;


# direct methods
.method public constructor <init>(Lcom/agc/widget/recyclerview/AsyncListDiffer$1;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/widget/recyclerview/AsyncListDiffer$1$1;->this$1:Lcom/agc/widget/recyclerview/AsyncListDiffer$1;

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/DiffUtil$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(II)Z
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AsyncListDiffer$1$1;->this$1:Lcom/agc/widget/recyclerview/AsyncListDiffer$1;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/AsyncListDiffer$1;->val$oldList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AsyncListDiffer$1$1;->this$1:Lcom/agc/widget/recyclerview/AsyncListDiffer$1;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/AsyncListDiffer$1;->val$newList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AsyncListDiffer$1$1;->this$1:Lcom/agc/widget/recyclerview/AsyncListDiffer$1;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/AsyncListDiffer$1;->this$0:Lcom/agc/widget/recyclerview/AsyncListDiffer;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/AsyncListDiffer;->mConfig:Lcom/agc/widget/recyclerview/AsyncDifferConfig;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AsyncDifferConfig;->getDiffCallback()Lcom/agc/widget/recyclerview/DiffUtil$ItemCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/agc/widget/recyclerview/DiffUtil$ItemCallback;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public areItemsTheSame(II)Z
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AsyncListDiffer$1$1;->this$1:Lcom/agc/widget/recyclerview/AsyncListDiffer$1;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/AsyncListDiffer$1;->val$oldList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AsyncListDiffer$1$1;->this$1:Lcom/agc/widget/recyclerview/AsyncListDiffer$1;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/AsyncListDiffer$1;->val$newList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AsyncListDiffer$1$1;->this$1:Lcom/agc/widget/recyclerview/AsyncListDiffer$1;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/AsyncListDiffer$1;->this$0:Lcom/agc/widget/recyclerview/AsyncListDiffer;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/AsyncListDiffer;->mConfig:Lcom/agc/widget/recyclerview/AsyncDifferConfig;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AsyncDifferConfig;->getDiffCallback()Lcom/agc/widget/recyclerview/DiffUtil$ItemCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/agc/widget/recyclerview/DiffUtil$ItemCallback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getChangePayload(II)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AsyncListDiffer$1$1;->this$1:Lcom/agc/widget/recyclerview/AsyncListDiffer$1;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/AsyncListDiffer$1;->val$oldList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AsyncListDiffer$1$1;->this$1:Lcom/agc/widget/recyclerview/AsyncListDiffer$1;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/AsyncListDiffer$1;->val$newList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AsyncListDiffer$1$1;->this$1:Lcom/agc/widget/recyclerview/AsyncListDiffer$1;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/AsyncListDiffer$1;->this$0:Lcom/agc/widget/recyclerview/AsyncListDiffer;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/AsyncListDiffer;->mConfig:Lcom/agc/widget/recyclerview/AsyncDifferConfig;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AsyncDifferConfig;->getDiffCallback()Lcom/agc/widget/recyclerview/DiffUtil$ItemCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/agc/widget/recyclerview/DiffUtil$ItemCallback;->getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public getNewListSize()I
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AsyncListDiffer$1$1;->this$1:Lcom/agc/widget/recyclerview/AsyncListDiffer$1;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/AsyncListDiffer$1;->val$newList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getOldListSize()I
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AsyncListDiffer$1$1;->this$1:Lcom/agc/widget/recyclerview/AsyncListDiffer$1;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/AsyncListDiffer$1;->val$oldList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
