.class public final Lcig;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcie;


# instance fields
.field public final a:Lcej;

.field public final b:Lchp;

.field public final c:Landroid/graphics/RenderNode;

.field public d:J

.field public e:Landroid/graphics/Matrix;

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public j:F

.field public k:J

.field public l:J

.field public m:F

.field public n:F

.field public o:Z

.field public p:I

.field private q:Z

.field private r:Z

.field private s:Z


# direct methods
.method public constructor <init>(Lcej;Lchp;)V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Lcig;->n:F

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    const v0, 0x1c

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2
    iput-object p1, p0, Lcig;->c:Landroid/graphics/RenderNode;

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

    :goto_3
    const/4 p2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_4
    const/high16 p1, 0x41000000    # 8.0f

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    new-instance p1, Landroid/graphics/RenderNode;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p1, p0, Lcig;->a:Lcej;

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_7
    const v1, 0x12

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

    :goto_8
    iput p1, p0, Lcig;->g:F

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput p2, p0, Lcig;->p:I

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

    :goto_a
    const-wide/16 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_c
    sget-wide v0, Lcel;->a:J

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-wide v0, p0, Lcig;->k:J

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput-wide v0, p0, Lcig;->d:J

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_f
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput p1, p0, Lcig;->f:F

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    :goto_12
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    :goto_14
    iput-wide v0, p0, Lcig;->l:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_15
    const/high16 p1, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_16
    invoke-direct {p1, p2}, Landroid/graphics/RenderNode;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {p1, p2}, Lcig;->c(Landroid/graphics/RenderNode;I)V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iput p1, p0, Lcig;->h:F

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

    :goto_1a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1b
    iput-object p2, p0, Lcig;->b:Lchp;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p1, p2}, Landroid/graphics/RenderNode;->setClipToBounds(Z)Z

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const-string p2, "graphicsLayer"

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_12

    nop

    nop

    :goto_1f
    goto/32 :goto_18

    nop

    nop
.end method

.method public static final c(Landroid/graphics/RenderNode;I)V
    .locals 3

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Landroid/graphics/RenderNode;->setHasOverlappingRendering(Z)Z

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, v1}, Landroid/graphics/RenderNode;->setHasOverlappingRendering(Z)Z

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0xa

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

    :goto_3
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, v0, v2}, Landroid/graphics/RenderNode;->setUseCompositingLayer(ZLandroid/graphics/Paint;)Z

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, v1, v2}, Landroid/graphics/RenderNode;->setUseCompositingLayer(ZLandroid/graphics/Paint;)Z

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {p1, v0}, La;->p(II)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_9
    invoke-static {p1, v1}, La;->p(II)Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_d
    if-eqz v1, :cond_0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0, v0}, Landroid/graphics/RenderNode;->setHasOverlappingRendering(Z)Z

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_10
    const/4 v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_11
    if-nez p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_1
    goto/32 :goto_5

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

    nop

    :goto_13
    goto/32 :goto_3

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0x5

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_16
    invoke-virtual {p0, v1, v2}, Landroid/graphics/RenderNode;->setUseCompositingLayer(ZLandroid/graphics/Paint;)Z

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    return-void

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1a

    nop

    :goto_1a
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop
.end method

.method private final da190e616797844b591057d0190e7728m()V
    .locals 4

    goto/32 :goto_23

    nop

    nop

    :goto_0
    const/4 v1, 0x1

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

    nop

    :goto_1
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_1d

    nop

    :goto_2
    if-ne v1, v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, v1}, Landroid/graphics/RenderNode;->setClipToOutline(Z)Z

    :goto_4
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-boolean v0, p0, Lcig;->s:Z

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    iget-boolean v0, p0, Lcig;->q:Z

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_8
    iput-boolean v1, p0, Lcig;->s:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_9
    move v3, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-boolean v3, p0, Lcig;->q:Z

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-boolean v0, p0, Lcig;->o:Z

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_c
    goto :goto_14

    nop

    nop

    :goto_d
    goto/32 :goto_13

    nop

    nop

    :goto_e
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1e

    nop

    nop

    :goto_10
    if-eqz v3, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iput-boolean v3, p0, Lcig;->r:Z

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_25

    nop

    nop

    :goto_13
    move v3, v2

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_15

    nop

    nop

    :goto_15
    if-nez v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_16
    if-ne v3, v0, :cond_6

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_6
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    move v1, v2

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_22

    nop

    nop

    :goto_19
    invoke-virtual {v0, v3}, Landroid/graphics/RenderNode;->setClipToBounds(Z)Z

    :goto_1a
    goto/32 :goto_6

    nop

    nop

    :goto_1b
    return-void

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    rem-int v0, v0, v1

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

    :goto_20
    iget-object p0, p0, Lcig;->c:Landroid/graphics/RenderNode;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_21
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-boolean v0, p0, Lcig;->r:Z

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const v0, 0x1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v0, p0, Lcig;->c:Landroid/graphics/RenderNode;

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

    nop

    :goto_25
    goto :goto_18

    nop

    :goto_26
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const v1, 0x13

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lcig;->da190e616797844b591057d0190e7728m()V

    goto/32 :goto_2

    nop

    nop

    :goto_1
    iput-boolean p1, p0, Lcig;->o:Z

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

    :goto_2
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final b(Landroid/graphics/Outline;)V
    .locals 1

    goto/32 :goto_7

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

    nop

    nop

    nop

    :goto_1
    if-nez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    :goto_2
    goto :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, p1}, Landroid/graphics/RenderNode;->setOutline(Landroid/graphics/Outline;)Z

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Lcig;->da190e616797844b591057d0190e7728m()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    iput-boolean p1, p0, Lcig;->q:Z

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lcig;->c:Landroid/graphics/RenderNode;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 p1, 0x1

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
.end method
