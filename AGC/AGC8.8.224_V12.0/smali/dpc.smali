.class public Ldpc;
.super Ldoy;


# instance fields
.field public final a:Lcom/google/android/apps/camera/evcomp/EvCompView;

.field public final b:Loiw;

.field public final c:Ljwb;

.field public final d:Ljwb;

.field public final e:Ljwb;

.field public f:I

.field public g:I

.field public h:F

.field public final i:Lmqp;

.field public final j:Ljwb;

.field public final k:Ljava/lang/Runnable;

.field public l:F

.field public m:F

.field private final n:Ljwb;

.field private final o:Ljwb;

.field private final p:Ljwb;


# direct methods
.method public constructor <init>(Loiw;Lcom/google/android/apps/camera/evcomp/EvCompView;Ljwb;Ljwb;Ljwb;Ljwb;Ldja;Ljwb;Lmqp;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ldoy;-><init>()V

    new-instance p10, Ldgg;

    const/16 p11, 0xe

    invoke-direct {p10, p0, p11}, Ldgg;-><init>(Ldpc;I)V

    iput-object p10, p0, Ldpc;->k:Ljava/lang/Runnable;

    iput-object p1, p0, Ldpc;->b:Loiw;

    iput-object p2, p0, Ldpc;->a:Lcom/google/android/apps/camera/evcomp/EvCompView;

    iput-object p6, p0, Ldpc;->e:Ljwb;

    iput-object p3, p0, Ldpc;->n:Ljwb;

    iput-object p4, p0, Ldpc;->o:Ljwb;

    iput-object p5, p0, Ldpc;->p:Ljwb;

    iget-object p1, p7, Ldja;->b:Ljava/lang/Object;

    iput-object p1, p0, Ldpc;->c:Ljwb;

    iget-object p1, p7, Ldja;->c:Ljava/lang/Object;

    iput-object p1, p0, Ldpc;->d:Ljwb;

    iput-object p8, p0, Ldpc;->j:Ljwb;

    iput-object p9, p0, Ldpc;->i:Lmqp;

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p8, p1}, Ljwb;->bn(Ljava/lang/Object;)V

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Ldpc;->l:F

    iput p1, p0, Ldpc;->m:F

    return-void
.end method


# virtual methods
.method final i()V
    .locals 2

    iget-object v0, p0, Ldpc;->a:Lcom/google/android/apps/camera/evcomp/EvCompView;

    iget-object v1, p0, Ldpc;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/evcomp/EvCompView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final j()V
    .locals 4

    iget-object v0, p0, Ldpc;->e:Ljwb;

    invoke-interface {v0}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldoh;

    sget-object v1, Ldoh;->a:Ldoh;

    invoke-virtual {v0, v1}, Ldoh;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ldpc;->k()V

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lmoz;->p(Z)V

    iget-object v0, p0, Ldpc;->o:Ljwb;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v0, v3}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object v0, p0, Ldpc;->p:Ljwb;

    invoke-interface {v0, v3}, Ljwb;->bn(Ljava/lang/Object;)V

    iput v2, p0, Ldpc;->l:F

    iput v2, p0, Ldpc;->m:F

    iget-object v0, p0, Ldpc;->i:Lmqp;

    check-cast v0, Lmqt;

    iget-object v0, v0, Lmqt;->a:Ljava/lang/Object;

    check-cast v0, Lglf;

    invoke-interface {v0}, Lglf;->f()Lnou;

    move-result-object v0

    new-instance v2, Lcmc;

    const/16 v3, 0x9

    invoke-direct {v2, p0, v3}, Lcmc;-><init>(Ldpc;I)V

    sget-object v3, Ljuh;->a:Ljui;

    invoke-static {v0, v2, v3}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    :goto_0
    iget-object v0, p0, Ldpc;->j:Ljwb;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljwb;->bn(Ljava/lang/Object;)V

    return-void
.end method

.method public final k()V
    .locals 2

    iget-object v0, p0, Ldpc;->a:Lcom/google/android/apps/camera/evcomp/EvCompView;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/evcomp/EvCompView;->g(F)V

    sget-object v0, Ldok;->a:Ldok;

    invoke-virtual {p0, v1, v0}, Ldpc;->m(FLdok;)V

    return-void
.end method

.method public final l()V
    .locals 2

    iget-object v0, p0, Ldpc;->e:Ljwb;

    invoke-interface {v0}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldoh;

    sget-object v1, Ldoh;->a:Ldoh;

    invoke-virtual {v0, v1}, Ldoh;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ldpc;->k()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ldpc;->i:Lmqp;

    check-cast v0, Lmqt;

    iget-object v0, v0, Lmqt;->a:Ljava/lang/Object;

    check-cast v0, Lglf;

    invoke-interface {v0}, Lglf;->g()V

    :goto_0
    iget-object v0, p0, Ldpc;->j:Ljwb;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljwb;->bn(Ljava/lang/Object;)V

    return-void
