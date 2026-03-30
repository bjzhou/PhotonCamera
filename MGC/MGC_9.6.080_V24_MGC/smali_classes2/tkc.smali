.class public final Ltkc;
.super Ltiu;
.source "PG"


# instance fields
.field private final a:Ltkg;


# direct methods
.method public constructor <init>(Ltkg;)V
    .locals 0

    goto/32 :goto_2

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
    iput-object p1, p0, Ltkc;->a:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ltiu;-><init>()V

    goto/32 :goto_1

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic b([BIILtjv;)Ltlq;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Ltkc;->a:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-static {p0, p1, p2, p3, p4}, Ltkg;->q(Ltkg;[BIILtjv;)Ltkg;

    move-result-object p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop
.end method

.method public final bridge synthetic f(Ltjn;Ltjv;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez p1, :cond_0

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
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    new-instance p1, Ltky;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Ltkc;->a:Ltkg;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p1, p0}, Ltky;-><init>(Ljava/io/IOException;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_5
    throw p1

    nop

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    :goto_7
    new-instance p1, Ltky;

    nop

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

    :goto_8
    invoke-virtual {p0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_9
    instance-of p1, p1, Ltky;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_a
    sget-object v0, Ltkg;->aU:Ljava/util/Map;

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

    :goto_b
    throw p0

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_c
    throw p0

    nop

    nop

    nop

    :goto_d
    instance-of p1, p1, Ltky;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_e
    throw p0

    nop

    nop

    nop

    :catch_1
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_10
    iget-boolean p1, p0, Ltky;->a:Z

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

    :goto_11
    throw p1

    nop

    nop

    nop

    nop

    :catch_2
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_12
    throw p0

    nop

    :goto_13
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_16
    return-object p0

    nop

    :catch_3
    move-exception p0

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_17
    invoke-virtual {p0}, Ltkg;->o()Ltkg;

    move-result-object p0

    nop

    nop

    :try_start_0
    sget-object v0, Ltlz;->a:Ltlz;

    nop

    nop

    invoke-virtual {v0, p0}, Ltlz;->b(Ljava/lang/Object;)Ltmf;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-static {p1}, Ltjo;->p(Ltjn;)Ltjo;

    move-result-object p1

    nop

    nop

    nop

    nop

    invoke-interface {v0, p0, p1, p2}, Ltmf;->l(Ljava/lang/Object;Ltjo;Ltjv;)V

    invoke-interface {v0, p0}, Ltmf;->g(Ljava/lang/Object;)V
    :try_end_0
    .catch Ltky; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ltmn; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    goto/32 :goto_16

    nop

    nop

    :goto_18
    check-cast p0, Ltky;

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

    :goto_19
    if-nez p1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct {p1, p0}, Ltky;-><init>(Ljava/io/IOException;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

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

    :goto_1d
    check-cast p0, Ltky;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p0}, Ltmn;->a()Ltky;

    move-result-object p0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop
.end method
