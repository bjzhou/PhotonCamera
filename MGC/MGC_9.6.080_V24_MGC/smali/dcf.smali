.class public final Ldcf;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcvj;


# static fields
.field private static final a:Lubo;


# instance fields
.field private final b:Lcxv;

.field private c:Lubo;

.field private d:Luaz;

.field private e:Z

.field private final f:Ldca;

.field private g:Z

.field private h:Z

.field private i:Lcff;

.field private final j:Ldbw;

.field private final k:Lcej;

.field private l:J

.field private final m:Ldbh;

.field private n:I


# direct methods
.method private final 33b3102b6558811a7b7629a1e8e59bd2m(Z)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    iput-boolean p1, p0, Ldcf;->e:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    if-ne p1, v0, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-boolean v0, p0, Ldcf;->e:Z

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, p0, p1}, Lcxv;->t(Lcvj;Z)V

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Ldcf;->b:Lcxv;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    sget-object v0, Ldcd;->a:Ldcd;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    sput-object v0, Ldcf;->a:Lubo;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lcxv;Lubo;Luaz;)V
    .locals 0

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Ldcf;->j:Ldbw;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Ldcf;->k:Lcej;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Ldcf;->b:Lcxv;

    nop

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

    :goto_3
    iput-wide p1, p0, Ldcf;->l:J

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    new-instance p1, Ldca;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_5
    sget-object p2, Ldcf;->a:Lubo;

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

    :goto_6
    sget-wide p1, Lcfx;->a:J

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

    :goto_7
    new-instance p1, Ldcc;

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

    :goto_8
    iput-object p1, p0, Ldcf;->f:Ldca;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_9
    invoke-direct {p1}, Lcej;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-object p1, p0, Ldcf;->m:Ldbh;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_b
    new-instance p1, Ldbw;

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_c
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    :goto_e
    new-instance p1, Lcej;

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

    :goto_f
    const/4 p3, 0x1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_10
    iput-object p3, p0, Ldcf;->d:Luaz;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {p1, p2}, Ldbh;->h(Z)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {p1, p2}, Ldbw;-><init>(Lubo;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_13
    const/4 p2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p2, p3}, Landroid/graphics/RenderNode;->setHasOverlappingRendering(Z)Z

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {p1}, Ldca;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_16
    iput-object p2, p0, Ldcf;->c:Lubo;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object p2, p1, Ldcc;->a:Landroid/graphics/RenderNode;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_18
    invoke-direct {p1}, Ldcc;-><init>()V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop
.end method

.method private final b1051a9d8893542362ad09051775f8f6m()V
    .locals 0

    goto/32 :goto_2

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
    invoke-static {p0}, Lddx;->a(Lcxv;)V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iget-object p0, p0, Ldcf;->b:Lcxv;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method


