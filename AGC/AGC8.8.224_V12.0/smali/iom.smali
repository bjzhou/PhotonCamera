.class public final Liom;
.super Ljava/lang/Object;

# interfaces
.implements Liou;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

.field private final c:Ljava/util/Set;

.field private final d:Ldhi;

.field private final e:Lkbc;

.field private final f:Ljava/util/concurrent/Executor;

.field private final g:Ldbf;

.field private final h:Ljvs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/viewfindereffects/ViewfinderEffectsRunner"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Liom;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Ldhi;Lkbc;Ljava/util/concurrent/Executor;Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;Ldbf;Ljvs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liom;->c:Ljava/util/Set;

    iput-object p2, p0, Liom;->d:Ldhi;

    iput-object p3, p0, Liom;->e:Lkbc;

    iput-object p4, p0, Liom;->f:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Liom;->b:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    iput-object p6, p0, Liom;->g:Ldbf;

    iput-object p7, p0, Liom;->h:Ljvs;

    return-void
.end method


# virtual methods
.method public final synthetic a()Liot;
    .locals 10

    iget-object v1, p0, Liom;->f:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Liom;->g:Ldbf;

    iget-object v4, p0, Liom;->h:Ljvs;

    iget-object v5, p0, Liom;->e:Lkbc;

    iget-object v0, p0, Liom;->d:Ldhi;

    sget-object v2, Lldg;->a:Lldg;

    const-string v6, "glvffx"

    invoke-static {v2, v6}, Lktf;->s(Lldg;Ljava/lang/String;)Llbd;

    move-result-object v2

    invoke-static {v2}, Lktf;->r(Llbd;)Llbd;

    move-result-object v2

    sget-object v6, Lhck;->l:Lhck;

    invoke-interface {v2, v6}, Llbd;->execute(Ljava/lang/Runnable;)V

    new-instance v7, Liok;

    sget-object v6, Ldho;->aB:Ldhj;

    invoke-interface {v0, v6}, Ldhi;->l(Ldhj;)Z

    move-result v6

    sget-object v8, Ldho;->v:Ldhk;

    invoke-interface {v0, v8}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    sget-object v8, Ldho;->u:Ldhk;

    invoke-interface {v0, v8}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v0

    invoke-virtual {v0, v9}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Liok;-><init>(Ljava/util/concurrent/Executor;Llbd;Ljvs;Ljvs;Lkbc;Z)V

    iget-object v0, v7, Liok;->f:Lnph;

    new-instance v1, Lgij;

    const/16 v2, 0xd

    invoke-direct {v1, p0, v2}, Lgij;-><init>(Liom;I)V

    sget-object v2, Lnnv;->a:Lnnv;

    invoke-static {v0, v1, v2}, Ljvd;->t(Lnou;Ljzs;Ljava/util/concurrent/Executor;)V

    iget-object v0, p0, Liom;->c:Ljava/util/Set;

    iget-object v1, p0, Liom;->e:Lkbc;

    new-instance v2, Liol;

    invoke-direct {v2, v0, v7, v1}, Liol;-><init>(Ljava/util/Set;Lios;Lkbc;)V

    invoke-virtual {v2}, Liol;->b()V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lior;

    iget-object v1, v1, Lior;->b:Ljvs;

    invoke-static {v1}, Ljvo;->c(Ljvs;)Ljvs;

    move-result-object v1

    new-instance v3, Liiz;

    const/4 v4, 0x3

    invoke-direct {v3, v2, v4}, Liiz;-><init>(Liol;I)V

    sget-object v4, Lnnv;->a:Lnnv;

    invoke-interface {v1, v3, v4}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v1

    iget-object v3, v2, Liol;->a:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v2
.end method
