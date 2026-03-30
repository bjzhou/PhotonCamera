.class public final Lhwf;
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


# direct methods
.method public constructor <init>(Ltxm;Ltxm;Ltxm;Ltxm;Ltxm;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    iput-object p1, p0, Lhwf;->a:Ltxm;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p3, p0, Lhwf;->c:Ltxm;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    iput-object p4, p0, Lhwf;->d:Ltxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    iput-object p2, p0, Lhwf;->b:Ltxm;

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

    :goto_6
    iput-object p5, p0, Lhwf;->e:Ltxm;

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
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lhwf;->b()Ljava/lang/Runnable;

    move-result-object p0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop
.end method

.method public final b()Ljava/lang/Runnable;
    .locals 8

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct/range {v2 .. v7}, Lhwe;-><init>(Lkog;Lhwm;ZLtxm;I)V

    :goto_3
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_4
    move-object v2, p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_6
    goto :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_8
    check-cast v4, Lhwm;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v7, 0x0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    new-instance p0, Lhwe;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v1, p0, Lhwf;->b:Ltxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v1}, Lkqb;->b()Lkog;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_d
    invoke-interface {v1}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_e
    iget-object v0, p0, Lhwf;->a:Ltxm;

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

    :goto_f
    const v1, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_10
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_12
    check-cast v1, Lkqb;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v6, p0, Lhwf;->d:Ltxm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_15
    sget-object p0, Lsuq;->a:Ljava/lang/Runnable;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_16
    return-object p0

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_19
    iget-object v1, p0, Lhwf;->c:Ltxm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_1a
    check-cast v1, Ljava/lang/Boolean;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v1, p0, Lhwf;->e:Ltxm;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1c
    check-cast v0, Ljava/lang/Boolean;

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

    :goto_1d
    move-object v4, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-lez v0, :cond_1

    nop

    goto/32 :goto_21

    nop

    :cond_1
    goto/32 :goto_20

    nop

    :goto_1f
    invoke-interface {v1}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_17

    nop

    nop

    :goto_21
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_22
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop
.end method
