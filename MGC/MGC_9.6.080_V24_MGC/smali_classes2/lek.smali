.class public Llek;
.super Lleq;
.source "PG"


# static fields
.field private static final a:Lsdb;


# instance fields
.field private final b:Lldc;

.field private final c:Lksl;

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3

    nop

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
    const-string v0, "lek"

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    sput-object v0, Llek;->a:Lsdb;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lldc;Lkuc;Ljava/util/Set;Lksl;ILpdf;Llco;)V
    .locals 6

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p4, p0, Llek;->c:Lksl;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    move-object v1, p1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct/range {v0 .. v5}, Lleq;-><init>(Lljk;Lkuc;Ljava/util/Set;Lpdf;Llco;)V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    move-object v5, p7

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

    :goto_7
    move-object v2, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput p5, p0, Llek;->d:I

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    move-object v0, p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

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

    nop

    :goto_b
    move-object v3, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_d
    const v0, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_e
    move-object v4, p6

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_f
    iput-object p1, p0, Llek;->b:Lldc;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method protected final d(Ljava/util/List;Lkub;Llko;)Z
    .locals 10

    goto/32 :goto_13

    nop

    nop

    :goto_0
    if-eqz p3, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    :try_start_0
    sget-object p0, Llek;->a:Lsdb;

    nop

    nop

    invoke-virtual {p0}, Lscs;->b()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    const/16 v1, 0xda8

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p0, v1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    check-cast p0, Lscz;

    nop

    nop

    nop

    nop

    const-string v1, "Cannot acquire image saver session."

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p0, v1}, Lscz;->s(Ljava/lang/String;)V

    goto/16 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p2}, Lkub;->close()V

    move-object v1, p1

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Lsbh;

    nop

    nop

    nop

    iget v1, v1, Lsbh;->c:I

    nop

    nop

    nop

    nop

    nop

    move-object v1, p1

    nop

    nop

    check-cast v1, Lryb;

    nop

    nop

    invoke-virtual {v1}, Lryb;->t()Lscq;

    move-result-object v1

    nop

    nop

    nop

    nop

    move v2, v0

    nop

    nop

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    nop

    nop

    const/4 v4, 0x1

    nop

    nop

    if-eqz v3, :cond_7

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    check-cast v3, Lpge;

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v5, p0, Llek;->b:Lldc;

    nop

    iget v6, p0, Llek;->d:I

    nop

    iget-object v5, v5, Lldc;->b:Lrxj;

    nop

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    nop

    nop

    nop

    invoke-virtual {v5, v6}, Lrvb;->d(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v5

    nop

    nop

    new-instance v6, Lrxw;

    nop

    invoke-direct {v6}, Lrxw;-><init>()V

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    goto/32 :goto_e

    nop

    nop

    :goto_3
    goto/16 :goto_f

    nop

    nop

    nop

    nop

    :catch_0
    :try_start_2
    sget-object v5, Lldc;->a:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Lscs;->b()Lsdo;

    move-result-object v5

    nop

    const/16 v7, 0xcf7

    nop

    nop

    nop

    nop

    invoke-interface {v5, v7}, Lscz;->M(I)Lsdo;

    move-result-object v5

    nop

    nop

    nop

    check-cast v5, Lscz;

    nop

    nop

    const/4 v7, 0x0

    nop

    sget-object v7, Lcom/google/android/build/data/ERtJ/cVlffQDuQRSSY;->oXrZHMKSmpsyScm:Ljava/lang/String;

    nop

    nop

    nop

    invoke-interface {v3}, Lpge;->b()Lpgi;

    move-result-object v8

    nop

    invoke-interface {v5, v7, v8}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_4
    invoke-virtual {v6}, Lrxw;->g()Lryb;

    move-result-object v5

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Lpge;->d()Lpro;

    move-result-object v6

    nop

    nop

    nop

    nop

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    nop

    nop

    nop

    nop

    nop

    if-nez v7, :cond_6

    nop

    if-eqz v6, :cond_6

    nop

    nop

    nop

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    check-cast v2, Lprw;

    nop

    invoke-static {v6}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p3, v2, v5}, Lksk;->a(Lprw;Lsui;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_5
    if-nez p3, :cond_2

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_2
    :try_start_3
    invoke-interface {p3}, Lksk;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_7
    goto/32 :goto_12

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto :goto_a

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p3

    nop

    :try_start_4
    invoke-virtual {p0, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_a
    throw p0

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {p1}, Llcm;->a(Ljava/util/List;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0xf

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-interface {p2}, Lkub;->close()V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_e
    if-eqz v7, :cond_3

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_3
    :try_start_5
    invoke-static {v3}, Lpuq;->bC(Lpge;)V

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    nop

    nop

    :cond_4
    :goto_f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    nop

    nop

    nop

    nop

    if-eqz v7, :cond_1

    nop

    nop

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    check-cast v7, Lphh;

    nop

    nop

    invoke-interface {v3, v7}, Lpge;->e(Lphh;)Lprw;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    if-eqz v8, :cond_4

    nop

    new-instance v9, Lprt;

    nop

    nop

    nop

    invoke-interface {v7}, Lphh;->d()Lpnx;

    invoke-direct {v9, v8}, Lprt;-><init>(Lprw;)V

    invoke-virtual {v6, v9}, Lrxw;->h(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto/32 :goto_3

    nop

    nop

    :goto_10
    return v0

    nop

    nop

    nop

    :catchall_2
    move-exception p0

    nop

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

    :goto_11
    goto/32 :goto_1c

    nop

    nop

    :goto_12
    :try_start_6
    iget-object v0, p0, Llek;->c:Lksl;

    nop

    nop

    invoke-interface {v0, p3}, Lksl;->b(Llko;)Lksk;

    move-result-object p3

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0x2

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_11

    nop

    :goto_15
    move v0, v4

    nop

    nop

    :goto_16
    goto/32 :goto_d

    nop

    nop

    :goto_17
    move v2, v4

    nop

    nop

    nop

    nop

    nop

    :cond_6
    :try_start_7
    invoke-interface {v3}, Lpge;->close()V

    goto/16 :goto_2

    nop

    nop

    nop

    nop

    nop

    :catchall_3
    move-exception p0

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Lpge;->close()V

    throw p0

    nop

    nop

    nop

    nop

    nop

    :cond_7
    if-nez v2, :cond_8

    nop

    nop

    sget-object p0, Llek;->a:Lsdb;

    nop

    nop

    invoke-virtual {p0}, Lscs;->b()Lsdo;

    move-result-object p0

    nop

    nop

    const/16 v1, 0xda7

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p0, v1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    check-cast p0, Lscz;

    nop

    nop

    nop

    nop

    nop

    const-string v1, "No images found."

    nop

    nop

    nop

    nop

    invoke-interface {p0, v1}, Lscz;->s(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    invoke-interface {p3}, Lksk;->close()V

    goto :goto_16

    nop

    nop

    nop

    nop

    :cond_8
    invoke-interface {p3}, Lksk;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/32 :goto_15

    nop

    nop

    :goto_18
    invoke-interface {p2}, Lkub;->close()V

    goto/32 :goto_b

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {p1}, Llcm;->a(Ljava/util/List;)V

    goto/32 :goto_10

    nop

    nop

    :goto_1b
    throw p0

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop
.end method