# virtual methods
.method public final a(JZ)J
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p3, p0, Ldcf;->j:Ldbw;

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

    :goto_1
    return-wide p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez p3, :cond_0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    :goto_3
    iget-object p3, p0, Ldcf;->j:Ldbw;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Ldcf;->m:Ldbh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_5
    iget-object p0, p0, Ldcf;->m:Ldbh;

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

    :goto_6
    goto :goto_9

    nop

    nop

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

    :goto_8
    invoke-virtual {p3, p0, p1, p2}, Ldbw;->a(Ljava/lang/Object;J)J

    move-result-wide p0

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p3, p0, p1, p2}, Ldbw;->b(Ljava/lang/Object;J)J

    move-result-wide p0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method public final b()V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    iget-object v0, v0, Ldcc;->a:Landroid/graphics/RenderNode;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    invoke-interface {v0}, Ldbh;->n()Z

    move-result v0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    iput-object v0, p0, Ldcf;->d:Luaz;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_4
    check-cast v0, Ldcc;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Ldcf;->m:Ldbh;

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

    nop

    :goto_6
    invoke-virtual {v0}, Landroid/graphics/RenderNode;->discardDisplayList()V

    :goto_7
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0}, Lcxv;->w()V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Ldcf;->m:Ldbh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_a
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Ldcf;->b:Lcxv;

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_c
    iput-object v0, p0, Ldcf;->c:Lubo;

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

    :goto_d
    invoke-direct {p0, v0}, Ldcf;->33b3102b6558811a7b7629a1e8e59bd2m(Z)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_f
    iput-boolean v0, p0, Ldcf;->g:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_10
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0, p0}, Lcxv;->B(Lcvj;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Ldcf;->b:Lcxv;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c(Lcei;Lcid;)V
    .locals 8

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v6, :cond_0

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_1
    if-nez p2, :cond_1

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1d

    nop

    nop

    :goto_2
    iget-object v5, v1, Lcdw;->a:Landroid/graphics/Paint;

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

    nop

    :goto_3
    int-to-float p2, p2

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v1, Lcdw;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_5
    invoke-interface {v2}, Ldbh;->a()F

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p1}, Lcdr;->a(Lcei;)Landroid/graphics/Canvas;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_7
    const v1, 0xd

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {v1}, Ldbh;->e()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_9
    int-to-float v3, v1

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_a
    iget-object p2, p0, Ldcf;->m:Ldbh;

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v1, p0, Ldcf;->i:Lcff;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_c
    invoke-virtual {p2, v0}, Ldbw;->h(Ljava/lang/Object;)[F

    move-result-object p2

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

    :goto_d
    invoke-direct {v1}, Lcdw;-><init>()V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v1, v1, Ldcc;->a:Landroid/graphics/RenderNode;

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0, p2}, Landroid/graphics/Canvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_10
    cmpl-float p2, p2, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {p1, p2}, Lcei;->a([F)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_14
    invoke-interface {p2}, Ldbh;->m()Z

    move-result p2

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_15
    move v1, p2

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_16
    iget-object p2, p0, Ldcf;->m:Ldbh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_17
    iget-object v1, p0, Ldcf;->m:Ldbh;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_18
    goto/32 :goto_13

    nop

    :goto_19
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1a
    iget-object p2, p0, Ldcf;->j:Ldbw;

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_1b
    check-cast v1, Ldcc;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object p2, p0, Ldcf;->m:Ldbh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p0}, Ldcf;->h()V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-interface {v1}, Ldbh;->a()F

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-interface {p2}, Ldbh;->b()F

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_20
    invoke-virtual {v0}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    add-int v0, v0, v1

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_22
    const/4 v6, 0x1

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_3d

    nop

    nop

    :goto_24
    iget-object p2, p0, Ldcf;->c:Lubo;

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const/4 v6, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_26
    if-ltz v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v1, v1, Ldcc;->a:Landroid/graphics/RenderNode;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_28
    if-eqz v1, :cond_3

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget-object v1, p0, Ldcf;->m:Ldbh;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-interface {p2, p1, v0}, Lubo;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2b
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-interface {p1}, Lcei;->i()V

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_2d
    return-void

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-interface {p1, p2, v7}, Lcei;->m(FF)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-interface {p1}, Lcei;->k()V

    :goto_31
    goto/32 :goto_2f

    nop

    nop

    :goto_32
    const/4 v0, 0x0

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iput-object v1, p0, Ldcf;->i:Lcff;

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    goto/32 :goto_41

    nop

    nop

    :goto_36
    invoke-virtual {p2, p1}, Ldca;->c(Lcei;)V

    :goto_37
    goto/32 :goto_24

    nop

    nop

    :goto_38
    invoke-interface {p1}, Lcei;->b()V

    :goto_39
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    check-cast v1, Lcdw;

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

    :goto_3b
    iget-object v0, p0, Ldcf;->m:Ldbh;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget-object p2, p0, Ldcf;->m:Ldbh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iput-boolean v6, p0, Ldcf;->h:Z

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    const/4 v1, 0x0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_3f
    iget-object v1, p0, Ldcf;->m:Ldbh;

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {v1}, Landroid/graphics/RenderNode;->getRight()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_41
    goto/16 :goto_31

    nop

    :goto_42
    goto/32 :goto_30

    nop

    nop

    :goto_43
    const v0, 0x12

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

    :goto_44
    iget-object p2, p0, Ldcf;->f:Ldca;

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_45
    invoke-interface {p2}, Ldbh;->l()Z

    move-result p2

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iget-boolean p0, p0, Ldcf;->h:Z

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-direct {p0, v6}, Ldcf;->33b3102b6558811a7b7629a1e8e59bd2m(Z)V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_48
    iget-object v2, p0, Ldcf;->m:Ldbh;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_49
    const/high16 v2, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_4a
    iget-object v1, p0, Ldcf;->m:Ldbh;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4b
    if-eqz p2, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_4c
    if-nez p0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :cond_5
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_4e
    check-cast v1, Ldcc;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_4f
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_50
    check-cast p2, Ldcc;

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_51
    iget-object p2, p0, Ldcf;->m:Ldbh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_52
    if-nez p2, :cond_6

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :cond_6
    :goto_53
    goto/32 :goto_44

    nop

    nop

    nop

    :goto_54
    invoke-interface {v1, v2}, Lcff;->h(F)V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    if-nez p2, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-interface {p2}, Ldbh;->d()I

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_57
    if-gtz p2, :cond_8

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_58
    int-to-float v4, v1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_59
    move v2, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_5a
    int-to-float v7, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    iget-object p2, p2, Ldcc;->a:Landroid/graphics/RenderNode;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {v1}, Landroid/graphics/RenderNode;->getBottom()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    cmpg-float v1, v1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    if-lez v0, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    :cond_9
    goto/32 :goto_18

    nop

    :goto_5f
    invoke-interface {p1}, Lcei;->h()V

    :goto_60
    goto/32 :goto_3c

    nop

    nop

    nop
.end method

