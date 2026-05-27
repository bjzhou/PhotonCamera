.class public final Leix;
.super Ljava/lang/Object;

# interfaces
.implements Leiq;


# instance fields
.field private final a:[F

.field private b:Lele;

.field private final c:[F

.field private d:I

.field private e:[F

.field private final f:Leia;

.field private final g:Leir;

.field private final h:Lgzm;

.field private i:Lhxs;


# direct methods
.method public constructor <init>(Leir;Leia;Lgzm;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Leix;->a:[F

    const/4 v2, 0x3

    new-array v2, v2, [F

    iput-object v2, p0, Leix;->c:[F

    sget-object v2, Lhxs;->a:Lhxs;

    iput-object v2, p0, Leix;->i:Lhxs;

    iput-object p2, p0, Leix;->f:Leia;

    iput-object p1, p0, Leix;->g:Leir;

    iput-object p3, p0, Leix;->h:Lgzm;

    new-instance p1, Lele;

    invoke-direct {p1}, Lele;-><init>()V

    iput-object p1, p0, Leix;->b:Lele;

    iget-object p1, p1, Lele;->a:[F

    const/4 p2, 0x0

    invoke-static {v1, p2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Leix;->b:Lele;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lele;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Leix;->b:Lele;

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 13

    iget-object v0, p0, Leix;->h:Lgzm;

    sget-object v1, Lgzd;->d:Lgzs;

    invoke-interface {v0, v1}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lhxs;->a(I)Lhxs;

    move-result-object v0

    iget-object v1, p0, Leix;->i:Lhxs;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v0, :cond_0

    goto :goto_1

    :cond_0
    iput-object v0, p0, Leix;->i:Lhxs;

    invoke-virtual {v0}, Lhxs;->ordinal()I

    move-result v0

    const/4 v1, 0x2

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput v1, p0, Leix;->d:I

    iget-object v0, p0, Leix;->c:[F

    const v1, 0x3ec3910d

    aput v1, v0, v2

    const v1, 0x3f1e377a

    aput v1, v0, v3

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x3

    iput v0, p0, Leix;->d:I

    iget-object v0, p0, Leix;->c:[F

    const/high16 v4, 0x3e800000    # 0.25f

    aput v4, v0, v2

    const/high16 v4, 0x3f000000    # 0.5f

    aput v4, v0, v3

    const/high16 v4, 0x3f400000    # 0.75f

    aput v4, v0, v1

    goto :goto_0

    :pswitch_2
    iput v1, p0, Leix;->d:I

    iget-object v0, p0, Leix;->c:[F

    const v1, 0x3eaaaaab

    aput v1, v0, v2

    const v1, 0x3f2aaaab

    aput v1, v0, v3

    goto :goto_0

    :pswitch_3
    iput v2, p0, Leix;->d:I

    goto :goto_1

    :goto_0
    iget v0, p0, Leix;->d:I

    mul-int/lit8 v0, v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Leix;->e:[F

    :goto_1
    iget-object v0, p0, Leix;->b:Lele;

    if-eqz v0, :cond_4

    iget v0, p0, Leix;->d:I

    if-eqz v0, :cond_4

    iget-object v0, p0, Leix;->f:Leia;

    invoke-virtual {v0}, Leia;->b()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_4

    :cond_1
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    iget-object v0, p0, Leix;->g:Leir;

    iget-boolean v1, v0, Leir;->h:Z

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x40000000    # 2.0f

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    :goto_2
    iget v1, p0, Leix;->d:I

    if-ge v2, v1, :cond_3

    iget-object v1, p0, Leix;->g:Leir;

    iget v1, v1, Leir;->d:F

    div-float v6, v1, v5

    iget-object v7, p0, Leix;->c:[F

    aget v8, v7, v2

    mul-float v8, v8, v1

    iget-object v9, p0, Leix;->e:[F

    add-int/lit8 v10, v0, 0x1

    sub-float v8, v6, v8

    aput v8, v9, v0

    aput v4, v9, v10

    add-int/2addr v10, v3

    aput v8, v9, v10

    add-int/2addr v10, v3

    const/high16 v0, -0x40800000    # -1.0f

    aput v0, v9, v10

    aget v7, v7, v2

    add-float/2addr v7, v7

    neg-float v1, v1

    add-int/2addr v10, v3

    div-float/2addr v1, v5

    aput v1, v9, v10

    add-int/2addr v10, v3

    add-float/2addr v7, v0

    aput v7, v9, v10

    add-int/2addr v10, v3

    aput v6, v9, v10

    add-int/2addr v10, v3

    aput v7, v9, v10

    add-int/lit8 v0, v10, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    iget v0, v0, Leir;->a:F

    neg-float v1, v0

    sub-float v6, v0, v1

    const/4 v7, 0x0

    :goto_3
    iget v8, p0, Leix;->d:I

    if-ge v2, v8, :cond_3

    iget-object v8, p0, Leix;->c:[F

    aget v9, v8, v2

    mul-float v9, v9, v6

    add-float/2addr v9, v1

    iget-object v10, p0, Leix;->e:[F

    add-int/lit8 v11, v7, 0x1

    aput v9, v10, v7

    iget-object v7, p0, Leix;->g:Leir;

    iget v7, v7, Leir;->e:F

    div-float v12, v7, v5

    aput v12, v10, v11

    add-int/2addr v11, v3

    aput v9, v10, v11

    neg-float v9, v7

    add-int/2addr v11, v3

    div-float/2addr v9, v5

    aput v9, v10, v11

    aget v8, v8, v2

    mul-float v7, v7, v8

    add-int/2addr v11, v3

    aput v1, v10, v11

    add-int/2addr v11, v3

    sub-float/2addr v12, v7

    aput v12, v10, v11

    add-int/2addr v11, v3

    aput v0, v10, v11

    add-int/2addr v11, v3

    aput v12, v10, v11

    add-int/lit8 v7, v11, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    iget-object v0, p0, Leix;->b:Lele;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Leix;->e:[F

    invoke-virtual {v0, v1, v4}, Lele;->c([FF)V

    iget-object v0, p0, Leix;->b:Lele;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lele;->b()V

    return-void

    :cond_4
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(II)V
    .locals 1

    iget-object v0, p0, Leix;->b:Lele;

    if-eqz v0, :cond_0

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {v0, p1, p2}, Lele;->d(FF)V

    :cond_0
    return-void
.end method
