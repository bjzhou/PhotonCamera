.class Lcom/agc/widget/lut/HorizontalListView$1;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/widget/lut/HorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/widget/lut/HorizontalListView;


# direct methods
.method public constructor <init>(Lcom/agc/widget/lut/HorizontalListView;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/widget/lut/HorizontalListView$1;->this$0:Lcom/agc/widget/lut/HorizontalListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    iget-object v0, p0, Lcom/agc/widget/lut/HorizontalListView$1;->this$0:Lcom/agc/widget/lut/HorizontalListView;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/agc/widget/lut/HorizontalListView$1;->this$0:Lcom/agc/widget/lut/HorizontalListView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/agc/widget/lut/HorizontalListView;->access$002(Lcom/agc/widget/lut/HorizontalListView;Z)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/agc/widget/lut/HorizontalListView$1;->this$0:Lcom/agc/widget/lut/HorizontalListView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lcom/agc/widget/lut/HorizontalListView$1;->this$0:Lcom/agc/widget/lut/HorizontalListView;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onInvalidated()V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/lut/HorizontalListView$1;->this$0:Lcom/agc/widget/lut/HorizontalListView;

    invoke-static {v0}, Lcom/agc/widget/lut/HorizontalListView;->access$100(Lcom/agc/widget/lut/HorizontalListView;)V

    iget-object v0, p0, Lcom/agc/widget/lut/HorizontalListView$1;->this$0:Lcom/agc/widget/lut/HorizontalListView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lcom/agc/widget/lut/HorizontalListView$1;->this$0:Lcom/agc/widget/lut/HorizontalListView;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
