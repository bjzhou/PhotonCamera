.class Lcom/agc/asv/HorizontalListView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/asv/HorizontalListView;->onLayout(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/asv/HorizontalListView;


# direct methods
.method public constructor <init>(Lcom/agc/asv/HorizontalListView;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/asv/HorizontalListView$2;->this$0:Lcom/agc/asv/HorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/agc/asv/HorizontalListView$2;->this$0:Lcom/agc/asv/HorizontalListView;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
