.class public final Llob;
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

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Llob;->a:Ltxm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    iput-object p3, p0, Llob;->c:Ltxm;

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

    :goto_4
    iput-object p2, p0, Llob;->b:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_3

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
    invoke-virtual {p0}, Llob;->b()Lloa;

    move-result-object p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop
.end method

.method public final b()Lloa;
    .locals 3

    goto/32 :goto_e

    nop

    nop

    :goto_0
    check-cast p0, Liog;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_2
    iget-object p0, p0, Llob;->c:Ltxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    check-cast v1, Lkcr;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    check-cast v0, Loyn;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_6
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_11

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Liog;->b()Liof;

    move-result-object p0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x3

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

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_b
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_c
    invoke-interface {v1}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_d
    invoke-direct {v2, v0, v1, p0}, Lloa;-><init>(Loyn;Lkcr;Liof;)V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_e
    const v0, 0x18

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v1, p0, Llob;->b:Ltxm;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_10
    new-instance v2, Lloa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Llob;->a:Ltxm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_13
    return-object v2

    nop

    nop

    :goto_14
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop
.end method
