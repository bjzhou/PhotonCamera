.class public final synthetic Lfcp;
.super Ljava/lang/Object;

# interfaces
.implements Lhip;


# instance fields
.field public final synthetic a:Ldhi;

.field public final synthetic b:Ljvs;

.field public final synthetic c:Lfcm;

.field public final synthetic d:Lfda;

.field public final synthetic e:Lfcy;

.field public final synthetic f:Ljwb;

.field public final synthetic g:Lccg;

.field public final synthetic h:Lcdi;

.field public final synthetic i:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;


# direct methods
.method public synthetic constructor <init>(Ldhi;Ljvs;Landroidx/wear/ambient/AmbientModeSupport$AmbientController;Lfcm;Lfda;Lfcy;Lcdi;Ljwb;Lccg;[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfcp;->a:Ldhi;

    iput-object p2, p0, Lfcp;->b:Ljvs;

    iput-object p3, p0, Lfcp;->i:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    iput-object p4, p0, Lfcp;->c:Lfcm;

    iput-object p5, p0, Lfcp;->d:Lfda;

    iput-object p6, p0, Lfcp;->e:Lfcy;

    iput-object p7, p0, Lfcp;->h:Lcdi;

    iput-object p8, p0, Lfcp;->f:Ljwb;

    iput-object p9, p0, Lfcp;->g:Lccg;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v0, p0, Lfcp;->a:Ldhi;

    iget-object v1, p0, Lfcp;->b:Ljvs;

    iget-object v2, p0, Lfcp;->i:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    iget-object v3, p0, Lfcp;->c:Lfcm;

    iget-object v4, p0, Lfcp;->d:Lfda;

    iget-object v5, p0, Lfcp;->e:Lfcy;

    iget-object v6, p0, Lfcp;->h:Lcdi;

    iget-object v7, p0, Lfcp;->f:Ljwb;

    iget-object v8, p0, Lfcp;->g:Lccg;

    sget-object v9, Ldhq;->ac:Ldhj;

    invoke-interface {v0, v9}, Ldhi;->l(Ldhj;)Z

    move-result v9

    if-eqz v9, :cond_0

    sget-object v4, Ldhq;->z:Ldhj;

    invoke-interface {v0, v4}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lhdz;->a()Llie;

    move-result-object v0

    const-string v4, "Astro"

    iput-object v4, v0, Llie;->c:Ljava/lang/Object;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Llie;->j(Z)V

    sget-object v4, Lika;->b:Lika;

    invoke-static {v4}, Lmwn;->H(Ljava/lang/Object;)Lmwn;

    move-result-object v4

    invoke-virtual {v0, v4}, Llie;->h(Lmwn;)V

    sget-object v4, Lklv;->b:Lklv;

    invoke-static {v4}, Lmwn;->H(Ljava/lang/Object;)Lmwn;

    move-result-object v4

    invoke-virtual {v0, v4}, Llie;->g(Lmwn;)V

    invoke-virtual {v0, v1}, Llie;->i(Ljvs;)V

    invoke-virtual {v0}, Llie;->f()Lhdz;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->k(Lhdy;Lhdz;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lhdz;->a()Llie;

    move-result-object v3

    const-string v9, "Night"

    iput-object v9, v3, Llie;->c:Ljava/lang/Object;

    sget-object v9, Lika;->b:Lika;

    invoke-static {v9}, Lmwn;->H(Ljava/lang/Object;)Lmwn;

    move-result-object v9

    invoke-virtual {v3, v9}, Llie;->h(Lmwn;)V

    sget-object v9, Lklv;->b:Lklv;

    sget-object v10, Lklv;->a:Lklv;

    invoke-static {v9, v10}, Lmwn;->I(Ljava/lang/Object;Ljava/lang/Object;)Lmwn;

    move-result-object v9

    invoke-virtual {v3, v9}, Llie;->g(Lmwn;)V

    invoke-virtual {v3, v1}, Llie;->i(Ljvs;)V

    invoke-virtual {v3}, Llie;->f()Lhdz;

    move-result-object v9

    invoke-virtual {v2, v4, v9}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->k(Lhdy;Lhdz;)V

    sget-object v4, Ldhu;->f:Ldhj;

    invoke-interface {v0, v4}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lika;->b:Lika;

    invoke-static {v0}, Lmwn;->H(Ljava/lang/Object;)Lmwn;

    move-result-object v0

    invoke-virtual {v3, v0}, Llie;->h(Lmwn;)V

    sget-object v0, Lklv;->a:Lklv;

    invoke-static {v0}, Lmwn;->H(Ljava/lang/Object;)Lmwn;

    move-result-object v0

    invoke-virtual {v3, v0}, Llie;->g(Lmwn;)V

    invoke-virtual {v3, v1}, Llie;->i(Ljvs;)V

    invoke-virtual {v3}, Llie;->f()Lhdz;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->k(Lhdy;Lhdz;)V

    :cond_1
    :goto_0
    invoke-virtual {v6}, Lcdi;->i()Ljuf;

    move-result-object v0

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Leus;

    const/16 v2, 0xb

    invoke-direct {v1, v8, v2}, Leus;-><init>(Lccg;I)V

    invoke-static {}, Ljvd;->l()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    return-void
.end method
