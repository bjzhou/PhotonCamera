.class public final Lkgl;
.super Ljava/lang/Object;

# interfaces
.implements Lken;


# instance fields
.field public final a:Lkaq;

.field public final b:Lkgh;

.field private final c:Lkga;

.field private final d:Lkfv;

.field private final e:Lkhh;

.field private final f:Lkgz;

.field private final g:Ljuf;

.field private final h:J

.field private final i:Lkhf;

.field private final j:Lkgi;

.field private final k:Lkfs;

.field private final l:Lnow;

.field private m:Ljava/util/concurrent/Future;

.field private final n:Lkns;

.field private final o:Lkpo;

.field private final p:Landroidx/wear/ambient/AmbientDelegate;

.field private final q:Lkgd;

.field private final r:Lloi;

.field private final s:Ligo;


# direct methods
.method public constructor <init>(Lkgi;Lkns;Lkga;Lkpo;Lkfv;Landroidx/wear/ambient/AmbientDelegate;Lkgz;Lkhh;Ljuf;Lkcs;Lkhf;Ligo;Lloi;Lkgd;Lkaq;Lkgh;[B[B[B[B[B)V
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p9

    move-object/from16 v4, p11

    move-object/from16 v5, p13

    move-object/from16 v6, p15

    move-object/from16 v7, p16

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v8, "FSEx"

    invoke-static {v8}, Ljvd;->f(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v8

    invoke-static {v8}, Lnsy;->p(Ljava/util/concurrent/ExecutorService;)Lnow;

    move-result-object v8

    iput-object v8, v0, Lkgl;->l:Lnow;

    iput-object v1, v0, Lkgl;->j:Lkgi;

    move-object v9, p3

    iput-object v9, v0, Lkgl;->c:Lkga;

    move-object/from16 v10, p4

    iput-object v10, v0, Lkgl;->o:Lkpo;

    move-object/from16 v10, p5

    iput-object v10, v0, Lkgl;->d:Lkfv;

    move-object/from16 v10, p6

    iput-object v10, v0, Lkgl;->p:Landroidx/wear/ambient/AmbientDelegate;

    move-object/from16 v10, p7

    iput-object v10, v0, Lkgl;->f:Lkgz;

    move-object/from16 v10, p8

    iput-object v10, v0, Lkgl;->e:Lkhh;

    iput-object v3, v0, Lkgl;->g:Ljuf;

    iput-object v4, v0, Lkgl;->i:Lkhf;

    move-object/from16 v10, p12

    iput-object v10, v0, Lkgl;->s:Ligo;

    iput-object v2, v0, Lkgl;->n:Lkns;

    iput-object v7, v0, Lkgl;->b:Lkgh;

    move-object/from16 v10, p14

    iput-object v10, v0, Lkgl;->q:Lkgd;

    iput-object v5, v0, Lkgl;->r:Lloi;

    new-instance v10, Lkfs;

    invoke-direct {v10, v7, v8, v6}, Lkfs;-><init>(Lkgh;Ljava/util/concurrent/Executor;Lkaq;)V

    iput-object v10, v0, Lkgl;->k:Lkfs;

    const-string v8, "FrameServer"

    invoke-interface {v6, v8}, Lkaq;->a(Ljava/lang/String;)Lkaq;

    move-result-object v6

    iput-object v6, v0, Lkgl;->a:Lkaq;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    iput-wide v10, v0, Lkgl;->h:J

    invoke-virtual {p2, p1}, Lkns;->c(Lkgi;)V

    invoke-virtual {p1}, Lkgi;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p10

    invoke-virtual {v2, v1}, Lkcs;->b(Ljava/lang/String;)Lkad;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljuf;->d(Lkad;)V

    invoke-virtual {v3, v7}, Ljuf;->d(Lkad;)V

    invoke-virtual {v3, v4}, Ljuf;->d(Lkad;)V

    invoke-virtual {p3}, Lkga;->e()Lkll;

    move-result-object v1

    iget-object v1, v1, Lkll;->a:Ljava/lang/String;

    iget-object v2, v5, Lloi;->c:Ljava/lang/Object;

    check-cast v2, Lkic;

    iget-object v2, v2, Lkic;->a:Lkte;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Lkte;->d([Ljava/lang/Object;)V

    return-void
.end method

.method private final x(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lkgl;->g:Ljuf;

    invoke-virtual {v0}, Ljuf;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkgl;->a:Lkaq;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to invoke "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " on "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " after close()"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/agc/Log;->e(Ljava/lang/Object;)I

    invoke-interface {v0, p1}, Lkaq;->i(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final a(Landroid/util/Printer;)V
    .locals 13

    iget-object v0, p0, Lkgl;->c:Lkga;

    new-instance v1, Lkgb;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lkgb;-><init>(Landroid/util/Printer;I)V

    iget-object v3, v0, Lkga;->a:Lkgi;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lkga;->b:Lkeq;

    iget-object v4, v4, Lkeq;->a:Lkll;

    iget-object v4, v4, Lkll;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (Camera "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lkga;->d()Lkli;

    move-result-object v3

    invoke-interface {v3}, Lkli;->k()Lklv;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lkga;->d()Lkli;

    move-result-object v4

    invoke-interface {v4}, Lkli;->M()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lkga;->d()Lkli;

    move-result-object v4

    invoke-interface {v4}, Lkli;->D()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, " (Logical)"

    goto :goto_0

    :cond_0
    const-string v4, " (Physical)"

    :goto_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "Facing"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v5, v3}, Lkga;->f(Landroid/util/Printer;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v0, Lkga;->b:Lkeq;

    iget-object v3, v3, Lkeq;->b:Lkez;

    sget-object v4, Lkez;->a:Lkez;

    if-ne v3, v4, :cond_1

    const-string v3, "Normal"

    goto :goto_1

    :cond_1
    const-string v3, "HighSpeed"

    :goto_1
    const-string v4, "Mode"

    invoke-static {v1, v4, v3}, Lkga;->f(Landroid/util/Printer;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v0, Lkga;->c:Lknc;

    iget-wide v4, v3, Lkna;->b:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-gtz v8, :cond_2

    const-string v3, "-"

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Lknc;->f()Ljvs;

    move-result-object v3

    invoke-interface {v3}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/32 v5, 0x100000

    div-long/2addr v3, v5

    iget-object v7, v0, Lkga;->c:Lknc;

    iget-wide v7, v7, Lkna;->b:J

    div-long/2addr v7, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " (MiB)"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    const-string v4, "Memory"

    invoke-static {v1, v4, v3}, Lkga;->f(Landroid/util/Printer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Streams: "

    invoke-interface {p1, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    iget-object v3, v0, Lkga;->d:Lkkc;

    iget-object v3, v3, Lkkc;->a:Lmwn;

    invoke-virtual {v3}, Lmwn;->cz()Lnac;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkkb;

    iget-boolean v7, v4, Lkkb;->g:Z

    if-eqz v7, :cond_3

    iget-object v7, v4, Lkkb;->f:Lkll;

    iget-object v7, v7, Lkll;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " (Camera-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    :cond_3
    const-string v7, ""

    :goto_4
    instance-of v8, v4, Lkjt;

    if-eqz v8, :cond_4

    move-object v8, v4

    check-cast v8, Lkjt;

    iget v8, v8, Lkjt;->d:I

    int-to-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    goto :goto_5

    :cond_4
    const-string v8, "inf"

    :goto_5
    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v10, 0x7

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v4, v10, v6

    invoke-virtual {v4}, Lkkb;->b()Lkaf;

    move-result-object v6

    iget v6, v6, Lkaf;->a:I

    invoke-virtual {v4}, Lkkb;->b()Lkaf;

    move-result-object v11

    iget v11, v11, Lkaf;->b:I

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "x"

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v10, v2

    invoke-virtual {v4}, Lkkb;->a()I

    move-result v6

    invoke-static {v6}, Llho;->E(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v10, v5

    invoke-virtual {v4}, Lkkb;->h()Lkfm;

    move-result-object v5

    sget-object v6, Lkfm;->a:Lkfm;

    invoke-virtual {v5}, Lkfm;->ordinal()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    const-string v5, "UNKNOWN"

    goto :goto_6

    :pswitch_0
    const-string v5, "SURFACE_DEFERRED"

    goto :goto_6

    :pswitch_1
    const-string v5, "SURFACE"

    goto :goto_6

    :pswitch_2
    const-string v5, "SURFACE_VIEW"

    goto :goto_6

    :pswitch_3
    const-string v5, "SURFACE_TEXTURE"

    goto :goto_6

    :pswitch_4
    const-string v5, "IMAGE_READER"

    :goto_6
    const/4 v6, 0x3

    aput-object v5, v10, v6

    invoke-virtual {v4}, Lkkb;->f()J

    move-result-wide v4

    long-to-double v4, v4

    const-wide/high16 v11, 0x4130000000000000L    # 1048576.0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v11

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const/4 v5, 0x4

    aput-object v4, v10, v5

    const/4 v4, 0x5

    aput-object v8, v10, v4

    const/4 v4, 0x6

    aput-object v7, v10, v4

    const-string v4, "%-10s %10s %-15s %-15s %6.2f MiB/image %4s images/stream%s"

    invoke-static {v9, v4, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_5
    iget-object v0, v0, Lkga;->b:Lkeq;

    iget-object v0, v0, Lkeq;->h:Lmwn;

    invoke-virtual {v0}, Lmwn;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "Session Parameters: "

    invoke-interface {p1, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lmwn;->size()I

    move-result v3

    invoke-static {v3}, Lmwa;->j(I)Lmvw;

    move-result-object v3

    invoke-virtual {v0}, Lmwn;->cz()Lnac;

    move-result-object v0

    const/16 v4, 0x14

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkfa;

    invoke-virtual {v7}, Lkfa;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v7, v7, Lkfa;->b:Ljava/lang/Object;

    invoke-virtual {v3, v8, v7}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_7

    :cond_6
    invoke-virtual {v3}, Lmvw;->b()Lmwa;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lmwa;->s()Lmwn;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "%-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "s %s"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_8
    if-ge v8, v7, :cond_7

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    new-array v10, v5, [Ljava/lang/Object;

    aput-object v9, v10, v6

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v10, v2

    invoke-static {v4, v10}, Lkba;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_7
    iget-object v0, p0, Lkgl;->d:Lkfv;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lkfv;->a:Ljava/util/Set;

    invoke-static {v1}, Lmwn;->F(Ljava/util/Collection;)Lmwn;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lmwu;

    sget-object v2, Lamx;->p:Lamx;

    invoke-direct {v0, v2}, Lmwu;-><init>(Ljava/util/Comparator;)V

    new-instance v2, Lmwu;

    sget-object v3, Lamx;->p:Lamx;

    invoke-direct {v2, v3}, Lmwu;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {v1}, Lmwn;->cz()Lnac;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkfu;

    iget-object v3, v3, Lkfu;->h:Lkgq;

    iget-object v3, v3, Lkgq;->c:Lmwn;

    invoke-virtual {v3}, Lmwn;->cz()Lnac;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkfj;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lmwu;->k(Ljava/lang/Object;)V

    invoke-interface {v4}, Lkfj;->c()Lkll;

    move-result-object v4

    iget-object v4, v4, Lkll;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lmwu;->k(Ljava/lang/Object;)V

    goto :goto_9

    :cond_9
    invoke-virtual {v0}, Lmwu;->j()Lmww;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Attached streams: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Lmwu;->j()Lmww;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Attached camera ids: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_b

    :goto_a
    throw p1

    :goto_b
    goto :goto_a

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()Lkdz;
    .locals 1

    invoke-static {}, Lkfr;->b()Lkfr;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lkeo;
    .locals 1

    iget-object v0, p0, Lkgl;->c:Lkga;

    return-object v0
.end method

.method public final close()V
    .locals 6

    iget-object v0, p0, Lkgl;->a:Lkaq;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Closing "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkaq;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lkgl;->l:Lnow;

    invoke-interface {v0}, Lnow;->shutdownNow()Ljava/util/List;

    iget-object v0, p0, Lkgl;->n:Lkns;

    iget-object v1, p0, Lkgl;->j:Lkgi;

    invoke-virtual {v0, v1}, Lkns;->d(Lkgi;)V

    iget-object v0, p0, Lkgl;->g:Ljuf;

    invoke-virtual {v0}, Ljuf;->close()V

    iget-object v0, p0, Lkgl;->r:Lloi;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-wide v3, p0, Lkgl;->h:J

    sub-long/2addr v1, v3

    iget-object v3, p0, Lkgl;->c:Lkga;

    invoke-virtual {v3}, Lkga;->e()Lkll;

    move-result-object v3

    iget-object v3, v3, Lkll;->a:Ljava/lang/String;

    iget-object v0, v0, Lloi;->c:Ljava/lang/Object;

    check-cast v0, Lkic;

    iget-object v0, v0, Lkic;->b:Lkte;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    long-to-double v1, v1

    invoke-virtual {v0, v1, v2, v4}, Lkte;->e(D[Ljava/lang/Object;)V

    iget-object v0, p0, Lkgl;->a:Lkaq;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Closed "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkaq;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final d()Lker;
    .locals 8

    const-string v0, "acquireExclusiveSession"

    invoke-direct {p0, v0}, Lkgl;->x(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lkgl;->i:Lkhf;

    invoke-virtual {v0}, Lkhf;->a()Lkhd;

    move-result-object v4

    iget-object v0, p0, Lkgl;->s:Ligo;

    new-instance v7, Lkgo;

    iget-object v1, v0, Ligo;->b:Ljava/lang/Object;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ldja;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Ligo;->a:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lkbc;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lkgo;-><init>(Ldja;Lkbc;Lkhd;[B[B)V

    return-object v7

    :cond_0
    new-instance v0, Lkdf;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to acquire session. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is closed"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkdf;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e(Lkfj;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lkgl;->f(Lkfj;Z)V

    return-void
.end method

.method public final f(Lkfj;Z)V
    .locals 3

    if-eqz p2, :cond_0

    iget-object p2, p0, Lkgl;->q:Lkgd;

    invoke-virtual {p2, p1}, Lkgd;->w(Lkfj;)V

    :cond_0
    instance-of p2, p1, Lkjt;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lkgl;->a:Lkaq;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Draining "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lkaq;->f(Ljava/lang/String;)V

    check-cast p1, Lkjt;

    iget-object p1, p1, Lkjt;->a:Lkjz;

    monitor-enter p1

    :try_start_0
    iget-boolean p2, p1, Lkjz;->j:Z

    if-nez p2, :cond_1

    iget-object p2, p1, Lkjz;->f:Lkaq;

    iget-object v0, p1, Lkjz;->a:Lkpe;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Draining free buffers for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lkaq;->f(Ljava/lang/String;)V

    iget-object p2, p1, Lkjz;->a:Lkpe;

    invoke-interface {p2}, Lkpe;->h()V

    :cond_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_2
    return-void
.end method

.method public final g()V
    .locals 3

    const-string v0, "resume"

    invoke-direct {p0, v0}, Lkgl;->x(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lkgl;->a:Lkaq;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Resuming "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkaq;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lkgl;->n:Lkns;

    iget-object v1, p0, Lkgl;->j:Lkgi;

    invoke-virtual {v0, v1}, Lkns;->b(Lkgi;)V

    iget-object v0, p0, Lkgl;->e:Lkhh;

    invoke-virtual {v0}, Lkhh;->a()V

    :cond_0
    return-void
.end method

.method public final h(Lkfa;)V
    .locals 1

    iget-object v0, p0, Lkgl;->p:Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {v0, p1}, Landroidx/wear/ambient/AmbientDelegate;->N(Lkfa;)V

    return-void
.end method

.method public final i(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lkgl;->p:Landroidx/wear/ambient/AmbientDelegate;

    iget-object v1, v0, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

    check-cast v1, Lkpo;

    invoke-virtual {v1, p1}, Lkpo;->b(Landroid/hardware/camera2/CaptureRequest$Key;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1, p2}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/wear/ambient/AmbientDelegate;->N(Lkfa;)V

    :cond_0
    return-void
.end method

.method public final j(Ljava/util/Set;)V
    .locals 1

    iget-object v0, p0, Lkgl;->p:Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {v0, p1}, Landroidx/wear/ambient/AmbientDelegate;->O(Ljava/util/Set;)V

    return-void
.end method

.method public final k(Lkfh;)V
    .locals 3

    iget-object v0, p0, Lkgl;->m:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    const-string v0, "trigger3A"

    invoke-direct {p0, v0}, Lkgl;->x(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lkgl;->l:Lnow;

    new-instance v1, Lkcw;

    const/4 v2, 0x7

    invoke-direct {v1, p0, p1, v2}, Lkcw;-><init>(Lkgl;Lkfh;I)V

    invoke-interface {v0, v1}, Lnow;->a(Ljava/lang/Runnable;)Lnou;

    move-result-object p1

    iput-object p1, p0, Lkgl;->m:Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lkgl;->a:Lkaq;

    invoke-virtual {p1}, Ljava/util/concurrent/RejectedExecutionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Failed to submit trigger3A task. "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lkaq;->i(Ljava/lang/String;)V

    return-void

    :cond_1
    return-void
.end method

.method public final l(Lkea;Lkfh;)V
    .locals 3

    iget-object v0, p0, Lkgl;->m:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    const-string v0, "trigger3A"

    invoke-direct {p0, v0}, Lkgl;->x(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lkgl;->l:Lnow;

    new-instance v1, Lkgc;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, p2, v2}, Lkgc;-><init>(Lkgl;Lkea;Lkfh;I)V

    invoke-interface {v0, v1}, Lnow;->a(Ljava/lang/Runnable;)Lnou;

    move-result-object p1

    iput-object p1, p0, Lkgl;->m:Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p0, Lkgl;->a:Lkaq;

    invoke-virtual {p1}, Ljava/util/concurrent/RejectedExecutionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Failed to submit trigger3A task. "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lkaq;->i(Ljava/lang/String;)V

    return-void

    :cond_1
    return-void
.end method

.method public final m(ZZZ)V
    .locals 8

    iget-object v0, p0, Lkgl;->m:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    const-string v0, "unlock3A"

    invoke-direct {p0, v0}, Lkgl;->x(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lkgl;->l:Lnow;

    new-instance v7, Lkgk;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lkgk;-><init>(Lkgl;ZZZI)V

    invoke-interface {v0, v7}, Lnow;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p0, Lkgl;->a:Lkaq;

    invoke-virtual {p1}, Ljava/util/concurrent/RejectedExecutionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "Failed to submit unlock3A task. "

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lkaq;->i(Ljava/lang/String;)V

    return-void

    :cond_1
    return-void
.end method

.method public final n(Lkea;)V
    .locals 2

    const-string v0, "update3A"

    invoke-direct {p0, v0}, Lkgl;->x(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lkgl;->k:Lkfs;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lkfs;->a(Lkea;Z)V

    return-void
.end method

.method public final o(Lkea;)V
    .locals 2

    const-string v0, "update3A"

    invoke-direct {p0, v0}, Lkgl;->x(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lkgl;->k:Lkfs;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lkfs;->a(Lkea;Z)V

    return-void
.end method

.method public final p(Lkgq;)Lkad;
    .locals 2

    const-string v0, "attach(frameStream)"

    invoke-direct {p0, v0}, Lkgl;->x(Ljava/lang/String;)Z

    iget-object v0, p0, Lkgl;->d:Lkfv;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lkfv;->d(Lkgq;I)Lkfu;

    move-result-object p1

    return-object p1
.end method

.method public final q(Lkgq;)Lkeb;
    .locals 1

    const-string v0, "submit(frameStream)"

    invoke-direct {p0, v0}, Lkgl;->x(Ljava/lang/String;)Z

    iget-object v0, p0, Lkgl;->f:Lkgz;

    invoke-virtual {v0, p1}, Lkgz;->f(Lkgq;)Lkeb;

    move-result-object p1

    return-object p1
.end method

.method public final r(Lkgq;I)Lkef;
    .locals 1

    const-string v0, "attach(frameStream, capacity)"

    invoke-direct {p0, v0}, Lkgl;->x(Ljava/lang/String;)Z

    iget-object v0, p0, Lkgl;->d:Lkfv;

    invoke-virtual {v0, p1, p2}, Lkfv;->d(Lkgq;I)Lkfu;

    move-result-object p1

    return-object p1
.end method

.method public final s(Lkfj;)Lkgq;
    .locals 4

    iget-object v0, p0, Lkgl;->r:Lloi;

    iget-object v1, p0, Lkgl;->c:Lkga;

    invoke-virtual {v1}, Lkga;->e()Lkll;

    move-result-object v1

    iget-object v1, v1, Lkll;->a:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lloi;->n(Ljava/lang/String;II)V

    const-string v0, "create(stream)"

    invoke-direct {p0, v0}, Lkgl;->x(Ljava/lang/String;)Z

    iget-object v0, p0, Lkgl;->o:Lkpo;

    sget-object v1, Lmza;->a:Lmza;

    invoke-virtual {v0, p1, v1}, Lkpo;->c(Lkfj;Ljava/util/Set;)Lkgq;

    move-result-object p1

    return-object p1
.end method

.method public final t(Ljava/util/Set;)Lkgq;
    .locals 4

    iget-object v0, p0, Lkgl;->r:Lloi;

    iget-object v1, p0, Lkgl;->c:Lkga;

    invoke-virtual {v1}, Lkga;->e()Lkll;

    move-result-object v1

    iget-object v1, v1, Lkll;->a:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lloi;->n(Ljava/lang/String;II)V

    const-string v0, "create(streams)"

    invoke-direct {p0, v0}, Lkgl;->x(Ljava/lang/String;)Z

    iget-object v0, p0, Lkgl;->o:Lkpo;

    sget-object v1, Lmza;->a:Lmza;

    invoke-virtual {v0, p1, v1}, Lkpo;->d(Ljava/util/Set;Ljava/util/Set;)Lkgq;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lkgl;->j:Lkgi;

    invoke-virtual {v0}, Lkgi;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u(Lkfj;Ljava/util/Set;)Lkgq;
    .locals 4

    iget-object v0, p0, Lkgl;->r:Lloi;

    iget-object v1, p0, Lkgl;->c:Lkga;

    invoke-virtual {v1}, Lkga;->e()Lkll;

    move-result-object v1

    iget-object v1, v1, Lkll;->a:Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Lloi;->n(Ljava/lang/String;II)V

    const-string v0, "create(stream, parameters)"

    invoke-direct {p0, v0}, Lkgl;->x(Ljava/lang/String;)Z

    iget-object v0, p0, Lkgl;->o:Lkpo;

    invoke-static {p2}, Lmwn;->F(Ljava/util/Collection;)Lmwn;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lkpo;->c(Lkfj;Ljava/util/Set;)Lkgq;

    move-result-object p1

    return-object p1
.end method

.method public final v(Ljava/util/Set;Ljava/util/Set;)Lkgq;
    .locals 4

    invoke-static {p1, p2}, LAGC;->getSet(Ljava/util/Set;Ljava/util/Set;)I

    iget-object v0, p0, Lkgl;->r:Lloi;

    iget-object v1, p0, Lkgl;->c:Lkga;

    invoke-virtual {v1}, Lkga;->e()Lkll;

    move-result-object v1

    iget-object v1, v1, Lkll;->a:Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lloi;->n(Ljava/lang/String;II)V

    const-string v0, "create(streams, parameters)"

    invoke-direct {p0, v0}, Lkgl;->x(Ljava/lang/String;)Z

    iget-object v0, p0, Lkgl;->o:Lkpo;

    invoke-static {p2}, Lmwn;->F(Ljava/util/Collection;)Lmwn;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lkpo;->d(Ljava/util/Set;Ljava/util/Set;)Lkgq;

    move-result-object p1

    return-object p1
.end method

.method public final w(Z)V
    .locals 3

    iget-object v0, p0, Lkgl;->m:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    const-string v0, "trigger3A"

    invoke-direct {p0, v0}, Lkgl;->x(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lkgl;->l:Lnow;

    new-instance v1, Lbnd;

    const/16 v2, 0x14

    invoke-direct {v1, p0, p1, v2}, Lbnd;-><init>(Lkgl;ZI)V

    invoke-interface {v0, v1}, Lnow;->a(Ljava/lang/Runnable;)Lnou;

    move-result-object p1

    iput-object p1, p0, Lkgl;->m:Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lkgl;->a:Lkaq;

    invoke-virtual {p1}, Ljava/util/concurrent/RejectedExecutionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Failed to submit trigger3A task. "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lkaq;->i(Ljava/lang/String;)V

    return-void

    :cond_1
    return-void
.end method
