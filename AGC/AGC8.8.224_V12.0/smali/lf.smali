.class final Llf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic a:Llg;


# direct methods
.method public constructor <init>(Llg;)V
    .locals 0

    iput-object p1, p0, Llf;->a:Llg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Llf;->a:Llg;

    invoke-virtual {p1}, Llg;->w()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Llf;->a:Llg;

    iget-object p1, p1, Llg;->q:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Llf;->a:Llg;

    iget-object p2, p1, Llg;->o:Landroid/os/Handler;

    iget-object p1, p1, Llg;->r:Lbe;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Llf;->a:Llg;

    iget-object p1, p1, Llg;->r:Lbe;

    invoke-virtual {p1}, Lbe;->run()V

    :cond_0
    return-void
.end method
