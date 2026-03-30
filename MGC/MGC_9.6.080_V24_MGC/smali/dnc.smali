.class public final Ldnc;
.super Landroid/text/TextPaint;
.source "PG"


# instance fields
.field public a:I

.field private b:Lcff;

.field private c:Ldob;

.field private d:Lcfr;

.field private e:Lcef;

.field private f:Lbrd;

.field private g:Lcdn;

.field private h:Lchw;


# direct methods
.method private final 19e596a3e324281407eb5c11093c0152m()V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Ldnc;->f:Lbrd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    iput-object v0, p0, Ldnc;->g:Lcdn;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    iput-object v0, p0, Ldnc;->e:Lcef;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, v0}, Ldnc;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public constructor <init>(F)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Ldnc;->d:Lcfr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Ldnc;->c:Ldob;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    sget-object p1, Lcfr;->a:Lcfr;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    iput p1, p0, Ldnc;->a:I

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    sget-object p1, Ldob;->a:Ldob;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    :goto_7
    invoke-direct {p0, v0}, Landroid/text/TextPaint;-><init>(I)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 p1, 0x3

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

    :goto_9
    iput p1, p0, Ldnc;->density:F

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method private final d5484163cd8d335e6b17663474ff5f2bm()Lcff;
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Lcdw;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    iput-object v0, p0, Ldnc;->b:Lcff;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0, p0}, Lcdw;-><init>(Landroid/graphics/Paint;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v0, :cond_0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Ldnc;->b:Lcff;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-object v0

    nop

    :goto_6
    return-object v0

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(I)V
    .locals 1

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

    :goto_1
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    invoke-interface {v0, p1}, Lcff;->i(I)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    iget v0, p0, Ldnc;->a:I

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

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-nez v0, :cond_0

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

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput p1, p0, Ldnc;->a:I

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

    :goto_7
    invoke-direct {p0}, Ldnc;->d5484163cd8d335e6b17663474ff5f2bm()Lcff;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    invoke-static {p1, v0}, La;->p(II)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method public final b(Lcef;JF)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ldnc;->19e596a3e324281407eb5c11093c0152m()V

    goto/32 :goto_1

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
.end method

.method public final c(J)V
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    cmp-long v0, p1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ldnc;->19e596a3e324281407eb5c11093c0152m()V

    :goto_2
    goto/32 :goto_4

    nop

    nop

    :goto_3
    const v0, 0x1b

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_6
    const-wide/16 v0, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_b
    if-nez v0, :cond_0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {p1, p2}, Lcen;->b(J)I

    move-result p1

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_d
    invoke-virtual {p0, p1}, Ldnc;->setColor(I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    :goto_f
    const v1, 0x1e

    nop

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

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop
.end method

.method public final d(Lchw;)V
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v0, Lchz;->a:Lchz;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget v1, p1, Lcia;->d:I

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    :goto_5
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, p1}, Ldnc;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0}, Ldnc;->d5484163cd8d335e6b17663474ff5f2bm()Lcff;

    move-result-object v0

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_8
    invoke-static {v0, p1}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_c
    invoke-direct {p0}, Ldnc;->d5484163cd8d335e6b17663474ff5f2bm()Lcff;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {p0}, Ldnc;->d5484163cd8d335e6b17663474ff5f2bm()Lcff;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_f
    if-eqz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_10
    iget v1, p1, Lcia;->a:F

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {v0, v1}, Lcff;->q(F)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_12
    if-eqz p1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :cond_2
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {p0}, Ldnc;->d5484163cd8d335e6b17663474ff5f2bm()Lcff;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {p0}, Ldnc;->d5484163cd8d335e6b17663474ff5f2bm()Lcff;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_15
    invoke-interface {v0, p1}, Lcff;->n(I)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_16
    iput-object p1, p0, Ldnc;->h:Lchw;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-interface {p0}, Lcff;->s()V

    :goto_19
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1a
    return-void

    nop

    :goto_1b
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_3
    goto/32 :goto_9

    nop

    :goto_1d
    invoke-interface {v0, v1}, Lcff;->o(I)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-nez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_4
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static {p1, v0}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_20
    iget-object v0, p0, Ldnc;->h:Lchw;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_21
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const v1, 0x12

    nop

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

    nop

    :goto_23
    instance-of v0, p1, Lcia;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_24
    invoke-interface {v0, v1}, Lcff;->p(F)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_a

    nop

    :goto_26
    goto/16 :goto_19

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_28
    iget v1, p1, Lcia;->b:F

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_29
    check-cast p1, Lcia;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_2a
    invoke-interface {v0, v1}, Lcff;->r(I)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-direct {p0}, Ldnc;->d5484163cd8d335e6b17663474ff5f2bm()Lcff;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget p1, p1, Lcia;->c:I

    nop

    nop

    goto/32 :goto_15

    nop

    nop
.end method

.method public final e(Lcfr;)V
    .locals 5

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ldnc;->clearShadowLayer()V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/16 p1, 0x20

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p1, p0, Ldnc;->d:Lcfr;

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_3
    goto/16 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_21

    nop

    nop

    :goto_5
    invoke-static {p1, v0}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_28

    nop

    :goto_7
    iget-wide v1, v1, Lcfr;->c:J

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_8
    iget-object v1, p0, Ldnc;->d:Lcfr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v0}, Ldno;->a(F)F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_29

    nop

    nop

    :goto_c
    long-to-int v1, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_d
    iput-object p1, p0, Ldnc;->d:Lcfr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_e
    and-long/2addr v1, v3

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_f
    shr-long/2addr v1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_10
    if-nez p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_12
    if-eqz p1, :cond_2

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_2
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_13
    iget-wide v2, v2, Lcfr;->b:J

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v2, p0, Ldnc;->d:Lcfr;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_16
    long-to-int p1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0, v0, p1, v1, v2}, Ldnc;->setShadowLayer(FFFI)V

    :goto_19
    goto/32 :goto_26

    nop

    nop

    :goto_1a
    const v1, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1b
    iget-wide v1, p1, Lcfr;->c:J

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1c
    if-eqz v0, :cond_3

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_3
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1e
    sget-object v0, Lcfr;->a:Lcfr;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1f
    return-void

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v0, p0, Ldnc;->d:Lcfr;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_22
    invoke-static {v2, v3}, Lcen;->b(J)I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-static {v0, p1}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_24
    iget v0, p1, Lcfr;->d:F

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

    nop

    :goto_25
    const-wide v3, 0xffffffffL

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

    :goto_26
    return-void

    nop

    :goto_27
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_27

    nop

    :goto_29
    goto/32 :goto_12

    nop

    nop

    nop

    nop
.end method

.method public final f(Ldob;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Ldnc;->c:Ldob;

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

    :goto_1
    if-eqz p1, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    goto :goto_d

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    sget-object v0, Ldob;->c:Ldob;

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

    :goto_5
    if-eqz v0, :cond_1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_6
    iget-object p1, p0, Ldnc;->c:Ldob;

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

    :goto_7
    sget-object v0, Ldob;->b:Ldob;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    :goto_9
    invoke-virtual {p1, v0}, Ldob;->a(Ldob;)Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p1, v0}, Ldob;->a(Ldob;)Z

    move-result p1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v0, p1}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0, p1}, Ldnc;->setStrikeThruText(Z)V

    :goto_d
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput-object p1, p0, Ldnc;->c:Ldob;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0, p1}, Ldnc;->setUnderlineText(Z)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method
