.class public final Lmls;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ltun;


# instance fields
.field private final a:Ltxm;

.field private final b:Ltxm;

.field private final c:Ltxm;

.field private final d:Ltxm;


# direct methods
.method public constructor <init>(Ltxm;Ltxm;Ltxm;Ltxm;)V
    .locals 0

    goto/32 :goto_3

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

    :goto_1
    iput-object p2, p0, Lmls;->b:Ltxm;

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

    :goto_2
    iput-object p3, p0, Lmls;->c:Ltxm;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lmls;->a:Ltxm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    iput-object p4, p0, Lmls;->d:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

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

    :goto_0
    return-object p0

    nop

    :goto_1
    invoke-virtual {p0}, Lmls;->b()Lmlt;

    move-result-object p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final b()Lmlt;
    .locals 3

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1
    check-cast v0, Liai;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    const v0, 0x3

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0}, Liai;->b()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x18

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {v2}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {v1}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lmls;->d:Ltxm;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {v2}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_9
    iget-object v2, p0, Lmls;->c:Ltxm;

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

    :goto_a
    return-object p0

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v1, p0, Lmls;->b:Ltxm;

    nop

    goto/32 :goto_6

    nop

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

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lmls;->a:Ltxm;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_18

    nop

    nop

    :goto_10
    check-cast v2, Lluq;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_17

    nop

    :goto_12
    check-cast p0, Lhoh;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_13
    new-instance p0, Lmlt;

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

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {p0, v0, v1, v2}, Lmlt;-><init>(Landroid/content/Context;Llyv;Lrss;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_16
    check-cast v1, Llyv;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_b

    nop

    nop

    :goto_18
    goto/32 :goto_e

    nop

    nop
.end method
