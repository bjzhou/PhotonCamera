.class public final Layr;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lbpy;


# instance fields
.field public final a:J

.field public final b:Lbaa;

.field public c:Layu;

.field public final d:Lbzz;

.field private e:Lazl;


# direct methods
.method public constructor <init>(JLbaa;Layu;)V
    .locals 2

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p1, v1, v0}, Lazw;-><init>(Lazk;Layj;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p3, p0, Layr;->b:Lbaa;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_16

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0, p4, p3, p1, p2}, Lays;-><init>(Luaz;Lbaa;J)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p4, p0, Layr;->c:Layu;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v0, Lays;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_8
    invoke-direct {v1, p4, p3, p1, p2}, Layt;-><init>(Luaz;Lbaa;J)V

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_9
    new-instance p1, Lazw;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    new-instance p2, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0xe

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_c
    iput-object p1, p0, Layr;->d:Lbzz;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_d
    invoke-direct {p4, p0}, Layq;-><init>(Layr;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x4

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_f
    new-instance p3, Landroidx/compose/ui/input/pointer/PointerHoverIconModifierElement;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_11
    goto/32 :goto_1c

    nop

    nop

    :goto_12
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {p2, p3}, Lbzu;->a(Lbzz;Lbzz;)Lbzz;

    move-result-object p1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_14
    new-instance v1, Layt;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {p2, v1, v0, p1, p3}, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;I)V

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_16
    iput-wide p1, p0, Layr;->a:J

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_17
    sget-object p1, Lbzz;->c:Lbzv;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_19
    const/4 p3, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct {p3, p1}, Landroidx/compose/ui/input/pointer/PointerHoverIconModifierElement;-><init>(Lclu;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    return-void

    nop

    nop

    :goto_1c
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1d
    sget-object p1, Layk;->a:Lclu;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1e
    new-instance p4, Layq;

    nop

    goto/32 :goto_d

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    :goto_1
    iget-object v0, p0, Layr;->b:Lbaa;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    iput-object v0, p0, Layr;->e:Lazl;

    nop

    :goto_4
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    :goto_6
    iget-object v0, p0, Layr;->e:Lazl;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_7
    invoke-interface {v0}, Lbaa;->i()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public final c()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object v0, p0, Layr;->b:Lbaa;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object v0, p0, Layr;->e:Lazl;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    invoke-interface {v0}, Lbaa;->h()Lazl;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final cc()V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Layr;->e:Lazl;

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Layr;->e:Lazl;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6
    iget-object v0, p0, Layr;->b:Lbaa;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {v0}, Lbaa;->i()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method
