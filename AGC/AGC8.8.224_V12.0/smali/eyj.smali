.class public final synthetic Leyj;
.super Ljava/lang/Object;

# interfaces
.implements Lhip;


# instance fields
.field public final synthetic a:Lhnb;

.field public final synthetic b:Leyf;

.field public final synthetic c:Leys;

.field public final synthetic d:Ljwb;

.field public final synthetic e:Lcdi;

.field public final synthetic f:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;


# direct methods
.method public synthetic constructor <init>(Lcdi;Lhnb;Leyf;Landroidx/wear/ambient/AmbientModeSupport$AmbientController;Leys;Ljwb;[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leyj;->e:Lcdi;

    iput-object p2, p0, Leyj;->a:Lhnb;

    iput-object p3, p0, Leyj;->b:Leyf;

    iput-object p4, p0, Leyj;->f:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    iput-object p5, p0, Leyj;->c:Leys;

    iput-object p6, p0, Leyj;->d:Ljwb;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Leyj;->e:Lcdi;

    iget-object v1, p0, Leyj;->a:Lhnb;

    iget-object v2, p0, Leyj;->b:Leyf;

    iget-object v3, p0, Leyj;->f:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    iget-object v4, p0, Leyj;->c:Leys;

    iget-object v5, p0, Leyj;->d:Ljwb;

    sget-object v6, Leyk;->a:Ljwb;

    invoke-virtual {v0}, Lcdi;->i()Ljuf;

    move-result-object v0

    invoke-interface {v1, v2}, Lhnb;->f(Lhmz;)Lkad;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    invoke-static {}, Lhdz;->a()Llie;

    move-result-object v0

    const-string v1, "LensLite"

    iput-object v1, v0, Llie;->c:Ljava/lang/Object;

    sget-object v1, Lklv;->b:Lklv;

    invoke-static {v1}, Lmwn;->H(Ljava/lang/Object;)Lmwn;

    move-result-object v1

    invoke-virtual {v0, v1}, Llie;->g(Lmwn;)V

    sget-object v1, Lika;->b:Lika;

    invoke-static {v1}, Lmwn;->H(Ljava/lang/Object;)Lmwn;

    move-result-object v1

    invoke-virtual {v0, v1}, Llie;->h(Lmwn;)V

    invoke-virtual {v0, v5}, Llie;->i(Ljvs;)V

    invoke-virtual {v0}, Llie;->f()Lhdz;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->k(Lhdy;Lhdz;)V

    return-void
.end method
