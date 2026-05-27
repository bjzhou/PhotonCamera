.class public final Lcqa;
.super Ljava/lang/Object;

# interfaces
.implements Ljyl;


# instance fields
.field public final A:Lcvr;

.field private final B:Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;

.field private final C:Lcom/google/android/apps/camera/bottombar/BottomBarController;

.field private final D:Libj;

.field private final E:Lico;

.field private final F:Lcvh;

.field private final G:Liff;

.field private final H:Lcvm;

.field public final a:Lhsl;

.field public final b:Ljava/lang/String;

.field public final c:Lcyh;

.field public final d:Lhxb;

.field public final e:Litm;

.field public final f:Lcsg;

.field public final g:Ldbf;

.field public final h:Lcpc;

.field public final i:Lkog;

.field public final j:Lczq;

.field public final k:Lcxb;

.field public final l:Lcsa;

.field public final m:Lcqx;

.field public final n:Ljvs;

.field public final o:Ljvs;

.field public final p:Lczz;

.field public final q:Ljuh;

.field public final r:Ldhi;

.field public final s:Lhrq;

.field public final t:Ljwb;

.field public final u:Ljwb;

.field public final v:Lmrl;

.field public w:Lcha;

.field public x:Lika;

.field public y:Lcyq;

.field public z:Lcsc;


