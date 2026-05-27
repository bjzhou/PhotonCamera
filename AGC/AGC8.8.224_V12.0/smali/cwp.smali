.class public final Lcwp;
.super Ljava/lang/Object;

# interfaces
.implements Lcwj;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Lcwq;

.field public c:J

.field private final d:Ligx;

.field private final e:Ldbf;

.field private final f:Ljud;

.field private final g:Lcrz;

.field private final h:Ljvs;

.field private final i:Ljvs;

.field private final j:Ldhi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/camcorder/snapshot/SnapshotTakerViewfinderImpl"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lcwp;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lctv;Lcsa;Ligx;Ldbf;Lcwq;Ljvs;Ljvs;Ldhi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lctv;->b()Ljud;

    move-result-object p1

    iput-object p1, p0, Lcwp;->f:Ljud;

    iput-object p3, p0, Lcwp;->d:Ligx;

    iput-object p4, p0, Lcwp;->e:Ldbf;

    iput-object p5, p0, Lcwp;->b:Lcwq;

    invoke-virtual {p2}, Lcsa;->a()Lcrz;

    move-result-object p1

    iput-object p1, p0, Lcwp;->g:Lcrz;

    iput-object p6, p0, Lcwp;->h:Ljvs;

    iput-object p7, p0, Lcwp;->i:Ljvs;

    iput-object p8, p0, Lcwp;->j:Ldhi;

    return-void
.end method


# virtual methods
.method public final a(Lgxz;)Lnou;
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcwp;->c:J

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v0

    iget-object v1, p0, Lcwp;->e:Ldbf;

    invoke-virtual {v1}, Ldbf;->d()Lklv;

    move-result-object v1

    iget-object v2, p0, Lcwp;->i:Ljvs;

    invoke-interface {v2}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lklv;->a:Lklv;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    iget-object v3, p0, Lcwp;->j:Ldhi;

    sget-object v4, Ldho;->bU:Ldhj;

    invoke-interface {v3, v4}, Ldhi;->l(Ldhj;)Z

    move-result v3

    const/16 v4, 0x5a

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcwp;->h:Ljvs;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_1

    :cond_1
    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcwp;->e:Ldbf;

    invoke-virtual {v3}, Ldbf;->e()Lmqp;

    move-result-object v3

    invoke-virtual {v3}, Lmqp;->g()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfuz;

    invoke-virtual {v3}, Lklw;->f()I

    move-result v4

    goto :goto_1

    :cond_3
    :goto_1
    iget-object v3, p0, Lcwp;->g:Lcrz;

    iget-object v3, v3, Lcrz;->o:Ljvs;

    check-cast v3, Ljvk;

    iget-object v3, v3, Ljvk;->d:Ljava/lang/Object;

    check-cast v3, Lkab;

    iget v3, v3, Lkab;->e:I

    sub-int/2addr v3, v4

    sget-object v4, Lklv;->a:Lklv;

    invoke-virtual {v2, v4}, Lklv;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    rsub-int v3, v3, 0x168

    rem-int/lit16 v3, v3, 0x168

    :cond_4
    invoke-static {v3}, Lkab;->b(I)Lkab;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcwp;->b(Lklv;Lkab;)Lnou;

    move-result-object v2

    new-instance v3, Lcwo;

    invoke-direct {v3, p0, v0, v1, p1}, Lcwo;-><init>(Lcwp;Lnph;Lklv;Lgxz;)V

    iget-object p1, p0, Lcwp;->f:Ljud;

    invoke-static {v2, v3, p1}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public final b(Lklv;Lkab;)Lnou;
    .locals 3

    iget-object v0, p0, Lcwp;->d:Ligx;

    sget-object v1, Lklv;->a:Lklv;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1, v2, p2}, Ligx;->e(ZILkab;)Lmqp;

    move-result-object p1

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lihc;

    iget-object p1, p1, Lihc;->a:Landroid/graphics/Bitmap;

    invoke-static {p1}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Can\'t take screen snapshot."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lnsy;->A(Ljava/lang/Throwable;)Lnou;

    move-result-object p1

    return-object p1
.end method

.method public final close()V
    .locals 0

    return-void
.end method
