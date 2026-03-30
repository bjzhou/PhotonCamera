.class public final Lhtl;
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

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p4, p0, Lhtl;->d:Ltxm;

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

    :goto_1
    iput-object p2, p0, Lhtl;->b:Ltxm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    iput-object p3, p0, Lhtl;->c:Ltxm;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Lhtl;->a:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_1

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

    :goto_0
    invoke-virtual {p0}, Lhtl;->b()Lhon;

    move-result-object p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop
.end method

.method public final b()Lhon;
    .locals 3

    goto/32 :goto_10

    nop

    nop

    :goto_0
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lhpn;->b()Lpct;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    check-cast v0, Liai;

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

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_5
    const v1, 0xe

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v2, Lhon;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_7
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

    :goto_8
    invoke-direct {v2, v0, v1, p0}, Lhon;-><init>(Landroid/content/Context;Lhoh;Lpct;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {v1}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    check-cast p0, Lhpn;

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

    :goto_b
    check-cast v1, Lhoh;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v2}, Lhry;->b()Liof;

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_d
    return-object v2

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_11

    nop

    nop

    :goto_f
    iget-object v2, p0, Lhtl;->c:Ltxm;

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

    :goto_10
    const v0, 0x20

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1

    nop

    nop

    :goto_12
    iget-object p0, p0, Lhtl;->d:Ltxm;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_13
    check-cast v2, Lhry;

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

    :goto_14
    iget-object v1, p0, Lhtl;->b:Ltxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_15
    iget-object v0, p0, Lhtl;->a:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_17
    invoke-virtual {v0}, Liai;->b()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop
.end method
