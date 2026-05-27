.class public final Lbib;
.super Lbhx;


# instance fields
.field private final e:Lblu;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lbhx;-><init>(Ljava/util/List;)V

    new-instance p1, Lblu;

    invoke-direct {p1}, Lblu;-><init>()V

    iput-object p1, p0, Lbib;->e:Lblu;

    return-void
.end method


# virtual methods
.method public final synthetic f(Lblt;F)Ljava/lang/Object;
    .locals 5

    iget-object v0, p1, Lblt;->b:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v1, p1, Lblt;->c:Ljava/lang/Object;

    if-eqz v1, :cond_1

    check-cast v0, Lblu;

    check-cast v1, Lblu;

    iget-object v2, p0, Lbib;->d:Lbkc;

    if-eqz v2, :cond_0

    iget p2, p1, Lblt;->g:F

    iget-object p1, p1, Lblt;->h:Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    invoke-virtual {p0}, Lbhs;->c()F

    iget-object p1, v2, Lbkc;->a:Ljava/lang/Object;

    check-cast p1, Lblu;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lbib;->e:Lblu;

    iget v2, v0, Lblu;->a:F

    iget v3, v1, Lblu;->a:F

    sget-object v4, Lbln;->a:Landroid/graphics/PointF;

    sub-float/2addr v3, v2

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    iget v0, v0, Lblu;->b:F

    iget v1, v1, Lblu;->b:F

    sub-float/2addr v1, v0

    mul-float p2, p2, v1

    add-float/2addr v0, p2

    iput v2, p1, Lblu;->a:F

    iput v0, p1, Lblu;->b:F

    iget-object p1, p0, Lbib;->e:Lblu;

    :goto_0
    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Missing values for keyframe."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