.method public final d(Lcdg;Z)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    iget-object p2, p0, Ldcf;->j:Ldbw;

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

    nop

    :goto_1
    iget-object p0, p0, Ldcf;->m:Ldbh;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    iget-object p2, p0, Ldcf;->j:Ldbw;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Ldcf;->m:Ldbh;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p2, p0, p1}, Ldbw;->d(Ljava/lang/Object;Lcdg;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-nez p2, :cond_0

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

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p2, p0, p1}, Ldbw;->e(Ljava/lang/Object;Lcdg;)V

    goto/32 :goto_7

    nop

    nop
.end method

.method public final e(J)V
    .locals 3

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p2, p2, Ldcc;->a:Landroid/graphics/RenderNode;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1
    iget-object p1, p1, Ldcc;->a:Landroid/graphics/RenderNode;

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

    :goto_2
    iget-object v0, p0, Ldcf;->m:Ldbh;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    check-cast p1, Ldcc;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_3

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {v0}, Ldbh;->e()I

    move-result v0

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

    nop

    :goto_b
    invoke-static {p1, p2}, Ldpk;->b(J)I

    move-result v2

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {p0}, Ldcf;->b1051a9d8893542362ad09051775f8f6m()V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-ne v0, v2, :cond_1

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :cond_1
    goto/32 :goto_20

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    sub-int/2addr p1, v1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_11
    sub-int/2addr v2, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object p2, p0, Ldcf;->m:Ldbh;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_15
    if-eq v1, p1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {v0}, Ldbh;->d()I

    move-result v1

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

    :goto_17
    iget-object p0, p0, Ldcf;->j:Ldbw;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_18
    if-ne v1, p1, :cond_3

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_12

    nop

    nop

    :goto_19
    invoke-static {p1, p2}, Ldpk;->a(J)I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const v1, 0x15

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p1, v2}, Landroid/graphics/RenderNode;->offsetTopAndBottom(I)Z

    :goto_1c
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p2, p1}, Landroid/graphics/RenderNode;->offsetLeftAndRight(I)Z

    :goto_1e
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_20
    goto/16 :goto_f

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object p1, p0, Ldcf;->m:Ldbh;

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

    :goto_23
    invoke-virtual {p0}, Ldbw;->c()V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_24
    check-cast p2, Ldcc;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_25
    if-ne v0, v2, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_22

    nop

    nop
.end method

.method public final f(J)V
    .locals 4

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p2}, Ldca;->a()Landroid/graphics/Outline;

    move-result-object p2

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/16 v1, 0x20

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_3
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_4
    int-to-float v2, v1

    nop

    nop

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

    :goto_5
    invoke-virtual {p0}, Ldbw;->c()V

    :goto_6
    goto/32 :goto_d

    nop

    nop

    :goto_7
    long-to-int p1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_8
    const-wide v2, 0xffffffffL

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_9
    long-to-int v1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_a
    invoke-static {v0, v1}, Lcfx;->a(J)F

    move-result v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {v1}, Ldbh;->e()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p1, p0, Ldcf;->m:Ldbh;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p2, p0, Ldcf;->f:Ldca;

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

    :goto_10
    check-cast p1, Ldcc;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0x17

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_12
    mul-float/2addr v0, p2

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_13
    goto/32 :goto_1b

    nop

    :goto_14
    mul-float/2addr v0, v2

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_15
    const v0, 0x20

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_16
    iget-wide v0, p0, Ldcf;->l:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    int-to-float p2, p1

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_19
    iget-object p0, p0, Ldcf;->j:Ldbw;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object p2, p0, Ldcf;->m:Ldbh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-interface {p2, v0}, Ldbh;->k(F)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object p1, p1, Ldcc;->a:Landroid/graphics/RenderNode;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-interface {v2, v0}, Ldbh;->j(F)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object p1, p0, Ldcf;->m:Ldbh;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_21
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    :goto_22
    invoke-static {v2, v3}, Lcfx;->b(J)F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_23
    add-int/2addr v1, p1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_24
    invoke-interface {p2}, Ldbh;->e()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/graphics/RenderNode;->setPosition(IIII)Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_26
    shr-long v1, p1, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_27
    iget-object v2, p0, Ldcf;->m:Ldbh;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget-wide v2, p0, Ldcf;->l:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget-object v1, p0, Ldcf;->m:Ldbh;

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2a
    invoke-interface {p1, p2}, Ldbh;->i(Landroid/graphics/Outline;)V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object p2, p0, Ldcf;->m:Ldbh;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_2c
    add-int/2addr p2, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_2d
    and-long/2addr p1, v2

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-interface {p2}, Ldbh;->d()I

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {p0}, Ldcf;->invalidate()V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-interface {p2}, Ldbh;->d()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop
.end method