# direct methods
.method public constructor <init>(Lhsl;Ldja;Landroid/content/res/Resources;Lcvm;Lcyh;Lcom/google/android/apps/camera/bottombar/BottomBarController;Lhxb;Litm;Libj;Lico;Lcvh;Lcsg;Ldbf;Lcpc;Lkog;Liff;Lczq;Lcxb;Lcvr;Lcsa;Lcqx;Lczz;Ljuh;Ldhi;Ljwb;Ljwb;Lhrq;Lmrl;[B[B[B[B)V
    .locals 7

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcqa;->a:Lhsl;

    move-object v1, p4

    iput-object v1, v0, Lcqa;->H:Lcvm;

    move-object v1, p5

    iput-object v1, v0, Lcqa;->c:Lcyh;

    move-object v1, p6

    iput-object v1, v0, Lcqa;->C:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    move-object v1, p7

    iput-object v1, v0, Lcqa;->d:Lhxb;

    move-object v1, p8

    iput-object v1, v0, Lcqa;->e:Litm;

    move-object/from16 v1, p9

    iput-object v1, v0, Lcqa;->D:Libj;

    move-object/from16 v1, p10

    iput-object v1, v0, Lcqa;->E:Lico;

    move-object/from16 v1, p11

    iput-object v1, v0, Lcqa;->F:Lcvh;

    move-object/from16 v1, p12

    iput-object v1, v0, Lcqa;->f:Lcsg;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcqa;->g:Ldbf;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcqa;->h:Lcpc;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcqa;->i:Lkog;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcqa;->G:Liff;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcqa;->j:Lczq;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcqa;->k:Lcxb;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcqa;->A:Lcvr;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcqa;->l:Lcsa;

    move-object/from16 v2, p21

    iput-object v2, v0, Lcqa;->m:Lcqx;

    move-object/from16 v2, p22

    iput-object v2, v0, Lcqa;->p:Lczz;

    move-object/from16 v2, p23

    iput-object v2, v0, Lcqa;->q:Ljuh;

    move-object/from16 v2, p24

    iput-object v2, v0, Lcqa;->r:Ldhi;

    move-object/from16 v2, p25

    iput-object v2, v0, Lcqa;->t:Ljwb;

    move-object/from16 v2, p26

    iput-object v2, v0, Lcqa;->u:Ljwb;

    move-object/from16 v2, p27

    iput-object v2, v0, Lcqa;->s:Lhrq;

    move-object/from16 v2, p28

    iput-object v2, v0, Lcqa;->v:Lmrl;

    move-object v2, p2

    iget-object v2, v2, Ldja;->a:Ljava/lang/Object;

    check-cast v2, Ljew;

    const v3, 0x7f0b0135

    invoke-virtual {v2, v3}, Ljew;->f(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;

    iput-object v2, v0, Lcqa;->B:Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;

    const v2, 0x7f140584

    move-object v3, p3

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcqa;->b:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v3, v2, [Ljvs;

    invoke-virtual/range {p20 .. p20}, Lcsa;->a()Lcrz;

    move-result-object v4

    iget-object v4, v4, Lcrz;->t:Lgyd;

    iget-object v4, v4, Lgyd;->a:Ljwb;

    sget-object v5, Lcfv;->o:Lcfv;

    invoke-static {v4, v5}, Ljvw;->j(Ljvs;Lmqi;)Ljvs;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual/range {p20 .. p20}, Lcsa;->a()Lcrz;

    move-result-object v4

    iget-object v4, v4, Lcrz;->t:Lgyd;

    iget-object v4, v4, Lgyd;->b:Ljwb;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {v3}, Ljvw;->d([Ljvs;)Ljvs;

    move-result-object v3

    iput-object v3, v0, Lcqa;->n:Ljvs;

    new-array v2, v2, [Ljvs;

    invoke-virtual/range {p20 .. p20}, Lcsa;->a()Lcrz;

    move-result-object v3

    iget-object v3, v3, Lcrz;->t:Lgyd;

    iget-object v3, v3, Lgyd;->a:Ljwb;

    sget-object v4, Lcfv;->p:Lcfv;

    invoke-static {v3, v4}, Ljvw;->j(Ljvs;Lmqi;)Ljvs;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual/range {p20 .. p20}, Lcsa;->a()Lcrz;

    move-result-object v1

    iget-object v1, v1, Lcrz;->t:Lgyd;

    iget-object v1, v1, Lgyd;->d:Ljwb;

    aput-object v1, v2, v6

    invoke-static {v2}, Ljvw;->d([Ljvs;)Ljvs;

    move-result-object v1

    iput-object v1, v0, Lcqa;->o:Ljvs;

    return-void
.end method

.method public static b(Ljava/util/List;)Ljava/util/List;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljws;

    sget-object v2, Ljws;->a:Ljws;

    invoke-virtual {v1}, Ljws;->ordinal()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    sget-object v1, Lmpx;->a:Lmpx;

    goto :goto_1

    :pswitch_0
    sget-object v1, Lgyr;->d:Lgyr;

    invoke-static {v1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v1

    goto :goto_1

    :pswitch_1
    sget-object v1, Lgyr;->c:Lgyr;

    invoke-static {v1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v1

    goto :goto_1

    :pswitch_2
    sget-object v1, Lgyr;->b:Lgyr;

    invoke-static {v1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v1

    goto :goto_1

    :pswitch_3
    sget-object v1, Lgyr;->a:Lgyr;

    invoke-static {v1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v1

    :goto_1
    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgyr;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static final n(Lika;)Z
    .locals 1

    sget-object v0, Lika;->c:Lika;

    invoke-virtual {p0, v0}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lika;->f:Lika;

    invoke-virtual {p0, v0}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lika;->n:Lika;

    invoke-virtual {p0, v0}, Lika;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final a(Ljyk;)V
    .locals 2

    iget-object v0, p0, Lcqa;->E:Lico;

    sget-object v1, Ljyk;->a:Ljyk;

    invoke-virtual {p1}, Ljyk;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    sget-object p1, Licm;->e:Licm;

    goto :goto_0

    :pswitch_0
    sget-object p1, Licm;->a:Licm;

    goto :goto_0

    :pswitch_1
    sget-object p1, Licm;->e:Licm;

    goto :goto_0

    :pswitch_2
    sget-object p1, Licm;->f:Licm;

    goto :goto_0

    :pswitch_3
    sget-object p1, Licm;->b:Licm;

    goto :goto_0

    :pswitch_4
    sget-object p1, Licm;->c:Licm;

    :goto_0
    invoke-virtual {v0, p1}, Lico;->c(Licm;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final c(Lcha;Lika;)V
    .locals 1

    iput-object p1, p0, Lcqa;->w:Lcha;

    iput-object p2, p0, Lcqa;->x:Lika;

    iget-object v0, p0, Lcqa;->H:Lcvm;

    invoke-virtual {v0, p2}, Lcvm;->b(Lika;)Lcyq;

    move-result-object p2

    iput-object p2, p0, Lcqa;->y:Lcyq;

    iget-object p2, p0, Lcqa;->F:Lcvh;

    iget-object v0, p0, Lcqa;->x:Lika;

    iput-object v0, p2, Lcvh;->a:Lika;

    iget-object p2, p0, Lcqa;->f:Lcsg;

    iput-object p1, p2, Lcsg;->d:Lcha;

    return-void
.end method

.method public final d(Z)V
    .locals 3

    iget-object v0, p0, Lcqa;->f:Lcsg;

    if-eqz p1, :cond_0

    iget-object p1, v0, Lcsg;->c:Ljuh;

    new-instance v1, Lcqf;

    const/16 v2, 0xd

    invoke-direct {v1, v0, v2}, Lcqf;-><init>(Lcsg;I)V

    invoke-virtual {p1, v1}, Ljuh;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object p1, v0, Lcsg;->c:Ljuh;

    new-instance v1, Lcqf;

    const/16 v2, 0xc

    invoke-direct {v1, v0, v2}, Lcqf;-><init>(Lcsg;I)V

    invoke-virtual {p1, v1}, Ljuh;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcqa;->E:Lico;

    invoke-virtual {v0}, Lico;->b()V

    return-void
.end method

.method public final f()V
    .locals 3

    invoke-static {}, Ljvd;->l()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lclr;

    const/16 v2, 0x14

    invoke-direct {v1, p0, v2}, Lclr;-><init>(Lcqa;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final g()V
    .locals 3

    invoke-static {}, Ljvd;->l()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcqf;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcqf;-><init>(Lcqa;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Lcqa;->F:Lcvh;

    invoke-virtual {v0}, Lcvh;->b()Lmqp;

    move-result-object v0

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcqa;->g:Ldbf;

    iget-object v1, p0, Lcqa;->F:Lcvh;

    invoke-virtual {v1}, Lcvh;->b()Lmqp;

    move-result-object v1

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lklv;

    invoke-virtual {v0, v1}, Ldbf;->g(Lklv;)V

    :cond_0
    return-void
.end method

.method public final i()V
    .locals 4

    iget-object v0, p0, Lcqa;->e:Litm;

    sget-object v1, Lmpx;->a:Lmpx;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Litm;->O(Lmqp;Z)V

    iget-object v0, p0, Lcqa;->f:Lcsg;

    iget-object v1, v0, Lcsg;->c:Ljuh;

    new-instance v2, Lcqf;

    const/16 v3, 0x10

    invoke-direct {v2, v0, v3}, Lcqf;-><init>(Lcsg;I)V

    invoke-virtual {v1, v2}, Ljuh;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcqa;->w:Lcha;

    check-cast v0, Lcie;

    invoke-virtual {v0}, Lcie;->r()V

    iget-object v0, p0, Lcqa;->B:Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcqa;->B:Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcqa;->e:Litm;

    invoke-interface {v0}, Litm;->z()V

    return-void
.end method

.method public final j(Z)V
    .locals 3

    invoke-static {}, Ljvd;->l()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lbnd;

    const/4 v2, 0x5

    invoke-direct {v1, p0, p1, v2}, Lbnd;-><init>(Lcqa;ZI)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final k(Z)V
    .locals 1

    iget-object v0, p0, Lcqa;->G:Liff;

    invoke-interface {v0, p1}, Liff;->G(Z)V

    return-void
.end method

.method public final l(Z)V
    .locals 1

    iget-object v0, p0, Lcqa;->C:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->setSnapshotButtonClickEnabled(Z)V

    return-void
.end method

.method public final m(Z)V
    .locals 3

    iget-object v0, p0, Lcqa;->F:Lcvh;

    invoke-virtual {v0}, Lcvh;->p()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcqa;->D:Libj;

    invoke-interface {v0, v1}, Libj;->l(Z)V

    :cond_0
    iget-object v0, p0, Lcqa;->a:Lhsl;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lhsl;->f(Z)V

    iget-object v0, p0, Lcqa;->d:Lhxb;

    invoke-interface {v0, p1}, Lhxb;->a(Z)V

    iget-object v0, p0, Lcqa;->s:Lhrq;

    invoke-virtual {v0, v2}, Lhrq;->d(Z)V

    iget-object v0, p0, Lcqa;->x:Lika;

    invoke-static {v0}, Lcqa;->n(Lika;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcqa;->k:Lcxb;

    invoke-virtual {v0}, Lcxb;->a()Lcwx;

    move-result-object v0

    sget-object v2, Lcwx;->b:Lcwx;

    invoke-virtual {v0, v2}, Lcwx;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcqa;->j:Lczq;

    invoke-interface {v0, p1}, Lczq;->h(Z)V

    :cond_1
    iget-object p1, p0, Lcqa;->j:Lczq;

    invoke-interface {p1, v1}, Lczq;->f(Z)V

    :cond_2
    return-void
.end method

.method public final o()I
    .locals 1

    iget-object v0, p0, Lcqa;->y:Lcyq;

    invoke-interface {v0}, Lcyq;->bx()I

    move-result v0

    return v0
.end method
