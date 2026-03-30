.class public abstract Lleq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lkuc;


# static fields
.field private static final a:Lsdb;


# instance fields
.field private final b:Lljk;

.field private final c:Lkuc;

.field private final d:Ljava/util/Set;

.field private final e:Lpdf;

.field private final f:Llco;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    sput-object v0, Lleq;->a:Lsdb;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    const-string v0, "leq"

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lljk;Lkuc;Ljava/util/Set;Lpdf;Llco;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p4, p0, Lleq;->e:Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    iput-object p3, p0, Lleq;->d:Ljava/util/Set;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iput-object p2, p0, Lleq;->c:Lkuc;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    iput-object p5, p0, Lleq;->f:Llco;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    :goto_6
    iput-object p1, p0, Lleq;->b:Lljk;

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method private static final e(Lkuc;Ljava/util/List;Lkub;Llko;)V
    .locals 0

    goto/32 :goto_7

    nop

    nop

    :goto_0
    iget-object p1, p3, Llko;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    invoke-interface {p0, p2, p3}, Lkuc;->c(Lkub;Llko;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p1, p3, Llko;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    invoke-interface {p1}, Llxa;->ag()Lmjn;

    move-result-object p1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1}, Lmjn;->g()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    invoke-interface {p1}, Lktq;->h()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p1}, Llcm;->a(Ljava/util/List;)V

    goto/32 :goto_2

    nop

    nop
.end method


# virtual methods
.method public final a()Loyd;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0}, Lkuc;->a()Loyd;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lleq;->c:Lkuc;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop
.end method

