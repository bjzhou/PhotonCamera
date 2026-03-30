.class public final Ljtm;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ltun;


# instance fields
.field private final a:Ltxm;

.field private final b:Ltxm;

.field private final c:Ltxm;


# direct methods
.method public constructor <init>(Ltxm;Ltxm;Ltxm;)V
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

    :goto_1
    iput-object p3, p0, Ljtm;->c:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Ljtm;->a:Ltxm;

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

    :goto_4
    iput-object p2, p0, Ljtm;->b:Ltxm;

    nop

    nop

    goto/32 :goto_1

    nop

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

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Ljtm;->b()Ljtl;

    move-result-object p0

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final b()Ljtl;
    .locals 3

    goto/32 :goto_2

    nop

    nop

    :goto_0
    iget-object p0, p0, Ljtm;->c:Ltxm;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1
    check-cast v1, Lkxl;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0xc

    nop

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

    :goto_3
    new-instance v2, Ljtl;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v2, v0, v1, p0}, Ljtl;-><init>(Lppv;Lkxj;Z)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v1, p0, Ljtm;->b:Ltxm;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    check-cast v0, Lppv;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_8
    iget-object v0, p0, Ljtm;->a:Ltxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

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

    goto/32 :goto_13

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_a
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

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

    :goto_c
    invoke-virtual {v1}, Lkxl;->b()Lkxj;

    move-result-object v1

    nop

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

    :goto_d
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_e
    check-cast p0, Ljava/lang/Boolean;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return-object v2

    nop

    :goto_11
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop
.end method
