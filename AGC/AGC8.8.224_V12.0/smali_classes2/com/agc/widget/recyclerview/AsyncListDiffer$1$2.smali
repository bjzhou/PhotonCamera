.class Lcom/agc/widget/recyclerview/AsyncListDiffer$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$result:Lcom/agc/widget/recyclerview/DiffUtil$DiffResult;


# direct methods
.method public constructor <init>(Lcom/agc/widget/recyclerview/AsyncListDiffer$1;Lcom/agc/widget/recyclerview/DiffUtil$DiffResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/agc/widget/recyclerview/AsyncListDiffer$1$2;->this$1:Lcom/agc/widget/recyclerview/AsyncListDiffer$1;

    iput-object p2, p0, Lcom/agc/widget/recyclerview/AsyncListDiffer$1$2;->val$result:Lcom/agc/widget/recyclerview/DiffUtil$DiffResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AsyncListDiffer$1$2;->this$1:Lcom/agc/widget/recyclerview/AsyncListDiffer$1;

    iget-object v1, v0, Lcom/agc/widget/recyclerview/AsyncListDiffer$1;->this$0:Lcom/agc/widget/recyclerview/AsyncListDiffer;

    iget v2, v1, Lcom/agc/widget/recyclerview/AsyncListDiffer;->mMaxScheduledGeneration:I

    iget v3, v0, Lcom/agc/widget/recyclerview/AsyncListDiffer$1;->val$runGeneration:I

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Lcom/agc/widget/recyclerview/AsyncListDiffer$1;->val$newList:Ljava/util/List;

    iget-object v3, p0, Lcom/agc/widget/recyclerview/AsyncListDiffer$1$2;->val$result:Lcom/agc/widget/recyclerview/DiffUtil$DiffResult;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/AsyncListDiffer$1;->val$commitCallback:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v3, v0}, Lcom/agc/widget/recyclerview/AsyncListDiffer;->latchList(Ljava/util/List;Lcom/agc/widget/recyclerview/DiffUtil$DiffResult;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
