.class Lcom/agc/widget/recyclerview/FastScroller$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/widget/recyclerview/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/widget/recyclerview/FastScroller;


# direct methods
.method public constructor <init>(Lcom/agc/widget/recyclerview/FastScroller;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/widget/recyclerview/FastScroller$1;->this$0:Lcom/agc/widget/recyclerview/FastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/FastScroller$1;->this$0:Lcom/agc/widget/recyclerview/FastScroller;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcom/agc/widget/recyclerview/FastScroller;->hide(I)V

    return-void
.end method
