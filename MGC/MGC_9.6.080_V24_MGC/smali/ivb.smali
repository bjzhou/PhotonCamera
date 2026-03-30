.class public final Livb;
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

    goto/32 :goto_1

    nop

    nop

    :goto_0
    iput-object p2, p0, Livb;->b:Ltxm;

    nop

    goto/32 :goto_2

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

    nop

    :goto_2
    iput-object p3, p0, Livb;->c:Ltxm;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Livb;->a:Ltxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    iput-object p4, p0, Livb;->d:Ltxm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    return-void

    nop
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 4

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
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

    :goto_1
    new-instance v3, Liva;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2
    check-cast v2, Liud;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    check-cast v1, Litw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Livb;->d:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_5
    goto/32 :goto_7

    nop

    nop

    :goto_6
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_15

    nop

    nop

    :goto_8
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_a
    return-object v3

    nop

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {v3, v0, v1, v2, p0}, Liva;-><init>(Liuk;Litw;Liud;Landroid/content/Context;)V

    goto/32 :goto_a

    nop

    nop

    :goto_d
    iget-object v1, p0, Livb;->b:Ltxm;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Liai;->b()Landroid/content/Context;

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

    nop

    :goto_f
    const v0, 0x12

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

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_11
    invoke-interface {v1}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v1

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

    nop

    :goto_12
    const v1, 0x1a

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

    nop

    :goto_13
    invoke-interface {v2}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_14
    check-cast v0, Liuk;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Livb;->a:Ltxm;

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_16
    iget-object v2, p0, Livb;->c:Ltxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_17
    check-cast p0, Liai;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop
.end method