.method public final g(Lubo;Luaz;)V
    .locals 2

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Ldbw;->f()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    sget-wide v0, Lcfx;->a:J

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    :goto_6
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-wide v0, p0, Ldcf;->l:J

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Ldcf;->j:Ldbw;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-boolean v0, p0, Ldcf;->h:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_a
    const v1, 0x11

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_3

    nop

    :goto_c
    add-int v0, v0, v1

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

    :goto_d
    invoke-direct {p0, v0}, Ldcf;->33b3102b6558811a7b7629a1e8e59bd2m(Z)V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_e
    iput-object p2, p0, Ldcf;->d:Luaz;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_f
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_11
    iput-object p1, p0, Ldcf;->c:Lubo;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iput-boolean v0, p0, Ldcf;->g:Z

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_13
    const v0, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop
.end method

.method public final h()V
    .locals 7

    goto/32 :goto_2e

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_27

    nop

    :goto_2
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-boolean v0, p0, Ldcf;->e:Z

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_4
    invoke-interface {v5}, Lcei;->i()V

    :goto_5
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Ldca;->d()Z

    move-result v2

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_8
    iget-object v5, v3, Lcej;->a:Lcdq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_9
    invoke-virtual {v0}, Landroid/graphics/RenderNode;->beginRecording()Landroid/graphics/RecordingCanvas;

    move-result-object v0

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
    iget-object v0, v2, Ldcc;->a:Landroid/graphics/RenderNode;

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

    :goto_b
    iget-object v0, p0, Ldcf;->f:Ldca;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :cond_0
    goto/32 :goto_28

    nop

    :goto_d
    iget-object v0, v3, Lcej;->a:Lcdq;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_e
    invoke-interface {v0}, Ldbh;->m()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_f
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

    :goto_10
    return-void

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_6

    nop

    nop

    :goto_12
    invoke-direct {v4, v0}, Ldce;-><init>(Lubo;)V

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_14
    if-nez v1, :cond_1

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    :goto_15
    iget-object v6, v5, Lcdq;->a:Landroid/graphics/Canvas;

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

    :goto_16
    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    nop

    :goto_17
    iput-object v0, v5, Lcdq;->a:Landroid/graphics/Canvas;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_18
    check-cast v2, Ldcc;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_19
    invoke-interface {v0}, Ldbh;->n()Z

    move-result v0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    new-instance v4, Ldce;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1b
    if-nez v1, :cond_3

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1c
    invoke-interface {v5}, Lcei;->k()V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 v1, 0x0

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1e
    const v1, 0xb

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1f
    if-nez v0, :cond_4

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_b

    nop

    nop

    :goto_20
    invoke-virtual {v0}, Ldca;->b()Lcfi;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_30

    nop

    nop

    :goto_22
    if-eqz v2, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-direct {p0, v0}, Ldcf;->33b3102b6558811a7b7629a1e8e59bd2m(Z)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-static {v5, v1}, Lceh;->a(Lcei;Lcfi;)V

    :goto_25
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_26
    return-void

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v0, p0, Ldcf;->m:Ldbh;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_2b
    iget-object v2, p0, Ldcf;->m:Ldbh;

    nop

    nop

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

    :goto_2c
    iget-object v3, p0, Ldcf;->k:Lcej;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_2d
    if-eqz v0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    :cond_6
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const v0, 0xf

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_2f
    iget-object v0, v2, Ldcc;->a:Landroid/graphics/RenderNode;

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_30
    iget-object v0, p0, Ldcf;->c:Lubo;

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v0}, Landroid/graphics/RenderNode;->endRecording()V

    :goto_32
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget-object v0, p0, Ldcf;->m:Ldbh;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iput-object v6, v0, Lcdq;->a:Landroid/graphics/Canvas;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_35
    invoke-interface {v4, v5}, Lubk;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_14

    nop

    nop

    :goto_36
    if-nez v0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_2b

    nop

    nop

    nop
.end method

