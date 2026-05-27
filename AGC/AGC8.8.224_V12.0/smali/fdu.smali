.class public Lfdu;
.super Lfdn;


# instance fields
.field private final a:Lgeh;

.field private final b:Libj;

.field private final c:Lcom/google/android/apps/camera/bottombar/BottomBarController;

.field private final d:Litm;

.field private final e:Lmqp;

.field private f:Z

.field public final h:Liff;

.field public final i:Liec;

.field public final j:Lgft;

.field public final k:Lebl;

.field public final l:Ljvs;

.field public final m:Lfdc;


# direct methods
.method public constructor <init>(Liff;Liec;Lgeh;Libj;Lcom/google/android/apps/camera/bottombar/BottomBarController;Lgft;Lebl;Litm;Ljvs;Lfdc;Lmqp;)V
    .locals 0

    invoke-direct {p0}, Lfdn;-><init>()V

    iput-object p1, p0, Lfdu;->h:Liff;

    iput-object p2, p0, Lfdu;->i:Liec;

    iput-object p3, p0, Lfdu;->a:Lgeh;

    iput-object p4, p0, Lfdu;->b:Libj;

    iput-object p5, p0, Lfdu;->c:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    iput-object p6, p0, Lfdu;->j:Lgft;

    iput-object p7, p0, Lfdu;->k:Lebl;

    iput-object p8, p0, Lfdu;->d:Litm;

    iput-object p9, p0, Lfdu;->l:Ljvs;

    iput-object p10, p0, Lfdu;->m:Lfdc;

    iput-object p11, p0, Lfdu;->e:Lmqp;

    return-void
.end method


# virtual methods
.method public final k()V
    .locals 2

    iget-object v0, p0, Lfdu;->e:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfdu;->e:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhms;

    invoke-interface {v0}, Lhms;->l()V

    iget-object v0, p0, Lfdu;->e:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhms;

    invoke-interface {v0}, Lhms;->f()V

    :cond_0
    iget-object v0, p0, Lfdu;->a:Lgeh;

    invoke-interface {v0}, Lgeh;->m()V

    iget-object v0, p0, Lfdu;->b:Libj;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Libj;->l(Z)V

    iget-object v0, p0, Lfdu;->c:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->setClickable(Z)V

    iget-object v0, p0, Lfdu;->d:Litm;

    invoke-interface {v0, v1}, Litm;->I(Z)V

    iget-boolean v0, p0, Lfdu;->f:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lfdu;->m:Lfdc;

    invoke-virtual {v0}, Lfdc;->d()V

    iget-object v0, p0, Lfdu;->k:Lebl;

    iget-object v0, v0, Lebl;->b:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lfdu;->l:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lika;

    sget-object v1, Lika;->m:Lika;

    invoke-virtual {v0, v1}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lfdu;->k:Lebl;

    invoke-virtual {v0}, Lebl;->l()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lfdu;->m:Lfdc;

    const/16 v1, 0xb2

    invoke-virtual {v0, v1}, Lfdc;->e(I)V

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfdu;->f:Z

    :cond_3
    return-void
.end method

.method public final l()V
    .locals 2

    iget-object v0, p0, Lfdu;->a:Lgeh;

    invoke-interface {v0}, Lgeh;->l()V

    iget-object v0, p0, Lfdu;->b:Libj;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Libj;->l(Z)V

    iget-object v0, p0, Lfdu;->c:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->setClickable(Z)V

    iget-object v0, p0, Lfdu;->d:Litm;

    invoke-interface {v0, v1}, Litm;->I(Z)V

    iget-object v0, p0, Lfdu;->d:Litm;

    invoke-interface {v0}, Litm;->p()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lfdu;->f:Z

    return-void
.end method

.method public final m()V
    .locals 2

    iget-object v0, p0, Lfdu;->e:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfdu;->e:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhms;

    invoke-interface {v0}, Lhms;->s()V

    iget-object v0, p0, Lfdu;->e:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhms;

    sget-object v1, Lmpx;->a:Lmpx;

    invoke-interface {v0, v1}, Lhms;->m(Lmqp;)V

    :cond_0
    return-void
.end method

.method public final n()V
    .locals 1

    sget-object v0, Lika;->a:Lika;

    iget-object v0, p0, Lfdu;->l:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lika;

    invoke-virtual {v0}, Lika;->ordinal()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Lfdu;->h:Liff;

    invoke-interface {v0}, Liff;->l()V

    return-void

    :sswitch_0
    iget-object v0, p0, Lfdu;->h:Liff;

    invoke-interface {v0}, Liff;->p()V

    return-void

    :sswitch_1
    iget-object v0, p0, Lfdu;->h:Liff;

    invoke-interface {v0}, Liff;->o()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x6 -> :sswitch_0
    .end sparse-switch
.end method
