.class public abstract Lcfq;
.super Lcef;
.source "PG"


# instance fields
.field private a:Landroid/graphics/Shader;

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0xd

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

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    :goto_4
    const-wide v0, 0x7fc000007fc00000L    # 2.247117487993712E307

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

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
    goto/32 :goto_2

    nop

    :goto_9
    invoke-direct {p0}, Lcef;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_a
    iput-wide v0, p0, Lcfq;->b:J

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method


# virtual methods
.method public final a(JLcff;F)V
    .locals 3

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_0
    invoke-interface {p3, v0}, Lcff;->m(Landroid/graphics/Shader;)V

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    invoke-interface {p3, p4}, Lcff;->h(F)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    :goto_4
    iget-wide v1, p0, Lcfq;->b:J

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {p3}, Lcff;->a()F

    move-result p0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6
    iput-object v0, p0, Lcfq;->a:Landroid/graphics/Shader;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_7
    cmpg-float p0, p0, p4

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-eqz p0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_9
    iput-wide p1, p0, Lcfq;->b:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_a
    check-cast p0, Lcdw;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {p0, v0}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0, p1, p2}, Lcfq;->b(J)Landroid/graphics/Shader;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {p1, p2}, Lcdn;->e(J)Z

    move-result v0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_e
    invoke-static {p0, p1, v1, v2}, La;->q(JJ)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_f
    if-eqz v1, :cond_2

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :cond_2
    :goto_10
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {p3}, Lcff;->g()J

    move-result-wide p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_13
    invoke-interface {p3, v1, v2}, Lcff;->j(J)V

    :goto_14
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Lcfq;->a:Landroid/graphics/Shader;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_16
    if-nez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_17
    const-wide p1, 0x7fc000007fc00000L    # 2.247117487993712E307

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

    :goto_18
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_19
    const v0, 0x17

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    sget-wide v1, Lcel;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-eqz p0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_4
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1c
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_26

    nop

    :goto_1d
    iput-wide p1, p0, Lcfq;->b:J

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_11

    nop

    nop

    :goto_1f
    if-eqz p0, :cond_6

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_21
    return-void

    nop

    nop

    :goto_22
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto :goto_1e

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iput-object v0, p0, Lcfq;->a:Landroid/graphics/Shader;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_22

    nop

    :goto_27
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget-object p0, p0, Lcdw;->c:Landroid/graphics/Shader;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2a
    return-void

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2c
    move-object p0, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_2d
    const v1, 0x8

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

    :goto_2e
    invoke-static {v1, v2, p1, p2}, La;->q(JJ)Z

    move-result v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public abstract b(J)Landroid/graphics/Shader;
.end method
