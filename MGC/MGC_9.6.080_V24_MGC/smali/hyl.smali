.class public final synthetic Lhyl;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lhyi;


# instance fields
.field public final synthetic a:Lhze;

.field public final synthetic b:Lhze;

.field public final synthetic c:Lhze;

.field public final synthetic d:Lhze;


# direct methods
.method public synthetic constructor <init>(Lhze;Lhze;Lhze;Lhze;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    iput-object p4, p0, Lhyl;->d:Lhze;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lhyl;->a:Lhze;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p2, p0, Lhyl;->b:Lhze;

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

    :goto_5
    iput-object p3, p0, Lhyl;->c:Lhze;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(JLpro;)V
    .locals 3

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-float/2addr p3, v0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_16

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/high16 v1, 0x3e800000    # 0.25f

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_5
    iget-object p3, p0, Lhyl;->a:Lhze;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0, p1, p2}, Lhze;->a(J)F

    move-result v0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lhyl;->b:Lhze;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, p1, p2, p3}, Lhze;->e(JF)V

    goto/32 :goto_15

    nop

    nop

    :goto_9
    const v0, 0x3e19999a    # 0.15f

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_a
    const v2, 0x3f19999a    # 0.6f

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

    :goto_b
    const v0, 0x8

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_2

    nop

    nop

    :goto_d
    invoke-virtual {v1, p1, p2}, Lhze;->a(J)F

    move-result v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_f
    iget-object v1, p0, Lhyl;->c:Lhze;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_10
    add-float/2addr p3, v1

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_11
    iget-object p0, p0, Lhyl;->d:Lhze;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p3, p1, p2}, Lhze;->a(J)F

    move-result p3

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_13
    mul-float/2addr v1, v2

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

    :goto_14
    const v1, 0x3

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_c

    nop

    nop

    :goto_17
    mul-float/2addr v0, v1

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

    nop

    :goto_18
    mul-float/2addr p3, v0

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

    :goto_19
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop
.end method
