.class Lcom/agc/widget/recyclerview/ItemTouchHelper$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/widget/recyclerview/AgcRecyclerView$ChildDrawingOrderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/widget/recyclerview/ItemTouchHelper;->addChildDrawingOrderCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/widget/recyclerview/ItemTouchHelper;


# direct methods
.method public constructor <init>(Lcom/agc/widget/recyclerview/ItemTouchHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/widget/recyclerview/ItemTouchHelper$5;->this$0:Lcom/agc/widget/recyclerview/ItemTouchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetChildDrawingOrder(II)I
    .locals 4

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ItemTouchHelper$5;->this$0:Lcom/agc/widget/recyclerview/ItemTouchHelper;

    iget-object v1, v0, Lcom/agc/widget/recyclerview/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    if-nez v1, :cond_0

    return p2

    :cond_0
    iget v2, v0, Lcom/agc/widget/recyclerview/ItemTouchHelper;->mOverdrawChildPosition:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lcom/agc/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ItemTouchHelper$5;->this$0:Lcom/agc/widget/recyclerview/ItemTouchHelper;

    iput v2, v0, Lcom/agc/widget/recyclerview/ItemTouchHelper;->mOverdrawChildPosition:I

    :cond_1
    add-int/lit8 p1, p1, -0x1

    if-ne p2, p1, :cond_2

    return v2

    :cond_2
    if-ge p2, v2, :cond_3

    goto :goto_0

    :cond_3
    add-int/lit8 p2, p2, 0x1

    :goto_0
    return p2
.end method
