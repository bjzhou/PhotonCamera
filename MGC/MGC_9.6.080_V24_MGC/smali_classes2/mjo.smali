.class public final Lmjo;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ltun;


# instance fields
.field private final a:Ltxm;

.field private final b:Ltxm;


# direct methods
.method public constructor <init>(Ltxm;Ltxm;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lmjo;->a:Ltxm;

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

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lmjo;->b:Ltxm;

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

    :goto_1
    invoke-virtual {p0}, Lmjo;->b()Lmjn;

    move-result-object p0

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
.end method

.method public final b()Lmjn;
    .locals 2

    goto/32 :goto_11

    nop

    nop

    :goto_0
    const v1, 0x3

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

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Ljdz;->b()Ljdq;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_5
    check-cast p0, Ljdz;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_3

    nop

    :goto_7
    check-cast v0, Lmjv;

    nop

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
    invoke-direct {v1, v0, p0}, Lmjn;-><init>(Lmjv;Ljdq;)V

    goto/32 :goto_c

    nop

    nop

    :goto_9
    new-instance v1, Lmjn;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Lmjo;->a:Ltxm;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_b
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_c
    return-object v1

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_6

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

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

    :goto_f
    iget-object p0, p0, Lmjo;->b:Ltxm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x11

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method
