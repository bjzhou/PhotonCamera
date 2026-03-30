.class public final Lazw;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroidx/compose/ui/input/pointer/PointerInputEventHandler;


# instance fields
.field final synthetic a:Lazk;

.field final synthetic b:Layj;


# direct methods
.method public constructor <init>(Lazk;Layj;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iput-object p1, p0, Lazw;->a:Lazk;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lazw;->b:Layj;

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
.end method


# virtual methods
.method public final invoke(Lcmi;Ltzy;)Ljava/lang/Object;
    .locals 4

    goto/32 :goto_c

    nop

    nop

    :goto_0
    if-eq p0, p1, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Lazj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_3
    invoke-interface {p1}, Lcmi;->a()Ldcv;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lazw;->a:Lazk;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-object p0

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sget-object p1, Luag;->a:Luag;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_10

    nop

    nop

    :goto_9
    new-instance v1, Lazv;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v3, 0x0

    nop

    nop

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

    :goto_b
    invoke-static {p1, v1, p2}, Lakt;->b(Lcmi;Lubo;Ltzy;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x1a

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_d
    const v1, 0x1c

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {v0, v1}, Lazj;-><init>(Ldcv;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_11
    invoke-direct {v1, p0, v0, v2, v3}, Lazv;-><init>(Lazk;Lazj;Layj;Ltzy;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    :goto_13
    return-object p0

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_8

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_16
    add-int v0, v0, v1

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

    :goto_17
    iget-object v2, p0, Lazw;->b:Layj;

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
