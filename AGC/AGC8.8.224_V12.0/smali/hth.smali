.class public final synthetic Lhth;
.super Ljava/lang/Object;

# interfaces
.implements Lhiz;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/camera/bottombar/BottomBarController;I)V
    .locals 0

    iput p2, p0, Lhth;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhth;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lebj;I)V
    .locals 0

    iput p2, p0, Lhth;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhth;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Leoa;I)V
    .locals 0

    iput p2, p0, Lhth;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhth;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lgeh;I)V
    .locals 0

    iput p2, p0, Lhth;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhth;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhtk;I)V
    .locals 0

    iput p2, p0, Lhth;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhth;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhwu;I)V
    .locals 0

    iput p2, p0, Lhth;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhth;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Licb;I)V
    .locals 0

    iput p2, p0, Lhth;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhth;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Liff;I)V
    .locals 0

    iput p2, p0, Lhth;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhth;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Litm;I)V
    .locals 0

    iput p2, p0, Lhth;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhth;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Runnable;I)V
    .locals 0

    iput p2, p0, Lhth;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhth;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Lkad;
    .locals 5

    iget v0, p0, Lhth;->b:I

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lhth;->a:Ljava/lang/Object;

    invoke-interface {v0}, Licb;->h()Lkad;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lhth;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/apps/camera/bottombar/BottomBarController;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->lowerAccessibilityImportanceAwhile()Lkad;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lhth;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/apps/camera/bottombar/BottomBarController;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->disableCameraSwitchAwhile()Lkad;

    move-result-object v0

    return-object v0

    :pswitch_2
    iget-object v0, p0, Lhth;->a:Ljava/lang/Object;

    invoke-interface {v0}, Liff;->c()Lkad;

    move-result-object v0

    return-object v0

    :pswitch_3
    iget-object v0, p0, Lhth;->a:Ljava/lang/Object;

    invoke-interface {v0}, Licb;->e()Lkad;

    move-result-object v0

    return-object v0

    :pswitch_4
    iget-object v0, p0, Lhth;->a:Ljava/lang/Object;

    check-cast v0, Lisi;

    iget-object v4, v0, Lisi;->O:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getVisibility()I

    move-result v4

    if-ne v4, v1, :cond_0

    new-instance v1, Lirx;

    invoke-direct {v1, v0, v2}, Lirx;-><init>(Lisi;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v3}, Lisi;->I(Z)V

    new-instance v1, Lirx;

    invoke-direct {v1, v0, v3}, Lirx;-><init>(Lisi;I)V

    :goto_0
    return-object v1

    :pswitch_5
    iget-object v0, p0, Lhth;->a:Ljava/lang/Object;

    check-cast v0, Lhwu;

    invoke-virtual {v0, v3}, Lhwu;->d(Z)V

    new-instance v1, Lhbq;

    const/16 v2, 0xc

    invoke-direct {v1, v0, v2}, Lhbq;-><init>(Lhwu;I)V

    return-object v1

    :pswitch_6
    iget-object v0, p0, Lhth;->a:Ljava/lang/Object;

    invoke-interface {v0}, Lgeh;->c()Lkad;

    move-result-object v0

    return-object v0

    :pswitch_7
    iget-object v0, p0, Lhth;->a:Ljava/lang/Object;

    check-cast v0, Leoa;

    iget v1, v0, Leoa;->f:I

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Leoa;->g(I)V

    new-instance v2, Lenx;

    invoke-direct {v2, v0, v1, v3}, Lenx;-><init>(Leoa;II)V

    return-object v2

    :pswitch_8
    iget-object v0, p0, Lhth;->a:Ljava/lang/Object;

    check-cast v0, Lhtk;

    iget-object v2, v0, Lhtk;->b:Lhtl;

    iget-object v2, v2, Lhtl;->l:Lgzn;

    sget-object v3, Lgzd;->v:Lgzu;

    invoke-interface {v2, v3}, Lgzn;->b(Lgzb;)Ljwb;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljvk;

    iget-object v3, v3, Ljvk;->d:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v0, Lhtk;->b:Lhtl;

    iget-object v4, v4, Lhtl;->m:Ljwb;

    invoke-interface {v4}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lika;

    iget-object v0, v0, Lhtk;->b:Lhtl;

    iget-object v0, v0, Lhtl;->k:Ldbf;

    invoke-virtual {v0}, Ldbf;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "torch"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lika;->f:Lika;

    invoke-virtual {v0, v4}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lika;->c:Lika;

    invoke-virtual {v0, v4}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lika;->t:Lika;

    invoke-virtual {v0, v4}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "off"

    invoke-interface {v2, v0}, Ljwb;->bn(Ljava/lang/Object;)V

    new-instance v0, Lhbq;

    invoke-direct {v0, v2, v1}, Lhbq;-><init>(Ljwb;I)V

    goto :goto_1

    :cond_2
    sget-object v0, Lgnl;->f:Lgnl;

    :goto_1
    return-object v0

    :pswitch_9
    iget-object v0, p0, Lhth;->a:Ljava/lang/Object;

    check-cast v0, Lhtk;

    iget-object v1, v0, Lhtk;->b:Lhtl;

    iget-object v1, v1, Lhtl;->g:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldpl;

    invoke-virtual {v1}, Ldpl;->b()V

    new-instance v1, Lhbq;

    const/4 v2, 0x7

    invoke-direct {v1, v0, v2}, Lhbq;-><init>(Lhtk;I)V

    return-object v1

    :pswitch_a
    iget-object v0, p0, Lhth;->a:Ljava/lang/Object;

    check-cast v0, Lhtk;

    iget-object v0, v0, Lhtk;->b:Lhtl;

    iget-object v0, v0, Lhtl;->n:Lell;

    sget-object v1, Lelm;->d:Lelm;

    invoke-interface {v0, v1}, Lell;->e(Lelm;)Lkad;

    move-result-object v0

    return-object v0

    :pswitch_b
    iget-object v0, p0, Lhth;->a:Ljava/lang/Object;

    check-cast v0, Lebj;

    invoke-virtual {v0}, Lebj;->b()V

    new-instance v1, Ldei;

    const/16 v2, 0x14

    invoke-direct {v1, v0, v2}, Ldei;-><init>(Lebj;I)V

    return-object v1

    :pswitch_c
    iget-object v0, p0, Lhth;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/apps/camera/bottombar/BottomBarController;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->makeClickableAwhile()Lkad;

    move-result-object v0

    return-object v0

    :pswitch_d
    iget-object v0, p0, Lhth;->a:Ljava/lang/Object;

    check-cast v0, Leoa;

    invoke-virtual {v0, v2}, Leoa;->g(I)V

    new-instance v1, Ledg;

    const/4 v2, 0x5

    invoke-direct {v1, v0, v2}, Ledg;-><init>(Leoa;I)V

    return-object v1

    :pswitch_e
    iget-object v0, p0, Lhth;->a:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    sget-object v0, Lgnl;->c:Lgnl;

    return-object v0

    :pswitch_f
    iget-object v0, p0, Lhth;->a:Ljava/lang/Object;

    invoke-interface {v0}, Liff;->d()Lkad;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
