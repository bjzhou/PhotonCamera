.class public final Lho;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Lgq;I)V
    .locals 0

    iput p2, p0, Lho;->b:I

    iput-object p1, p0, Lho;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lhp;I)V
    .locals 0

    iput p2, p0, Lho;->b:I

    iput-object p1, p0, Lho;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljg;I)V
    .locals 0

    iput p2, p0, Lho;->b:I

    iput-object p1, p0, Lho;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljj;I)V
    .locals 0

    iput p2, p0, Lho;->b:I

    iput-object p1, p0, Lho;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 3

    iget v0, p0, Lho;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lho;->a:Ljava/lang/Object;

    check-cast v0, Ljg;

    iget-object v1, v0, Ljg;->d:Ljj;

    invoke-static {v1}, Lafe;->e(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v0, v0, Ljg;->c:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lho;->a:Ljava/lang/Object;

    check-cast v0, Ljg;

    invoke-virtual {v0}, Ljg;->n()V

    iget-object v0, p0, Lho;->a:Ljava/lang/Object;

    check-cast v0, Ljg;

    invoke-static {v0}, Ljg;->m(Ljg;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lho;->a:Ljava/lang/Object;

    check-cast v0, Ljj;

    iget-object v0, v0, Ljj;->b:Lji;

    invoke-interface {v0}, Lji;->u()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lho;->a:Ljava/lang/Object;

    check-cast v0, Ljj;

    invoke-virtual {v0}, Ljj;->b()V

    :cond_0
    iget-object v0, p0, Lho;->a:Ljava/lang/Object;

    check-cast v0, Ljj;

    invoke-virtual {v0}, Ljj;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0, p0}, Lja;->a(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    return-void

    :pswitch_1
    iget-object v0, p0, Lho;->a:Ljava/lang/Object;

    check-cast v0, Lgq;

    invoke-virtual {v0}, Lgq;->u()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lho;->a:Ljava/lang/Object;

    check-cast v0, Lgq;

    iget-object v0, v0, Lgq;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lho;->a:Ljava/lang/Object;

    check-cast v0, Lgq;

    iget-object v0, v0, Lgq;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llpu;

    iget-object v0, v0, Llpu;->b:Ljava/lang/Object;

    check-cast v0, Llg;

    iget-boolean v0, v0, Llg;->p:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lho;->a:Ljava/lang/Object;

    check-cast v0, Lgq;

    iget-object v0, v0, Lgq;->d:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lho;->a:Ljava/lang/Object;

    check-cast v0, Lgq;

    iget-object v0, v0, Lgq;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llpu;

    iget-object v1, v1, Llpu;->b:Ljava/lang/Object;

    check-cast v1, Llg;

    invoke-virtual {v1}, Llg;->s()V

    goto :goto_0

    :cond_3
    :goto_1
    iget-object v0, p0, Lho;->a:Ljava/lang/Object;

    check-cast v0, Lgq;

    invoke-virtual {v0}, Lgq;->k()V

    return-void

    :cond_4
    return-void

    :pswitch_2
    iget-object v0, p0, Lho;->a:Ljava/lang/Object;

    check-cast v0, Lhp;

    invoke-virtual {v0}, Lhp;->u()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lho;->a:Ljava/lang/Object;

    check-cast v0, Lhp;

    iget-object v1, v0, Lhp;->a:Llm;

    iget-boolean v1, v1, Llg;->p:Z

    if-nez v1, :cond_7

    iget-object v0, v0, Lhp;->c:Landroid/view/View;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lho;->a:Ljava/lang/Object;

    check-cast v0, Lhp;

    iget-object v0, v0, Lhp;->a:Llm;

    invoke-virtual {v0}, Llg;->s()V

    return-void

    :cond_6
    :goto_2
    iget-object v0, p0, Lho;->a:Ljava/lang/Object;

    check-cast v0, Lhp;

    invoke-virtual {v0}, Lhp;->k()V

    return-void

    :cond_7
    return-void

    :cond_8
    iget-object v0, p0, Lho;->a:Ljava/lang/Object;

    check-cast v0, Llg;

    invoke-virtual {v0}, Llg;->k()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
