.class public final Ljqs;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ltun;


# instance fields
.field private final a:Ltxm;

.field private final b:Ltxm;

.field private final c:Ltxm;

.field private final d:Ltxm;

.field private final e:Ltxm;

.field private final f:Ltxm;

.field private final g:Ltxm;


# direct methods
.method public constructor <init>(Ltxm;Ltxm;Ltxm;Ltxm;Ltxm;Ltxm;Ltxm;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    iput-object p7, p0, Ljqs;->g:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Ljqs;->b:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    iput-object p6, p0, Ljqs;->f:Ltxm;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Ljqs;->a:Ltxm;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p4, p0, Ljqs;->d:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p5, p0, Ljqs;->e:Ltxm;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    iput-object p3, p0, Ljqs;->c:Ltxm;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljqs;->b()Ljqr;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop
.end method

.method public final b()Ljqr;
    .locals 9

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_0
    check-cast v8, Ljava/util/concurrent/Executor;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Ljqs;->b:Ltxm;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_14

    nop

    nop

    :goto_4
    new-instance p0, Ljqr;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_5
    move-object v8, v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Liai;->b()Landroid/content/Context;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_8
    iget-object v0, p0, Ljqs;->f:Ltxm;

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

    :goto_9
    iget-object v4, p0, Ljqs;->c:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    :goto_b
    move-object v7, v0

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
    move-object v3, v0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Ljqs;->g:Ltxm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_e
    move-object v5, v0

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_f
    check-cast v3, Llyv;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_10
    check-cast v7, Ljava/util/concurrent/Executor;

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_12
    check-cast v6, Lpdf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Ljqs;->e:Ltxm;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_16
    move-object v1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct/range {v1 .. v8}, Ljqr;-><init>(Landroid/content/Context;Llyv;Ltxm;Lowu;Lpdf;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_19
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

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

    :goto_1a
    return-object p0

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1c
    check-cast v5, Lowu;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1e
    check-cast v0, Liai;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1f
    const v0, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_20
    iget-object v0, p0, Ljqs;->d:Ltxm;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    move-object v6, v0

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_22
    iget-object v0, p0, Ljqs;->a:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_23
    const v1, 0x8

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

    :goto_24
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method
