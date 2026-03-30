.class public final Lqua;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final d:Lqty;


# instance fields
.field public volatile a:Lque;

.field public volatile b:Z

.field public volatile c:Lqty;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x7fffffff

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

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-static {v0}, Lqty;->a(I)Lqty;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sput-object v0, Lqua;->d:Lqty;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lqud;Ltud;Lrss;Ltxm;)V
    .locals 9

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move-object v0, v8

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    move-object v5, p3

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2
    const v0, 0x1c

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_3
    move-object v3, p4

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    move-object v4, p2

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

    :goto_5
    move-object v6, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_6
    const/4 v0, 0x0

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

    :goto_7
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    sget-object v0, Lqud;->a:Lque;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v8, p2}, Lqua;->b(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_20

    nop

    nop

    :goto_a
    move-object v6, p6

    nop

    nop

    :goto_b
    goto/32 :goto_17

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    :goto_d
    invoke-direct/range {v0 .. v7}, Lfzl;-><init>(Lqua;Landroid/content/Context;Ltud;Ljava/util/concurrent/Executor;Lqud;Ltxm;I)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput-object v2, p0, Lqua;->c:Lqty;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_10
    const v1, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_11
    move-object v1, p0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    new-instance v8, Lfzl;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_14
    goto :goto_b

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-eq v0, v2, :cond_1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    :goto_17
    const/16 v7, 0xa

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

    :goto_18
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p5}, Lrss;->h()Z

    move-result v2

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1b
    iput-object v0, p0, Lqua;->a:Lque;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1c
    move-object v2, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1e
    sget-object v2, Lqua;->d:Lqty;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1f
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_20
    return-void

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iput-boolean v0, p0, Lqua;->b:Z

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop
.end method

.method public static b(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ltud;)V
    .locals 3

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

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

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
    :try_start_0
    invoke-interface {p1}, Ltud;->a()Ljava/lang/Object;

    move-result-object p1

    nop

    check-cast p1, Lqob;

    nop

    nop

    invoke-interface {p1}, Lqob;->b()Z

    move-result v0

    nop

    nop

    iput-boolean v0, p0, Lqua;->b:Z

    nop

    nop

    invoke-interface {p1}, Lqob;->a()I

    move-result p1

    nop

    nop

    nop

    invoke-static {p1}, Lqty;->a(I)Lqty;

    move-result-object p1

    nop

    nop

    iput-object p1, p0, Lqua;->c:Lqty;

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    const/4 p1, 0x0

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

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_5
    return-void

    nop

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x16

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    :goto_9
    sget-object v0, Lqmo;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_b
    const v0, 0x1b

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_d
    iput-boolean p1, p0, Lqua;->b:Z

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_f
    const-string v1, "Couldn\'t get config"

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_10
    const/16 v2, 0x1565

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_11
    invoke-static {v1, v2, v0, p1}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_3

    nop

    nop

    nop
.end method
