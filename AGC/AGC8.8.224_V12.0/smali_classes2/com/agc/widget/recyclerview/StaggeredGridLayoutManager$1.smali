.class Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;


# direct methods
.method public constructor <init>(Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$1;->this$0:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$1;->this$0:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->checkForGaps()Z

    return-void
.end method
