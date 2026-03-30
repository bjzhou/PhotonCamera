.class final Lbjb;
.super Luci;
.source "PG"

# interfaces
.implements Lubk;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcpp;

.field final synthetic c:I


# direct methods
.method public constructor <init>(ILcpp;I)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lbjb;->b:Lcpp;

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

    nop

    nop

    :goto_1
    const/4 p1, 0x1

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

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    iput p3, p0, Lbjb;->c:I

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput p1, p0, Lbjb;->a:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    div-float/2addr v0, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_3
    check-cast p1, Lcpo;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_4
    int-to-float v1, v2

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

    :goto_5
    const v0, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lbjb;->b:Lcpp;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_9
    sub-int/2addr v0, v2

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0xc

    nop

    nop

    goto/32 :goto_8

    nop

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

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {v1}, Luda;->q(F)I

    move-result v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_e
    iget v0, p0, Lbjb;->a:I

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_0

    nop

    :goto_10
    iget-object v1, p0, Lbjb;->b:Lcpp;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    div-float/2addr v1, v3

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

    :goto_12
    sub-int/2addr v2, v1

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_13
    return-object p0

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget v1, v1, Lcpp;->b:I

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_16
    int-to-float v0, v0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {v0}, Luda;->q(F)I

    move-result v0

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_18
    iget v2, p0, Lbjb;->c:I

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_19
    const/high16 v3, 0x40000000    # 2.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1a
    iget v2, v1, Lcpp;->a:I

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1b
    invoke-static {p1, p0, v0, v1}, Lcpo;->d(Lcpo;Lcpp;II)V

    goto/32 :goto_d

    nop

    nop

    nop
.end method