.method public final i(Lcfp;)V
    .locals 14

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-boolean v7, p1, Lcfp;->m:Z

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    :goto_1
    and-int/lit16 v5, v0, 0x800

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    move v3, v4

    nop

    nop

    :goto_3
    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f4

    nop

    :cond_0
    goto/32 :goto_f3

    nop

    :goto_5
    invoke-static {v7, v8}, Lcen;->b(J)I

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v5, v7}, Landroid/graphics/RenderNode;->setSpotShadowColor(I)Z

    :goto_7
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0}, Ldbw;->c()V

    :goto_9
    goto/32 :goto_df

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v7}, Ldca;->a()Landroid/graphics/Outline;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    :goto_b
    iget-object v5, p0, Ldcf;->m:Ldbh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-gtz v1, :cond_1

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    :cond_1
    goto/32 :goto_e6

    nop

    nop

    nop

    :goto_d
    check-cast v5, Ldcc;

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    check-cast v5, Ldcc;

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    :goto_f
    iget-object v1, p0, Ldcf;->m:Ldbh;

    nop

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v5, p0, Ldcf;->m:Ldbh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Ldcf;->invalidate()V

    :goto_12
    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v5, v4}, Landroid/graphics/RenderNode;->setHasOverlappingRendering(Z)Z

    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v5, v5, Ldcc;->a:Landroid/graphics/RenderNode;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_15
    and-int/lit8 v5, v0, 0x40

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_16
    iget-object v5, v5, Ldcc;->a:Landroid/graphics/RenderNode;

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    :goto_17
    if-nez v5, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_de

    nop

    nop

    :goto_18
    invoke-virtual {v5, v6}, Landroid/graphics/RenderNode;->setScaleX(F)Z

    :goto_19
    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    :goto_1a
    move v1, v4

    nop

    nop

    :goto_1b
    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v5, v5, Ldcc;->a:Landroid/graphics/RenderNode;

    nop

    :try_start_0
    invoke-virtual {v5, v7}, Landroid/graphics/RenderNode;->setRenderEffect(Landroid/graphics/RenderEffect;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_1e
    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-nez v5, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_4a

    nop

    nop

    :goto_21
    iget-object v5, p0, Ldcf;->m:Ldbh;

    nop

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    :goto_22
    iget-object v2, p0, Ldcf;->f:Ldca;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_23
    iget-object v5, v5, Ldcc;->a:Landroid/graphics/RenderNode;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_24
    if-nez v1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_eb

    nop

    :cond_4
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v5, v5, Ldcc;->a:Landroid/graphics/RenderNode;

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v5, v5, Ldcc;->a:Landroid/graphics/RenderNode;

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :goto_27
    if-nez v5, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    move v2, v4

    nop

    nop

    :goto_29
    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v5, v5, Ldcc;->a:Landroid/graphics/RenderNode;

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    :goto_2b
    iget-object v8, p0, Ldcf;->m:Ldbh;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_2c
    check-cast v5, Ldcc;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v5, p0, Ldcf;->m:Ldbh;

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

    :goto_2e
    if-nez v8, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_2b

    nop

    nop

    :goto_2f
    invoke-virtual {v5, v7}, Landroid/graphics/RenderNode;->setElevation(F)Z

    :goto_30
    goto/32 :goto_15

    nop

    nop

    :goto_31
    and-int/lit16 v5, v0, 0x400

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_32
    iget-wide v12, p1, Lcfp;->o:J

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_33
    const/4 v7, 0x0

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    :goto_34
    if-nez v1, :cond_7

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    if-eqz v1, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    if-nez v5, :cond_9

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    sget-object v5, Lcfn;->a:Lcfs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_38
    iget-object v1, p1, Lcfp;->l:Lcfs;

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_39
    check-cast v5, Ldcc;

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    and-int/lit16 v5, v0, 0x100

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_3b
    if-ne v1, v5, :cond_a

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :cond_a
    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget v6, p1, Lcfp;->b:F

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_3d
    if-nez v5, :cond_b

    nop

    goto/32 :goto_d7

    nop

    nop

    :cond_b
    goto/32 :goto_b8

    nop

    nop

    nop

    :goto_3e
    move v10, v1

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    :goto_3f
    iget-object v1, p0, Ldcf;->m:Ldbh;

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    :goto_40
    iget-object v5, p0, Ldcf;->m:Ldbh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_41
    if-nez v5, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_42
    iget-object v5, v5, Ldcc;->a:Landroid/graphics/RenderNode;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    :goto_43
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_44
    invoke-virtual {v5, v1}, Landroid/graphics/RenderNode;->setClipToOutline(Z)Z

    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-virtual {v5, v6}, Landroid/graphics/RenderNode;->setRotationX(F)Z

    :goto_46
    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    :goto_47
    iput p1, p0, Ldcf;->n:I

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {v5, v6}, Landroid/graphics/RenderNode;->setAlpha(F)Z

    :goto_49
    goto/32 :goto_a2

    nop

    nop

    nop

    :goto_4a
    iget-object v5, p0, Ldcf;->m:Ldbh;

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_4b
    if-eq v2, v3, :cond_d

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    :goto_4c
    if-nez v5, :cond_e

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_4d
    iput-wide v2, p0, Ldcf;->l:J

    nop

    :goto_4e
    goto/32 :goto_e8

    nop

    nop

    nop

    :goto_4f
    goto/16 :goto_3

    nop

    nop

    nop

    :goto_50
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_51
    if-nez v1, :cond_f

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-interface {v2}, Ldbh;->m()Z

    move-result v2

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_53
    if-nez v2, :cond_10

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_54
    invoke-virtual {v2}, Ldca;->d()Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    invoke-interface {v5, v7}, Ldbh;->h(Z)V

    :goto_56
    goto/32 :goto_89

    nop

    nop

    nop

    :goto_57
    check-cast v5, Ldcc;

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    :goto_58
    if-nez v9, :cond_11

    nop

    goto/32 :goto_67

    nop

    nop

    :cond_11
    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    nop

    :goto_59
    goto/16 :goto_12

    nop

    :goto_5a
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_5b
    iget-object v5, v5, Ldcc;->a:Landroid/graphics/RenderNode;

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    :goto_5c
    iget-object v7, p0, Ldcf;->m:Ldbh;

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    :goto_5d
    iget-object v5, p0, Ldcf;->m:Ldbh;

    nop

    nop

    nop

    goto/32 :goto_fb

    nop

    nop

    nop

    :goto_5e
    check-cast v5, Ldcc;

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    iget-object v5, p0, Ldcf;->m:Ldbh;

    nop

    nop

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    nop

    :goto_60
    goto/16 :goto_f8

    nop

    nop

    nop

    nop

    nop

    :goto_61
    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    :goto_62
    goto/16 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_63
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_64
    invoke-static {v8, v3}, La;->p(II)Z

    move-result v9

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_65
    iget-object v7, p0, Ldcf;->f:Ldca;

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    nop

    :goto_66
    goto/16 :goto_c8

    nop

    nop

    :goto_67
    goto/32 :goto_d3

    nop

    nop

    :goto_68
    int-to-float v7, v7

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    if-nez v5, :cond_12

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_7a

    nop

    nop

    :goto_6a
    check-cast v5, Ldcc;

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    :goto_6b
    iget-object v7, p0, Ldcf;->m:Ldbh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    :goto_6c
    iget v8, p1, Lcfp;->n:I

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_6d
    invoke-virtual {v5, v7}, Landroid/graphics/RenderNode;->setTranslationY(F)Z

    :goto_6e
    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    check-cast v5, Ldcc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_70
    invoke-virtual {v1}, Ldca;->d()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    :goto_71
    if-nez v5, :cond_13

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    :cond_13
    goto/32 :goto_e9

    nop

    nop

    nop

    :goto_72
    iget-object v1, p0, Ldcf;->m:Ldbh;

    nop

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    const v5, 0x8000

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    :goto_74
    iget-object v5, v5, Ldcc;->a:Landroid/graphics/RenderNode;

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    check-cast v5, Ldcc;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_76
    iget v1, p0, Ldcf;->n:I

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_77
    iget-object v5, p0, Ldcf;->m:Ldbh;

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_78
    if-nez v7, :cond_14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :cond_14
    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    :goto_79
    iget-object v8, p1, Lcfp;->r:Lcfe;

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_7a
    iget-object v5, p0, Ldcf;->m:Ldbh;

    nop

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    :goto_7b
    invoke-virtual {v5, v6}, Landroid/graphics/RenderNode;->setScaleY(F)Z

    :goto_7c
    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    iget-object v7, p0, Ldcf;->f:Ldca;

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_7e
    invoke-static {v7, v8}, Lcen;->b(J)I

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :goto_7f
    invoke-interface {v7}, Ldbh;->c()I

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_80
    if-eqz v1, :cond_15

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_81
    invoke-interface {v1}, Luaz;->a()Ljava/lang/Object;

    :goto_82
    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    :goto_83
    cmpl-float v1, v1, v6

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

    :goto_84
    iget-object v1, p0, Ldcf;->f:Ldca;

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_85
    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    :goto_86
    if-eqz v2, :cond_16

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_99

    nop

    nop

    :goto_87
    if-nez v1, :cond_17

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :cond_17
    goto/32 :goto_98

    nop

    nop

    nop

    nop

    :goto_88
    check-cast v5, Ldcc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_89
    const/high16 v5, 0x20000

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    iget-object v5, p0, Ldcf;->m:Ldbh;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_8b
    or-int/2addr v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    iget-object v5, v5, Ldcc;->a:Landroid/graphics/RenderNode;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_8d
    iget-object v5, v5, Ldcc;->a:Landroid/graphics/RenderNode;

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    iget-object v5, p0, Ldcf;->m:Ldbh;

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    if-nez v5, :cond_18

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_90
    goto/16 :goto_5a

    nop

    nop

    nop

    nop

    :goto_91
    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_92
    iget-wide v7, p1, Lcfp;->h:J

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_93
    if-nez v5, :cond_19

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_94
    iget v9, p1, Lcfp;->d:F

    nop

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    :goto_95
    if-eq v7, v8, :cond_1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    :cond_1a
    goto/32 :goto_e0

    nop

    nop

    :goto_96
    and-int/lit16 v5, v0, 0x6000

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_97
    invoke-interface {v1}, Ldbh;->b()F

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_98
    iget-wide v2, p1, Lcfp;->k:J

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_99
    move v2, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    iget-object v5, v5, Ldcc;->a:Landroid/graphics/RenderNode;

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_9b
    iget-boolean v1, p0, Ldcf;->h:Z

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    and-int/lit16 v5, v0, 0x200

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    :goto_9d
    const v0, 0x8

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    and-int/2addr v5, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    const/4 v6, 0x0

    nop

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    :goto_a0
    invoke-static {v7, v8}, Lcfx;->b(J)F

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_a1
    if-nez v5, :cond_1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_1b
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    and-int/lit8 v5, v0, 0x8

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    check-cast v5, Ldcc;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    invoke-virtual {v5, v3}, Landroid/graphics/RenderNode;->setHasOverlappingRendering(Z)Z

    goto/32 :goto_66

    nop

    nop

    :goto_a5
    iget-wide v7, p0, Ldcf;->l:J

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    iget-object v5, v5, Ldcc;->a:Landroid/graphics/RenderNode;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    move v1, v3

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_a8
    if-nez v3, :cond_1c

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    :cond_1c
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    mul-float/2addr v5, v7

    nop

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    :goto_aa
    and-int/lit8 v5, v0, 0x20

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_ab
    iget v7, p1, Lcfp;->j:F

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_ac
    invoke-interface {v8, v7}, Ldbh;->i(Landroid/graphics/Outline;)V

    :goto_ad
    goto/32 :goto_34

    nop

    nop

    :goto_ae
    int-to-float v7, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_af
    invoke-static {v8, v9}, La;->p(II)Z

    move-result v8

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    invoke-interface {v7}, Ldbh;->f()I

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    :goto_b1
    invoke-static {v7, v8}, Lcfx;->a(J)F

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_b2
    iget v0, p1, Lcfp;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    :goto_b3
    iget-boolean v1, p1, Lcfp;->m:Z

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    invoke-virtual {v5, v4, v7}, Landroid/graphics/RenderNode;->setUseCompositingLayer(ZLandroid/graphics/Paint;)Z

    goto/32 :goto_c7

    nop

    nop

    :goto_b5
    check-cast v5, Ldcc;

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_b6
    if-nez v1, :cond_1d

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :cond_1d
    goto/32 :goto_81

    nop

    nop

    nop

    :goto_b7
    and-int/lit16 v1, v0, 0x1000

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_b8
    iget-object v5, p0, Ldcf;->m:Ldbh;

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    invoke-virtual {v5, v6}, Landroid/graphics/RenderNode;->setRotationY(F)Z

    :goto_ba
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_bb
    iget v11, p1, Lcfp;->f:F

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_bc
    iget-object v7, p1, Lcfp;->l:Lcfs;

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    invoke-virtual {v5, v4, v7}, Landroid/graphics/RenderNode;->setUseCompositingLayer(ZLandroid/graphics/Paint;)Z

    goto/32 :goto_13

    nop

    nop

    :goto_be
    iget-object v5, v5, Ldcc;->a:Landroid/graphics/RenderNode;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    invoke-virtual/range {v7 .. v13}, Ldca;->f(Lcfe;FZFJ)Z

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    goto/16 :goto_29

    nop

    nop

    nop

    nop

    :goto_c1
    goto/32 :goto_28

    nop

    nop

    :goto_c2
    and-int/lit16 v5, v0, 0x80

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    iget v7, p1, Lcfp;->e:F

    nop

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    :goto_c4
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_c5
    iget-wide v7, p1, Lcfp;->g:J

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    if-nez v5, :cond_1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :cond_1e
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_c7
    invoke-virtual {v5, v3}, Landroid/graphics/RenderNode;->setHasOverlappingRendering(Z)Z

    :goto_c8
    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_c9
    if-nez v5, :cond_1f

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    :cond_1f
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ca
    const v1, 0x12

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_cb
    invoke-virtual {v5, v6}, Landroid/graphics/RenderNode;->setTranslationX(F)Z

    :goto_cc
    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    :goto_cd
    iget-object v0, p0, Ldcf;->j:Ldbw;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_ce
    if-nez v0, :cond_20

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_20
    goto/32 :goto_cd

    nop

    nop

    nop

    :goto_cf
    and-int/lit16 v0, v0, 0x1f1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    :goto_d0
    if-nez v8, :cond_21

    nop

    goto/32 :goto_e3

    nop

    nop

    :cond_21
    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    :goto_d1
    return-void

    nop

    nop

    :goto_d2
    goto/32 :goto_85

    nop

    nop

    :goto_d3
    const/4 v9, 0x2

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    :goto_d4
    check-cast v5, Ldcc;

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_d5
    invoke-direct {p0}, Ldcf;->b1051a9d8893542362ad09051775f8f6m()V

    goto/32 :goto_59

    nop

    nop

    :goto_d6
    invoke-virtual {v5, v7}, Landroid/graphics/RenderNode;->setCameraDistance(F)Z

    :goto_d7
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_d8
    and-int/lit8 v5, v0, 0x1

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d9
    sget-object v8, Lcfn;->a:Lcfs;

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    :goto_da
    invoke-interface {v1, v5}, Ldbh;->j(F)V

    goto/32 :goto_72

    nop

    nop

    :goto_db
    iget-wide v7, p0, Ldcf;->l:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    :goto_dc
    if-nez v5, :cond_22

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_22
    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    :goto_dd
    and-int/2addr v5, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    :goto_de
    iget-object v5, p0, Ldcf;->m:Ldbh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    :goto_df
    iget p1, p1, Lcfp;->a:I

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_e0
    move v7, v3

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_e1
    iget-boolean v8, v7, Ldca;->a:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_e2
    goto/16 :goto_c8

    nop

    nop

    nop

    nop

    :goto_e3
    goto/32 :goto_b4

    nop

    nop

    :goto_e4
    iget v7, p1, Lcfp;->i:F

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e5
    and-int/lit8 v5, v0, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_e6
    iget-object v1, p0, Ldcf;->d:Luaz;

    nop

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    :goto_e7
    iget v6, p1, Lcfp;->d:F

    nop

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    nop

    :goto_e8
    iget-object v2, p0, Ldcf;->m:Ldbh;

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_e9
    iget-object v5, p0, Ldcf;->m:Ldbh;

    nop

    nop

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    nop

    :goto_ea
    invoke-interface {v1, v5}, Ldbh;->k(F)V

    :goto_eb
    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    :goto_ec
    invoke-virtual {v5, v7}, Landroid/graphics/RenderNode;->setAmbientShadowColor(I)Z

    :goto_ed
    goto/32 :goto_c2

    nop

    nop

    :goto_ee
    check-cast v5, Ldcc;

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    :goto_ef
    iget v6, p1, Lcfp;->c:F

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    :goto_f0
    if-nez v5, :cond_23

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    :cond_23
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_f1
    invoke-virtual {v5, v7}, Landroid/graphics/RenderNode;->setRotationZ(F)Z

    :goto_f2
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_f3
    goto/32 :goto_d2

    nop

    nop

    nop

    :goto_f4
    goto/32 :goto_b2

    nop

    nop

    nop

    :goto_f5
    iget-object v5, p0, Ldcf;->m:Ldbh;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_f6
    and-int/lit8 v5, v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_f7
    move v7, v4

    nop

    nop

    nop

    nop

    nop

    :goto_f8
    goto/32 :goto_55

    nop

    nop

    :goto_f9
    iget v7, p1, Lcfp;->f:F

    nop

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fa
    and-int/lit8 v5, v0, 0x4

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    :goto_fb
    check-cast v5, Ldcc;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_fc
    invoke-virtual {v5, v3, v7}, Landroid/graphics/RenderNode;->setUseCompositingLayer(ZLandroid/graphics/Paint;)Z

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fd
    mul-float/2addr v5, v7

    nop

    nop

    nop

    goto/32 :goto_da

    nop

    nop
.end method

.method public final invalidate()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    iget-boolean v0, p0, Ldcf;->e:Z

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    iget-boolean v0, p0, Ldcf;->g:Z

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, v0}, Ldcf;->33b3102b6558811a7b7629a1e8e59bd2m(Z)V

    :goto_4
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Lcxv;->invalidate()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v0, 0x1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Ldcf;->b:Lcxv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    :goto_9
    if-eqz v0, :cond_1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public final j(J)Z
    .locals 4

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

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

    :goto_3
    if-gez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, p1, p2}, Ldca;->e(J)Z

    move-result p0

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_5
    cmpg-float p1, v1, p1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6
    const-wide v1, 0xffffffffL

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Ldcf;->f:Ldca;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    return v3

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    int-to-float p0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_b
    if-ltz p2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    :goto_c
    iget-object v0, p0, Ldcf;->m:Ldbh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_d
    iget-object p2, p0, Ldcf;->m:Ldbh;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_e
    invoke-interface {v0}, Ldbh;->m()Z

    move-result v0

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_f
    if-gez p2, :cond_2

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {p2}, Ldbh;->f()I

    move-result p2

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

    :goto_11
    iget-object p0, p0, Ldcf;->m:Ldbh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_12
    return v3

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_18

    nop

    :goto_15
    int-to-float p2, p2

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_16
    long-to-int v2, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_17
    const v1, 0x5

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_18
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const v0, 0x10

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1b
    cmpg-float p2, v2, p2

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    cmpg-float p2, v2, p1

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

    :goto_1d
    invoke-interface {v0}, Ldbh;->l()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const/16 v2, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_1f
    if-nez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_7

    nop

    nop

    :goto_20
    if-ltz p0, :cond_5

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_5
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_21
    long-to-int v1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_22
    if-nez v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_23
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_c

    nop

    nop

    :goto_25
    and-long/2addr v1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_26
    invoke-interface {p0}, Ldbh;->c()I

    move-result p0

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

    :goto_27
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_28
    return p0

    nop

    :goto_29
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const/4 p0, 0x0

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_2b
    shr-long v2, p1, v2

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_2c
    cmpg-float p0, v1, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_2d
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v0, p0, Ldcf;->m:Ldbh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2f
    add-int v0, v0, v1

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

    :goto_30
    const/4 v3, 0x1

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final k()[F
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Ldcf;->m:Ldbh;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, p0}, Ldbw;->h(Ljava/lang/Object;)[F

    move-result-object p0

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    iget-object v0, p0, Ldcf;->j:Ldbw;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop
.end method
