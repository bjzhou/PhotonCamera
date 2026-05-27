.class public final Levf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;


# instance fields
.field final synthetic a:Lchk;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Letp;I)V
    .locals 0

    iput p2, p0, Levf;->b:I

    iput-object p1, p0, Levf;->a:Lchk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Levk;I)V
    .locals 0

    iput p2, p0, Levf;->b:I

    iput-object p1, p0, Levf;->a:Lchk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouchExplorationStateChanged(Z)V
    .locals 4

    iget p1, p0, Levf;->b:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Levf;->a:Lchk;

    check-cast p1, Letp;

    iget-object v2, p1, Letp;->ac:Ldhi;

    sget-object v3, Ldho;->ci:Ldhj;

    invoke-interface {v2, v3}, Ldhi;->l(Ldhj;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p1, Letp;->N:Ljwb;

    invoke-interface {v2}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgyu;

    sget-object v3, Lgyu;->a:Lgyu;

    invoke-virtual {v2, v3}, Lgyu;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Letp;->G:Lhxx;

    invoke-virtual {v2}, Lhxx;->h()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :pswitch_0
    iget-object p1, p0, Levf;->a:Lchk;

    check-cast p1, Levk;

    iget-object v2, p1, Levk;->s:Ldhi;

    sget-object v3, Ldho;->ci:Ldhj;

    invoke-interface {v2, v3}, Ldhi;->l(Ldhj;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p1, Levk;->y:Ljwb;

    invoke-interface {v2}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgyu;

    sget-object v3, Lgyu;->a:Lgyu;

    invoke-virtual {v2, v3}, Lgyu;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Levk;->E:Lhxx;

    invoke-virtual {v2}, Lhxx;->h()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Levk;->g:Ljava/util/concurrent/Executor;

    new-instance v2, Lbnd;

    const/16 v3, 0xb

    invoke-direct {v2, p1, v0, v3}, Lbnd;-><init>(Levk;ZI)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p1, Letp;->e:Ljava/util/concurrent/Executor;

    new-instance v2, Lbnd;

    const/16 v3, 0x8

    invoke-direct {v2, p1, v0, v3}, Lbnd;-><init>(Letp;ZI)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
