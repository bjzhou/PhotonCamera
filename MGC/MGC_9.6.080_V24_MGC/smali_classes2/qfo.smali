.class final Lqfo;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Lqgo;

.field private final d:Lqfw;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lqfw;Ljava/util/concurrent/Executor;Lqgo;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p3, p0, Lqfo;->b:Ljava/util/concurrent/Executor;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lqfo;->a:Ljava/lang/Object;

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

    nop

    :goto_4
    iput-object p2, p0, Lqfo;->d:Lqfw;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    iput-object p4, p0, Lqfo;->c:Lqgo;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 4

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_4
    invoke-virtual {p0, v0}, Lqgo;->j(Lqft;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_7

    nop

    nop

    :goto_7
    iget-object v0, p0, Lqfo;->d:Lqfw;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0xe

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_a
    iget-object v1, p0, Lqfo;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_b
    iget-object p0, p0, Lqfo;->c:Lqgo;

    nop

    nop

    :try_start_0
    invoke-interface {v0, v1, v2}, Lqfw;->a(Ljava/lang/Object;Ljava/util/concurrent/Executor;)Lqfs;

    move-result-object v0

    nop

    sget-object v1, Lstd;->a:Lstd;

    nop

    nop

    nop

    nop

    nop

    new-instance v2, Lqfq;

    nop

    nop

    invoke-direct {v2, p0}, Lqfq;-><init>(Lqgo;)V

    new-instance v3, Lqfp;

    nop

    invoke-direct {v3, p0}, Lqfp;-><init>(Lqgo;)V

    invoke-interface {v0, v1, v2, v3}, Lqfs;->c(Ljava/util/concurrent/Executor;Lqeu;Lqeu;)Lqfs;

    move-result-object v0

    nop

    nop

    nop

    nop

    sget-object v1, Lqff;->a:Lqff;

    nop

    nop

    invoke-interface {v0, v1}, Lqfs;->g(Lqff;)V
    :try_end_0
    .catch Lqft; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v2, p0, Lqfo;->b:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

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

    :goto_e
    return-void

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

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

    :goto_f
    invoke-virtual {p0, v0}, Lqgo;->j(Lqft;)V

    goto/32 :goto_e

    nop

    nop

    :goto_10
    invoke-static {v0}, Lqft;->a(Ljava/lang/Throwable;)Lqft;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x8

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

    :goto_12
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lqfo;->d:Lqfw;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method
