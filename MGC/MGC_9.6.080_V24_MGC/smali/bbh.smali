.class final Lbbh;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lbcd;


# static fields
.field public static final a:Lbbh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

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
    sput-object v0, Lbbh;->a:Lbbh;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0}, Lbbh;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Lbbh;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

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

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(JFLblm;)J
    .locals 2

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz p0, :cond_0

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

    :cond_0
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    :goto_2
    invoke-static {v0, v1, p1, p2}, Lcen;->f(JJ)J

    move-result-wide p1

    nop

    :goto_3
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p3, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/high16 p3, 0x40000000    # 2.0f

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-gtz v0, :cond_2

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_7
    double-to-float p0, v0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_8
    float-to-double v0, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_16

    nop

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

    nop

    :goto_b
    invoke-static {v0, v1, p0}, Lcel;->h(JF)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_c
    const/high16 p3, 0x42c80000    # 100.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_d
    invoke-static {p1, p2, p4}, Lbau;->a(JLblm;)J

    move-result-wide v0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_e
    add-float/2addr p3, p0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Lbas;->m()Z

    move-result p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_11
    invoke-interface {p4}, Lblm;->o()V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_12
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_13
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const p0, -0x648f4fbd

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_15
    return-wide p1

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    mul-float/2addr p0, p3

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

    :goto_18
    invoke-interface {p4, p0}, Lblm;->v(I)V

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_19
    const/high16 p3, 0x40900000    # 4.5f

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    div-float/2addr p0, p3

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    add-float/2addr p0, p3

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

    :goto_1c
    const v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {p4}, Lbdb;->a(Lblm;)Lbas;

    move-result-object p0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/high16 p0, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_20
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_21
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method
