.class public final Lbkj;
.super Ljava/lang/Object;

# interfaces
.implements Lble;


# static fields
.field public static final a:Lbkj;

.field public static final b:Lbkj;

.field public static final c:Lbkj;

.field public static final d:Lbkj;

.field public static final e:Lbkj;

.field public static final f:Lbkj;


# instance fields
.field private final synthetic g:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbkj;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lbkj;-><init>(I)V

    sput-object v0, Lbkj;->f:Lbkj;

    new-instance v0, Lbkj;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lbkj;-><init>(I)V

    sput-object v0, Lbkj;->e:Lbkj;

    new-instance v0, Lbkj;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lbkj;-><init>(I)V

    sput-object v0, Lbkj;->d:Lbkj;

    new-instance v0, Lbkj;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lbkj;-><init>(I)V

    sput-object v0, Lbkj;->c:Lbkj;

    new-instance v0, Lbkj;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lbkj;-><init>(I)V

    sput-object v0, Lbkj;->b:Lbkj;

    new-instance v0, Lbkj;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbkj;-><init>(I)V

    sput-object v0, Lbkj;->a:Lbkj;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    iput p1, p0, Lbkj;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lblh;F)Ljava/lang/Object;
    .locals 11

    iget v0, p0, Lbkj;->g:I

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Lblh;->q()I

    move-result v0

    if-ne v0, v3, :cond_9

    const/4 v2, 0x1

    goto/16 :goto_5

    :pswitch_0
    invoke-virtual {p1}, Lblh;->q()I

    move-result v0

    if-ne v0, v3, :cond_0

    invoke-static {p1, p2}, Lbkp;->c(Lblh;F)Landroid/graphics/PointF;

    move-result-object p1

    goto :goto_1

    :cond_0
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    invoke-static {p1, p2}, Lbkp;->c(Lblh;F)Landroid/graphics/PointF;

    move-result-object p1

    goto :goto_1

    :cond_1
    if-ne v0, v1, :cond_3

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Lblh;->a()D

    move-result-wide v1

    double-to-float v1, v1

    mul-float v1, v1, p2

    invoke-virtual {p1}, Lblh;->a()D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v2, v2, p2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    :goto_0
    invoke-virtual {p1}, Lblh;->o()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lblh;->n()V

    goto :goto_0

    :cond_2
    move-object p1, v0

    :goto_1
    return-object p1

    :cond_3
    invoke-static {v0}, Lbze;->M(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot convert json to point. Next token is "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_1
    invoke-static {p1, p2}, Lbkp;->c(Lblh;F)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-static {p1}, Lbkp;->a(Lblh;)F

    move-result p1

    mul-float p1, p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-virtual {p1}, Lblh;->q()I

    move-result p2

    if-ne p2, v3, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    :goto_2
    if-eqz v2, :cond_5

    invoke-virtual {p1}, Lblh;->h()V

    :cond_5
    invoke-virtual {p1}, Lblh;->a()D

    move-result-wide v3

    invoke-virtual {p1}, Lblh;->a()D

    move-result-wide v5

    invoke-virtual {p1}, Lblh;->a()D

    move-result-wide v7

    invoke-virtual {p1}, Lblh;->q()I

    move-result p2

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    if-ne p2, v1, :cond_6

    invoke-virtual {p1}, Lblh;->a()D

    move-result-wide v0

    goto :goto_3

    :cond_6
    move-wide v0, v9

    :goto_3
    if-eqz v2, :cond_7

    invoke-virtual {p1}, Lblh;->j()V

    :cond_7
    cmpg-double p1, v3, v9

    if-gtz p1, :cond_8

    cmpg-double p1, v5, v9

    if-gtz p1, :cond_8

    cmpg-double p1, v7, v9

    if-gtz p1, :cond_8

    const-wide p1, 0x406fe00000000000L    # 255.0

    mul-double v3, v3, p1

    mul-double v5, v5, p1

    mul-double v7, v7, p1

    cmpg-double v2, v0, v9

    if-gtz v2, :cond_8

    mul-double v0, v0, p1

    goto :goto_4

    :cond_8
    :goto_4
    double-to-int p1, v0

    double-to-int p2, v3

    double-to-int v0, v5

    double-to-int v1, v7

    invoke-static {p1, p2, v0, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_4
    invoke-static {p1}, Lbkp;->a(Lblh;)F

    move-result p1

    mul-float p1, p1, p2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :cond_9
    :goto_5
    if-eqz v2, :cond_a

    invoke-virtual {p1}, Lblh;->h()V

    :cond_a
    invoke-virtual {p1}, Lblh;->a()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p1}, Lblh;->a()D

    move-result-wide v3

    double-to-float v1, v3

    :goto_6
    invoke-virtual {p1}, Lblh;->o()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {p1}, Lblh;->n()V

    goto :goto_6

    :cond_b
    if-eqz v2, :cond_c

    invoke-virtual {p1}, Lblh;->j()V

    :cond_c
    const/high16 p1, 0x42c80000    # 100.0f

    div-float/2addr v0, p1

    mul-float v0, v0, p2

    div-float/2addr v1, p1

    mul-float v1, v1, p2

    new-instance p1, Lblu;

    invoke-direct {p1, v0, v1}, Lblu;-><init>(FF)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
