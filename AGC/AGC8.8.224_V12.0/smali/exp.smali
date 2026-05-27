.class public final Lexp;
.super Ljava/lang/Object;

# interfaces
.implements Lexn;


# instance fields
.field private a:Z

.field private final b:Ljava/util/ArrayList;

.field private final c:[F


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lexp;->a:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lexp;->b:Ljava/util/ArrayList;

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lexp;->c:[F

    iput-boolean p1, p0, Lexp;->a:Z

    const/4 p1, 0x0

    invoke-static {v0, p1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method


# virtual methods
.method public final a(FLexi;[FII)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    iget-object v2, v1, Lexp;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-boolean v3, v1, Lexp;->a:Z

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    if-eq v6, v3, :cond_0

    const/4 v13, 0x0

    goto :goto_0

    :cond_0
    const/high16 v13, 0x3f800000    # 1.0f

    :goto_0
    if-eq v6, v3, :cond_1

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    :goto_1
    const/4 v3, 0x0

    const/4 v7, -0x2

    const/4 v14, -0x2

    const/4 v15, 0x0

    :goto_2
    const/4 v7, 0x2

    if-gt v14, v7, :cond_3

    if-eqz v14, :cond_2

    const/4 v8, 0x0

    const/high16 v7, 0x41a00000    # 20.0f

    mul-float v7, v7, p1

    const/16 v9, 0x10

    new-array v12, v9, [F

    invoke-static {v12, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    int-to-float v9, v14

    mul-float v9, v9, v7

    const/16 v16, 0x0

    move-object v7, v12

    move v10, v4

    move v11, v13

    move-object v6, v12

    move/from16 v12, v16

    invoke-static/range {v7 .. v12}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    add-int/lit8 v7, v15, 0x1

    invoke-virtual {v2, v15, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move v15, v7

    :cond_2
    add-int/lit8 v14, v14, 0x1

    const/4 v6, 0x1

    goto :goto_2

    :cond_3
    iget-object v2, v1, Lexp;->c:[F

    iget-object v4, v1, Lexp;->b:Ljava/util/ArrayList;

    iget-object v6, v0, Lexi;->g:Lexu;

    if-eqz v6, :cond_6

    iget-object v7, v0, Lexi;->e:Lewl;

    if-nez v7, :cond_4

    goto :goto_5

    :cond_4
    invoke-virtual {v6}, Lewj;->c()V

    iget-object v6, v0, Lexi;->g:Lexu;

    invoke-virtual {v6, v5}, Lexu;->j(F)V

    const/4 v5, 0x0

    :goto_3
    :try_start_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_6

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v10, v6

    check-cast v10, [F

    iget-object v12, v0, Lexi;->e:Lewl;

    iget-object v6, v0, Lexi;->k:[F

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v8, v2

    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v13, v0, Lexi;->j:[F

    const/4 v14, 0x0

    iget-object v15, v0, Lexi;->k:[F

    const/16 v16, 0x0

    iget-object v6, v0, Lexi;->i:[F

    const/16 v18, 0x0

    move-object/from16 v17, v6

    invoke-static/range {v13 .. v18}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    iget-object v6, v0, Lexi;->j:[F

    invoke-static {v6}, Lexi;->c([F)V

    iget-object v6, v0, Lexi;->j:[F

    aget v7, v6, v3

    iget v8, v0, Lexi;->m:F

    mul-float v7, v7, v8

    add-float/2addr v7, v8

    const/4 v8, 0x1

    aget v6, v6, v8

    iget v9, v0, Lexi;->n:F

    mul-float v6, v6, v9

    add-float/2addr v6, v9

    if-eqz v12, :cond_5

    const v9, 0x3ecccccd    # 0.4f

    move-object/from16 v10, p3

    invoke-virtual {v12, v10, v7, v6, v9}, Lewl;->f([FFFF)V
    :try_end_0
    .catch Lewi; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :cond_5
    move-object/from16 v10, p3

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lewi;->printStackTrace()V

    return-void

    :cond_6
    :goto_5
    return-void
.end method