.end method

.method public final m(FLdok;)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_7

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Ldpc;->e:Ljwb;

    invoke-interface {v0}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldoh;

    sget-object v1, Ldoh;->a:Ldoh;

    if-ne v0, v1, :cond_3

    sget-object v0, Ldok;->a:Ldok;

    invoke-virtual {p2, v0}, Ldok;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "Single knob ev slider should have only one control(for brightness)."

    invoke-static {p2, v0}, Lmoz;->f(ZLjava/lang/Object;)V

    iget-object p2, p0, Ldpc;->i:Lmqp;

    check-cast p2, Lmqt;

    iget-object p2, p2, Lmqt;->a:Ljava/lang/Object;

    check-cast p2, Lglf;

    invoke-interface {p2}, Lglf;->k()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Ldpc;->a:Lcom/google/android/apps/camera/evcomp/EvCompView;

    invoke-virtual {p2, p1}, Lcom/google/android/apps/camera/evcomp/EvCompView;->h(F)V

    iget-object p2, p0, Ldpc;->o:Ljwb;

    check-cast p2, Ljvk;

    iget-object p2, p2, Ljvk;->d:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    cmpl-float p2, p1, p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Ldpc;->o:Ljwb;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {p2, p1}, Ljwb;->bn(Ljava/lang/Object;)V

    return-void

    :cond_1
    iget p2, p0, Ldpc;->g:I

    int-to-float p2, p2

    mul-float p2, p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iget v0, p0, Ldpc;->f:I

    add-int/2addr p2, v0

    iget v1, p0, Ldpc;->g:I

    int-to-float v1, v1

    mul-float v1, v1, p1

    int-to-float p1, v0

    iget v0, p0, Ldpc;->h:F

    add-float/2addr v1, p1

    mul-float v1, v1, v0

    iget-object p1, p0, Ldpc;->a:Lcom/google/android/apps/camera/evcomp/EvCompView;

    invoke-virtual {p1, v1}, Lcom/google/android/apps/camera/evcomp/EvCompView;->h(F)V

    iget-object p1, p0, Ldpc;->n:Ljwb;

    check-cast p1, Ljvk;

    iget-object p1, p1, Ljvk;->d:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p2, p1, :cond_2

    iget-object p1, p0, Ldpc;->n:Ljwb;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljwb;->bn(Ljava/lang/Object;)V

    return-void

    :cond_2
    return-void

    :cond_3
    sget-object v0, Ldok;->a:Ldok;

    invoke-virtual {p2}, Ldok;->ordinal()I

    move-result p2

    const/high16 v0, -0x40800000    # -1.0f

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p2, p0, Ldpc;->a:Lcom/google/android/apps/camera/evcomp/EvCompView;

    invoke-virtual {p2, p1}, Lcom/google/android/apps/camera/evcomp/EvCompView;->j(F)V

    iget-object p2, p0, Ldpc;->p:Ljwb;

    check-cast p2, Ljvk;

    iget-object p2, p2, Ljvk;->d:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    cmpl-float p2, p1, p2

    if-nez p2, :cond_4

    return-void

    :cond_4
    iget-object p2, p0, Ldpc;->p:Ljwb;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {p2, p1}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object p1, p0, Ldpc;->o:Ljwb;

    check-cast p1, Ljvk;

    iget-object p1, p1, Ljvk;->d:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    cmpl-float p1, p1, v0

    if-nez p1, :cond_6

    iget-object p1, p0, Ldpc;->o:Ljwb;

    iget p2, p0, Ldpc;->l:F

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {p1, p2}, Ljwb;->bn(Ljava/lang/Object;)V

    return-void

    :pswitch_1
    iget-object p2, p0, Ldpc;->a:Lcom/google/android/apps/camera/evcomp/EvCompView;

    invoke-virtual {p2, p1}, Lcom/google/android/apps/camera/evcomp/EvCompView;->h(F)V

    iget-object p2, p0, Ldpc;->o:Ljwb;

    check-cast p2, Ljvk;

    iget-object p2, p2, Ljvk;->d:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    cmpl-float p2, p1, p2

    if-nez p2, :cond_5

    return-void

    :cond_5
    iget-object p2, p0, Ldpc;->o:Ljwb;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {p2, p1}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object p1, p0, Ldpc;->p:Ljwb;

    check-cast p1, Ljvk;

    iget-object p1, p1, Ljvk;->d:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    cmpl-float p1, p1, v0

    if-nez p1, :cond_6

    iget-object p1, p0, Ldpc;->p:Ljwb;

    iget p2, p0, Ldpc;->m:F

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {p1, p2}, Ljwb;->bn(Ljava/lang/Object;)V

    :cond_6
    :goto_0
    return-void

    :cond_7
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