.method public final b()Loyd;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    :goto_1
    invoke-static {p0}, Lrgw;->H(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lleq;->d:Ljava/util/Set;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0, p0}, Loyg;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p0}, Lkav;->m(Ljava/util/List;)Lkqa;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v0, Loyg;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public c(Lkub;Llko;)V
    .locals 7

    goto/32 :goto_11

    nop

    nop

    :goto_0
    invoke-interface {v1, v2}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1
    invoke-interface {v1, v3}, Lljk;->m(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lleq;->e:Lpdf;

    nop

    const-string v3, "pckZsl#getFrames"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, v3}, Lpdf;->h(Ljava/lang/String;)V

    iget-object v1, p0, Lleq;->b:Lljk;

    nop

    nop

    invoke-interface {v1}, Lljk;->k()Ljava/util/List;

    move-result-object v1

    nop

    nop

    invoke-interface {v2}, Lljj;->a()V

    iget-object v3, p0, Lleq;->e:Lpdf;

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Lpdf;->g()V

    iget-object v3, p2, Llko;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    const/4 v5, 0x1

    nop

    invoke-interface {v3, v5, v4}, Llxa;->E(ZZ)V

    move-object v3, v1

    nop

    nop

    nop

    check-cast v3, Lsbh;

    nop

    iget v3, v3, Lsbh;->c:I

    nop

    nop

    nop

    nop

    nop

    if-gtz v3, :cond_0

    nop

    sget-object v0, Lleq;->a:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    const/16 v3, 0xdc3

    nop

    nop

    invoke-interface {v0, v3}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    nop

    const-string v3, "Can\'t execute command, not enough ZSL images. Required: %d, got: %d"

    nop

    move-object v4, v1

    nop

    nop

    check-cast v4, Lsbh;

    nop

    nop

    iget v4, v4, Lsbh;->c:I

    nop

    nop

    invoke-interface {v0, v3, v5, v4}, Lscz;->w(Ljava/lang/String;II)V

    iget-object p0, p0, Lleq;->c:Lkuc;

    nop

    invoke-static {p0, v1, p1, p2}, Lleq;->e(Lkuc;Ljava/util/List;Lkub;Llko;)V

    goto/16 :goto_d

    nop

    nop

    :cond_0
    iget-object v3, p0, Lleq;->e:Lpdf;

    nop

    const-string v6, "pckHdrZsl#captureIndicator"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3, v6}, Lpdf;->f(Ljava/lang/String;)V

    iget-object v3, p2, Llko;->b:Ljava/lang/Object;

    nop

    nop

    nop

    invoke-interface {v3}, Lktq;->d()Lktp;

    move-result-object v6

    nop

    nop

    nop

    nop

    if-nez v6, :cond_1

    nop

    invoke-interface {v3}, Lktq;->c()Lktp;

    move-result-object v3

    nop

    invoke-interface {v3}, Lktp;->h()V

    :cond_1
    iget-object v3, p0, Lleq;->e:Lpdf;

    nop

    nop

    nop

    const-string v6, "pckZsl#afMetadata"

    nop

    nop

    nop

    invoke-interface {v3, v6}, Lpdf;->h(Ljava/lang/String;)V

    iget-object v3, p0, Lleq;->f:Llco;

    nop

    nop

    nop

    nop

    nop

    iget-object v6, p2, Llko;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v6}, Llco;->a(Llxa;)V

    iget-object v3, p0, Lleq;->e:Lpdf;

    nop

    nop

    nop

    nop

    nop

    const-string v6, "pckZsl#filterFrames"

    nop

    nop

    nop

    nop

    invoke-interface {v3, v6}, Lpdf;->h(Ljava/lang/String;)V

    iget-object v3, p0, Lleq;->b:Lljk;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3, v1}, Lljk;->i(Ljava/util/List;)Lryb;

    move-result-object v1

    nop

    iget-object v3, p0, Lleq;->e:Lpdf;

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Lpdf;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Lleq;->e:Lpdf;

    nop

    nop

    const-string v6, "pckZsl#processZslFrames"

    nop

    nop

    nop

    nop

    invoke-interface {v3, v6}, Lpdf;->f(Ljava/lang/String;)V

    invoke-virtual {p0, v1, p1, p2}, Lleq;->d(Ljava/util/List;Lkub;Llko;)Z

    move-result v3

    nop
    :try_end_1
    .catch Lhui; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v4, p0, Lleq;->e:Lpdf;

    nop

    nop

    invoke-interface {v4}, Lpdf;->g()V

    iget-object v4, p0, Lleq;->b:Lljk;

    nop

    nop

    invoke-interface {v4, v0}, Lljk;->m(Ljava/lang/String;)V

    if-nez v3, :cond_3

    nop

    nop

    iget-object p0, p0, Lleq;->c:Lkuc;

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0, v1, p1, p2}, Lleq;->e(Lkuc;Ljava/util/List;Lkub;Llko;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_3
    invoke-interface {v1}, Lljk;->a()Lljj;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_5
    return-void

    nop

    :goto_6
    :try_start_3
    iget-object v4, p0, Lleq;->e:Lpdf;

    nop

    invoke-interface {v4}, Lpdf;->g()V

    iget-object v4, p0, Lleq;->b:Lljk;

    nop

    invoke-interface {v4, v0}, Lljk;->m(Ljava/lang/String;)V

    iget-object p0, p0, Lleq;->c:Lkuc;

    nop

    nop

    nop

    nop

    invoke-static {p0, v1, p1, p2}, Lleq;->e(Lkuc;Ljava/util/List;Lkub;Llko;)V

    throw v3

    nop

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_a

    nop

    :goto_8
    const-string v3, "Initial"

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_9
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_b
    move v4, v5

    nop

    nop

    :goto_c
    :try_start_4
    iget-object v5, p0, Lleq;->e:Lpdf;

    nop

    invoke-interface {v5}, Lpdf;->g()V

    iget-object v5, p0, Lleq;->b:Lljk;

    nop

    nop

    nop

    nop

    invoke-interface {v5, v0}, Lljk;->m(Ljava/lang/String;)V

    if-eqz v4, :cond_2

    nop

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lleq;->c:Lkuc;

    nop

    nop

    nop

    goto/16 :goto_2

    nop

    :cond_2
    iget-object p0, p2, Llko;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p0}, Lktq;->f()V

    iget-object p0, p2, Llko;->d:Ljava/lang/Object;

    nop

    sget-object p1, Lnim;->a:Lnik;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p0, p1, v3}, Llxa;->D(Lnik;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_3
    :goto_d
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_f
    invoke-interface {v2}, Lljj;->a()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const-string v2, "pckZsl#lockBuffer"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_11
    const v0, 0x1d

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_4

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_4
    goto/32 :goto_9

    nop

    :goto_13
    throw p0

    nop

    :goto_14
    goto/32 :goto_7

    nop

    nop

    :goto_15
    iget-object v1, p0, Lleq;->b:Lljk;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v1, p0, Lleq;->e:Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-interface {v2}, Lljj;->a()V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_18
    goto :goto_d

    nop

    nop

    nop

    :catchall_1
    move-exception v3

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v1, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1a
    goto/16 :goto_6

    nop

    :catch_0
    move-exception v3

    nop

    nop

    nop

    nop

    :try_start_5
    instance-of v6, v3, Lhuf;

    nop

    nop

    nop

    if-eqz v6, :cond_5

    nop

    nop

    nop

    nop

    nop

    sget-object v5, Lleq;->a:Lsdb;

    nop

    nop

    invoke-virtual {v5}, Lscs;->b()Lsdo;

    move-result-object v5

    nop

    nop

    nop

    nop

    invoke-interface {v5, v3}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object v5

    nop

    nop

    nop

    check-cast v5, Lscz;

    nop

    nop

    nop

    nop

    const/16 v6, 0xdc2

    nop

    invoke-interface {v5, v6}, Lscz;->M(I)Lsdo;

    move-result-object v5

    nop

    nop

    check-cast v5, Lscz;

    nop

    nop

    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    sget-object v6, Lcom/google/android/apps/camera/backup/iI/oRSsAde;->ZYtigrJorWnpXF:Ljava/lang/String;

    nop

    invoke-interface {v5, v6}, Lscz;->s(Ljava/lang/String;)V

    goto/16 :goto_c

    nop

    nop

    nop

    :cond_5
    sget-object v4, Lleq;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Lscs;->b()Lsdo;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v4, v3}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object v4

    nop

    check-cast v4, Lscz;

    nop

    nop

    nop

    nop

    nop

    const/16 v6, 0xdc1

    nop

    nop

    nop

    invoke-interface {v4, v6}, Lscz;->M(I)Lsdo;

    move-result-object v4

    nop

    check-cast v4, Lscz;

    nop

    nop

    const-string v6, "Error executing main ZSL command, executing fallback"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v4, v6}, Lscz;->s(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/32 :goto_b

    nop

    nop

    :goto_1b
    const-string v0, "Final"

    nop

    goto/32 :goto_16

    nop

    nop

    nop
.end method

.method protected abstract d(Ljava/util/List;Lkub;Llko;)Z
.end method
