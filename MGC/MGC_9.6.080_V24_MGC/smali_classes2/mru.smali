.class public Lmru;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private final a:Landroid/animation/TypeEvaluator;

.field private final b:Landroid/view/animation/Interpolator;

.field private final c:Ljava/lang/Object;

.field private final d:Ljava/lang/Object;

.field private final e:J


# direct methods
.method public constructor <init>(Landroid/animation/TypeEvaluator;Landroid/view/animation/Interpolator;Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    iput-object p4, p0, Lmru;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    iput-object p3, p0, Lmru;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lmru;->b:Landroid/view/animation/Interpolator;

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

    :goto_4
    iput-object p1, p0, Lmru;->a:Landroid/animation/TypeEvaluator;

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

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-wide p5, p0, Lmru;->e:J

    nop

    goto/32 :goto_5

    nop

    nop
.end method


# virtual methods
.method public final c(J)Ljava/lang/Object;
    .locals 8

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p2, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_3
    long-to-double p1, p1

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    const v1, 0x18

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_5
    long-to-double v0, v0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_d

    nop

    nop

    :goto_7
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static/range {v2 .. v7}, Lucd;->d(DDD)D

    move-result-wide p1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_a
    invoke-interface {p0, p1, p2, v0}, Landroid/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p2, p0, Lmru;->b:Landroid/view/animation/Interpolator;

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

    nop

    :goto_c
    return-object p0

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_e
    iget-object p0, p0, Lmru;->a:Landroid/animation/TypeEvaluator;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_f
    iget-object p2, p0, Lmru;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_10
    iget-object v0, p0, Lmru;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_11
    double-to-float p1, p1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const-wide/16 v4, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_13
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

    nop

    :goto_14
    const v0, 0x13

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

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

    nop

    nop

    :goto_16
    iget-wide v0, p0, Lmru;->e:J

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_17
    div-double v2, p1, v0

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
.end method
