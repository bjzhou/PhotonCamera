.class public final Liit;
.super Ljava/lang/Object;

# interfaces
.implements Lijk;
.implements Lfaz;
.implements Lfav;


# instance fields
.field public final a:Ldol;

.field public final b:Ldhi;

.field public final c:Licj;

.field public final d:Ldqx;

.field private final e:Ljuh;

.field private final f:Ljvs;

.field private final g:Lmqp;

.field private final h:Ljwb;

.field private final i:Loiw;

.field private final j:Lezx;

.field private final k:Lcdi;

.field private final l:Ldja;

.field private final m:Lbkb;


# direct methods
.method public constructor <init>(Ldol;Loiw;Ldqx;Lbkb;Ldja;Lcdi;Ljuh;Ldhi;Ljwb;Ljwb;Lgcg;Lmqp;Licj;Ljvs;Lezx;[B[B[B[B[B[B)V
    .locals 5

    move-object v0, p0

    move-object v1, p8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v2, p1

    iput-object v2, v0, Liit;->a:Ldol;

    move-object v2, p2

    iput-object v2, v0, Liit;->i:Loiw;

    move-object v2, p3

    iput-object v2, v0, Liit;->d:Ldqx;

    move-object v2, p4

    iput-object v2, v0, Liit;->m:Lbkb;

    move-object v2, p5

    iput-object v2, v0, Liit;->l:Ldja;

    move-object v2, p6

    iput-object v2, v0, Liit;->k:Lcdi;

    move-object v2, p7

    iput-object v2, v0, Liit;->e:Ljuh;

    iput-object v1, v0, Liit;->b:Ldhi;

    move-object v2, p9

    iput-object v2, v0, Liit;->h:Ljwb;

    move-object/from16 v2, p12

    iput-object v2, v0, Liit;->g:Lmqp;

    move-object/from16 v2, p13

    iput-object v2, v0, Liit;->c:Licj;

    move-object/from16 v2, p15

    iput-object v2, v0, Liit;->j:Lezx;

    const/4 v2, 0x3

    new-array v2, v2, [Ljvs;

    const/4 v3, 0x0

    aput-object p11, v2, v3

    const/4 v3, 0x1

    aput-object p10, v2, v3

    const/4 v3, 0x2

    aput-object p14, v2, v3

    invoke-static {v2}, Ljvw;->b([Ljvs;)Ljvs;

    move-result-object v2

    new-instance v3, Lhga;

    const/4 v4, 0x6

    invoke-direct {v3, p8, v4}, Lhga;-><init>(Ldhi;I)V

    invoke-static {v2, v3}, Ljvw;->j(Ljvs;Lmqi;)Ljvs;

    move-result-object v1

    iput-object v1, v0, Liit;->f:Ljvs;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    iget-object v0, p0, Liit;->i:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldja;

    iget-object v0, v0, Ldja;->a:Ljava/lang/Object;

    check-cast v0, Ljew;

    const v1, 0x7f0b013f

    invoke-virtual {v0, v1}, Ljew;->f(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/android/apps/camera/evcomp/EvCompView;

    iget-object v1, p0, Liit;->a:Ldol;

    iget-object v3, p0, Liit;->h:Ljwb;

    iget-object v0, p0, Liit;->d:Ldqx;

    iget-object v4, v0, Ldqx;->c:Ljava/lang/Object;

    iget-object v5, v0, Ldqx;->b:Ljava/lang/Object;

    iget-object v6, v0, Ldqx;->a:Ljava/lang/Object;

    iget-object v0, p0, Liit;->m:Lbkb;

    iget-object v0, v0, Lbkb;->a:Ljava/lang/Object;

    iget-object v7, p0, Liit;->l:Ldja;

    iget-object v8, p0, Liit;->g:Lmqp;

    iget-object v9, p0, Liit;->c:Licj;

    invoke-interface/range {v1 .. v9}, Ldol;->t(Lcom/google/android/apps/camera/evcomp/EvCompView;Ljwb;Ljwb;Ljwb;Ljwb;Ldja;Lmqp;Licj;)V

    iget-object v0, p0, Liit;->i:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldja;

    iget-object v0, v0, Ldja;->a:Ljava/lang/Object;

    check-cast v0, Ljew;

    const v1, 0x7f0b0053

    invoke-virtual {v0, v1}, Ljew;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;

    iget-object v1, p0, Liit;->a:Ldol;

    invoke-static {v1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->l:Lmqp;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->a()Lhys;

    move-result-object v1

    iget-object v1, v1, Lhys;->i:Lhyn;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->a()Lhys;

    move-result-object v2

    iget-object v2, v2, Lhys;->g:Liko;

    iget-object v3, v0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->o:Ljwb;

    invoke-interface {v3}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lika;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->i(Lhyn;Liko;Lika;)V

    iget-object v0, p0, Liit;->k:Lcdi;

    invoke-virtual {v0}, Lcdi;->i()Ljuf;

    move-result-object v0

    iget-object v1, p0, Liit;->l:Ldja;

    iget-object v1, v1, Ldja;->b:Ljava/lang/Object;

    new-instance v2, Lhml;

    const/16 v3, 0x14

    invoke-direct {v2, p0, v3}, Lhml;-><init>(Liit;I)V

    sget-object v3, Lnnv;->a:Lnnv;

    invoke-interface {v1, v2, v3}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    iget-object v0, p0, Liit;->k:Lcdi;

    invoke-virtual {v0}, Lcdi;->i()Ljuf;

    move-result-object v0

    iget-object v1, p0, Liit;->d:Ldqx;

    iget-object v1, v1, Ldqx;->e:Ljava/lang/Object;

    new-instance v2, Lhml;

    const/16 v3, 0x12

    invoke-direct {v2, p0, v3}, Lhml;-><init>(Liit;I)V

    iget-object v3, p0, Liit;->e:Ljuh;

    invoke-interface {v1, v2, v3}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    iget-object v0, p0, Liit;->k:Lcdi;

    invoke-virtual {v0}, Lcdi;->i()Ljuf;

    move-result-object v0

    iget-object v1, p0, Liit;->l:Ldja;

    iget-object v1, v1, Ldja;->c:Ljava/lang/Object;

    new-instance v2, Lhml;

    const/16 v3, 0x11

    invoke-direct {v2, p0, v3}, Lhml;-><init>(Liit;I)V

    sget-object v3, Lnnv;->a:Lnnv;

    invoke-interface {v1, v2, v3}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    iget-object v0, p0, Liit;->k:Lcdi;

    invoke-virtual {v0}, Lcdi;->i()Ljuf;

    move-result-object v0

    iget-object v1, p0, Liit;->f:Ljvs;

    new-instance v2, Lhml;

    const/16 v3, 0x13

    invoke-direct {v2, p0, v3}, Lhml;-><init>(Liit;I)V

    iget-object v3, p0, Liit;->e:Ljuh;

    invoke-interface {v1, v2, v3}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    iget-object v0, p0, Liit;->j:Lezx;

    invoke-virtual {v0, p0}, Lfak;->e(Lfaz;)V

    return-void
.end method

.method public final bN()V
    .locals 3

    iget-object v0, p0, Liit;->g:Lmqp;

    check-cast v0, Lmqt;

    iget-object v0, v0, Lmqt;->a:Ljava/lang/Object;

    check-cast v0, Lglf;

    iget-object v1, p0, Liit;->k:Lcdi;

    iget-object v2, p0, Liit;->f:Ljvs;

    invoke-interface {v0, v1, v2}, Lglf;->l(Lcdi;Ljvs;)V

    return-void
.end method
