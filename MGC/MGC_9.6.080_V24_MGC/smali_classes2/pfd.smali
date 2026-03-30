.class public final Lpfd;
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

.field private final h:Ltxm;

.field private final i:Ltxm;


# direct methods
.method public constructor <init>(Ltxm;Ltxm;Ltxm;Ltxm;Ltxm;Ltxm;Ltxm;Ltxm;Ltxm;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    iput-object p7, p0, Lpfd;->g:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    iput-object p8, p0, Lpfd;->h:Ltxm;

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

    :goto_3
    iput-object p2, p0, Lpfd;->b:Ltxm;

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

    nop

    :goto_4
    iput-object p6, p0, Lpfd;->f:Ltxm;

    nop

    nop

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
    return-void

    nop

    nop

    nop

    :goto_6
    iput-object p1, p0, Lpfd;->a:Ltxm;

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
    iput-object p5, p0, Lpfd;->e:Ltxm;

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
    iput-object p9, p0, Lpfd;->i:Ltxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_9
    iput-object p4, p0, Lpfd;->d:Ltxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_a
    iput-object p3, p0, Lpfd;->c:Ltxm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    invoke-virtual {p0}, Lpfd;->b()Lpfc;

    move-result-object p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final b()Lpfc;
    .locals 11

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_0
    move-object v8, v0

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lhdl;->b()Lhdk;

    move-result-object v10

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    move-object v3, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lpfd;->i:Ltxm;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_4
    check-cast v0, Lpeg;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_5
    iget-object v0, p0, Lpfd;->g:Ltxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_6
    check-cast v4, Lpet;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_7
    check-cast v5, Ljava/util/concurrent/Executor;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0}, Lpcs;->b()Lpcu;

    move-result-object v9

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lpfd;->a:Ltxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_a
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

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

    :goto_b
    move-object v1, p0

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_d
    move-object v7, v0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_e
    check-cast v3, Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_f
    invoke-virtual {v0}, Lpeg;->b()Lrnb;

    move-result-object v2

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_10
    const v1, 0x20

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

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

    :goto_13
    move-object v5, v0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Lpfd;->c:Ltxm;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

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

    :goto_17
    return-object p0

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_14

    nop

    nop

    :goto_19
    move-object v4, v0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    check-cast v0, Lpcs;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2a

    nop

    :goto_1d
    check-cast v7, Lpdo;

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

    :goto_1e
    iget-object v0, p0, Lpfd;->h:Ltxm;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v0, p0, Lpfd;->d:Ltxm;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v0, p0, Lpfd;->b:Ltxm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_21
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_22
    const v0, 0xc

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_23
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_24
    check-cast v6, Lpfg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_25
    check-cast v8, Lpdf;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    new-instance p0, Lpfc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_27
    move-object v6, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v0, p0, Lpfd;->e:Ltxm;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_29
    invoke-direct/range {v1 .. v10}, Lpfc;-><init>(Lrnb;Landroidx/wear/ambient/AmbientDelegate;Lpet;Ljava/util/concurrent/Executor;Lpfg;Lpdo;Lpdf;Lpcu;Lhdk;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    check-cast p0, Lhdl;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_2d
    iget-object v0, p0, Lpfd;->f:Ltxm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop
.end method
