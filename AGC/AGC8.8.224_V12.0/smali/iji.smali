.class public final Liji;
.super Ljava/lang/Object;

# interfaces
.implements Lijk;


# instance fields
.field public final a:Ljava/lang/Object;

.field private final b:Loiw;

.field private final c:Ldhi;

.field private final synthetic d:I

.field private final e:Ljava/lang/Object;

.field private final f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lieb;Loiw;Ldhi;Lezx;Lell;I)V
    .locals 0

    iput p6, p0, Liji;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liji;->e:Ljava/lang/Object;

    iput-object p2, p0, Liji;->b:Loiw;

    iput-object p3, p0, Liji;->c:Ldhi;

    iput-object p4, p0, Liji;->f:Ljava/lang/Object;

    iput-object p5, p0, Liji;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lmqp;Ljuf;Loiw;Ldhi;I)V
    .locals 0

    iput p5, p0, Liji;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liji;->e:Ljava/lang/Object;

    iput-object p3, p0, Liji;->b:Loiw;

    iput-object p2, p0, Liji;->f:Ljava/lang/Object;

    new-instance p2, Lijg;

    invoke-direct {p2, p1}, Lijg;-><init>(Lmqp;)V

    iput-object p2, p0, Liji;->a:Ljava/lang/Object;

    iput-object p4, p0, Liji;->c:Ldhi;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    iget v0, p0, Liji;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Liji;->c:Ldhi;

    sget-object v1, Ldho;->bx:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Liji;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldja;

    iget-object v0, v0, Ldja;->a:Ljava/lang/Object;

    check-cast v0, Ljew;

    const v1, 0x7f0b00a6

    invoke-virtual {v0, v1}, Ljew;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iget-object v1, p0, Liji;->e:Ljava/lang/Object;

    iget-object v2, p0, Liji;->a:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Lieb;

    iput-object v0, v3, Lieb;->d:Landroid/view/ViewStub;

    iput-object v2, v3, Lieb;->e:Lell;

    iget-object v0, p0, Liji;->f:Ljava/lang/Object;

    check-cast v0, Lfak;

    invoke-virtual {v0, v1}, Lfak;->e(Lfaz;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Liji;->e:Ljava/lang/Object;

    check-cast v0, Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Liji;->b:Loiw;

    check-cast v0, Lihj;

    invoke-virtual {v0}, Lihj;->a()Lihg;

    move-result-object v0

    iget-object v1, v0, Lihg;->q:Ljava/lang/Object;

    iget-object v2, p0, Liji;->e:Ljava/lang/Object;

    check-cast v2, Lmqp;

    invoke-virtual {v2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldal;

    invoke-interface {v2}, Ldal;->a()Ldau;

    move-result-object v2

    iget-object v3, p0, Liji;->c:Ldhi;

    sget-object v4, Ldho;->cm:Ldhj;

    invoke-interface {v3, v4}, Ldhi;->l(Ldhj;)Z

    move-result v3

    if-nez v3, :cond_3

    move-object v3, v1

    check-cast v3, Ljew;

    const v4, 0x7f0b03fc

    invoke-virtual {v3, v4}, Ljew;->f(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    move-object v4, v2

    check-cast v4, Ldas;

    iget-object v5, v4, Ldas;->b:Ldhi;

    sget-object v6, Ldho;->cm:Ldhj;

    invoke-interface {v5, v6}, Ldhi;->l(Ldhj;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, v4, Ldas;->d:Lcom/google/android/apps/camera/ui/popupmenu/PopupMenuViewContainer;

    if-nez v5, :cond_1

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/camera/ui/popupmenu/PopupMenuViewContainer;

    iput-object v3, v4, Ldas;->d:Lcom/google/android/apps/camera/ui/popupmenu/PopupMenuViewContainer;

    iget-object v3, v4, Ldas;->d:Lcom/google/android/apps/camera/ui/popupmenu/PopupMenuViewContainer;

    const v5, 0x7f0b03fd

    invoke-virtual {v3, v5}, Lcom/google/android/apps/camera/ui/popupmenu/PopupMenuViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/camera/ui/popupmenu/PopupMenuView;

    iput-object v3, v4, Ldas;->c:Lcom/google/android/apps/camera/ui/popupmenu/PopupMenuView;

    :cond_1
    iget-object v3, v4, Ldas;->c:Lcom/google/android/apps/camera/ui/popupmenu/PopupMenuView;

    iget-object v5, v4, Ldas;->g:Lict;

    const v6, 0x7f1404da

    invoke-virtual {v3, v6, v5}, Lcom/google/android/apps/camera/ui/popupmenu/PopupMenuView;->d(ILict;)V

    iget-object v3, v4, Ldas;->g:Lict;

    sget-object v5, Ldav;->a:Ldav;

    invoke-virtual {v3, v5}, Lict;->c(Ljava/lang/Object;)V

    iget-object v3, v4, Ldas;->b:Ldhi;

    sget-object v5, Ldgu;->O:Ldhj;

    invoke-interface {v3, v5}, Ldhi;->l(Ldhj;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v4, Ldas;->c:Lcom/google/android/apps/camera/ui/popupmenu/PopupMenuView;

    iget-object v3, v3, Lcom/google/android/apps/camera/ui/popupmenu/PopupMenuView;->b:Landroid/widget/ImageButton;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_2
    iget-object v3, p0, Liji;->f:Ljava/lang/Object;

    new-instance v4, Lijh;

    invoke-direct {v4, p0, v0}, Lijh;-><init>(Liji;Lihg;)V

    invoke-interface {v2, v4}, Ldau;->a(Ldaw;)Lkad;

    move-result-object v2

    check-cast v3, Ljuf;

    invoke-virtual {v3, v2}, Ljuf;->d(Lkad;)V

    :cond_3
    check-cast v1, Ljew;

    const v2, 0x7f0b03fe

    invoke-virtual {v1, v2}, Ljew;->f(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iget-object v2, p0, Liji;->e:Ljava/lang/Object;

    check-cast v2, Lmqp;

    invoke-virtual {v2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldal;

    invoke-interface {v2, v1}, Ldal;->f(Landroid/view/ViewStub;)V

    iget-object v0, v0, Lihg;->c:Ljava/lang/Object;

    iget-object v1, p0, Liji;->e:Ljava/lang/Object;

    check-cast v1, Lmqp;

    check-cast v0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;

    iput-object v1, v0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->j:Lmqp;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->a()Lhys;

    move-result-object v1

    iget-object v1, v1, Lhys;->i:Lhyn;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->a()Lhys;

    move-result-object v2

    iget-object v2, v2, Lhys;->g:Liko;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->o(Lhyn;Liko;)V

    return-void

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
