.class public final Lkre;
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

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p3, p0, Lkre;->c:Ltxm;

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

    :goto_1
    iput-object p2, p0, Lkre;->b:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lkre;->a:Ltxm;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p4, p0, Lkre;->d:Ltxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

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

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lkre;->b()Lkrd;

    move-result-object p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final b()Lkrd;
    .locals 4

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lkre;->a:Ltxm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1
    new-instance v3, Lkrd;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2
    iget-object v1, p0, Lkre;->b:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    invoke-interface {v1}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5
    const v0, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lksc;->b()Lgvg;

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

    :goto_7
    iget-object p0, p0, Lkre;->d:Ltxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {v3, v0, v1, v2, p0}, Lkrd;-><init>(Lfxj;Llqo;Lkxj;Lgvg;)V

    goto/32 :goto_13

    nop

    nop

    :goto_9
    invoke-virtual {v0}, Lfxk;->b()Lfxj;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_d
    check-cast v2, Lkxl;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_e
    check-cast v1, Llqo;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_f
    check-cast p0, Lksc;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_10
    invoke-virtual {v2}, Lkxl;->b()Lkxj;

    move-result-object v2

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_12

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

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_13
    return-object v3

    nop

    nop

    :goto_14
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_16
    iget-object v2, p0, Lkre;->c:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    check-cast v0, Lfxk;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop
.end method
