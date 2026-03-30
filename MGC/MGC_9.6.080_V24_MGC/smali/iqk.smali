.class public Liqk;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lsdb;


# instance fields
.field public final b:Lpnv;

.field public final c:Likv;

.field public final d:Liql;

.field public final e:Lkxj;

.field public final f:Liof;

.field private final g:Liot;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    sput-object v0, Liqk;->a:Lsdb;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    const-string v0, "iqk"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lpnv;Likv;Liql;Lkxj;Liof;Lrss;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    :goto_0
    invoke-virtual {p6}, Lrss;->f()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1
    iput-object p5, p0, Liqk;->f:Liof;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Liqk;->g:Liot;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    iput-object p2, p0, Liqk;->c:Likv;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    :goto_6
    sget-object p0, Lhml;->a:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p3, p0, Liqk;->d:Liql;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_8
    iput-object p1, p0, Liqk;->b:Lpnv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_9
    iput-object p4, p0, Liqk;->e:Lkxj;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    check-cast p1, Liot;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Llko;Lioy;)V
    .locals 3

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v1, Lgbg;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1
    const/4 v1, 0x4

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    invoke-direct {v1, v2}, Lgbg;-><init>(I)V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_d

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v0, Liqe;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    invoke-direct {v0, v1}, Liqe;-><init>(I)V

    goto/32 :goto_0

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_a
    invoke-virtual {p0, v0, v1, p1, p2}, Liqk;->b(Ljava/util/function/Consumer;Ljava/lang/Runnable;Llko;Lioy;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x15

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

    :goto_c
    return-void

    nop

    nop

    :goto_d
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_f
    const/16 v2, 0x9

    nop

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

    :goto_10
    const v1, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(Ljava/util/function/Consumer;Ljava/lang/Runnable;Llko;Lioy;)V
    .locals 2

    goto/32 :goto_19

    nop

    nop

    :goto_0
    invoke-virtual {p4}, Lioy;->a()I

    move-result v0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Liqk;->g:Liot;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sget-object p1, Liqk;->a:Lsdb;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto/32 :goto_1b

    nop

    nop

    :goto_5
    invoke-virtual {p1}, Lscs;->c()Lsdo;

    move-result-object p1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_6
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_0
    :try_start_0
    invoke-virtual {p0, p3, p4}, Liot;->d(Llko;Lioy;)Limo;

    move-result-object p0

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {p0}, Limo;->close()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v1, 0x4

    nop

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

    :goto_8
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_a
    const-string v0, "Unable to acquire post processing session."

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_d
    const v1, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {v0, p2, p1, p0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {p0, v0}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_14
    goto :goto_15

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    :try_start_3
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_15
    throw p1

    nop

    nop

    nop

    nop
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception p0

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

    nop

    nop

    :goto_16
    sget-object p0, Liqk;->a:Lsdb;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-ne v0, v1, :cond_1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_19
    const v0, 0x12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/16 p2, 0x724

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1b
    return-void

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const/16 p1, 0x725

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1e
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_2
    goto/32 :goto_12

    nop

    :goto_1f
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-interface {p0, p1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_21
    return-void

    nop

    nop

    :catchall_1
    move-exception p1

    nop

    nop

    nop

    nop

    :try_start_4
    invoke-interface {p0}, Limo;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_22
    check-cast p0, Lscz;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop
.end method
