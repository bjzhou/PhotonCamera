.class public final Lckm;
.super Ljwh;


# instance fields
.field private final a:Leal;


# direct methods
.method public constructor <init>(Ljvs;Ljvs;Lebl;Leal;)V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljvs;

    const/4 v1, 0x0

    iget-object v2, p3, Lebl;->b:Ljvs;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object p3, p3, Lebl;->c:Ljvk;

    aput-object p3, v0, v1

    const/4 p3, 0x2

    aput-object p1, v0, p3

    const/4 p1, 0x3

    aput-object p2, v0, p1

    invoke-static {v0}, Ljvw;->b([Ljvs;)Ljvs;

    move-result-object p1

    invoke-direct {p0, p1}, Ljwh;-><init>(Ljvs;)V

    iput-object p4, p0, Lckm;->a:Leal;

    return-void
.end method


# virtual methods
.method protected final synthetic d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x3

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v3, -0x40000000    # -2.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lckm;->a:Leal;

    iget v1, v0, Leal;->b:F

    iget v0, v0, Leal;->c:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v0, v1

    if-ltz v3, :cond_1

    goto :goto_0

    :cond_1
    sub-float p1, v1, p1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr p1, v0

    invoke-static {p1, v2}, Laax;->e(FF)F

    move-result v2

    :goto_0
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    const/high16 p1, -0x40800000    # -1.0f

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    goto :goto_1

    :cond_3
    :goto_1
    return-object v3
.end method
