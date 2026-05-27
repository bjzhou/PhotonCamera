.class public final Lgcb;
.super Ljwh;


# direct methods
.method public constructor <init>(Ljvs;Ljvs;Ljvs;Ljvs;Ljvs;Ljvs;)V
    .locals 2

    const/4 v0, 0x6

    new-array v0, v0, [Ljvs;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p3, v0, p1

    const/4 p1, 0x2

    aput-object p4, v0, p1

    const/4 p1, 0x3

    aput-object p5, v0, p1

    const/4 p1, 0x4

    aput-object p2, v0, p1

    const/4 p1, 0x5

    aput-object p6, v0, p1

    invoke-static {v0}, Ljvw;->b([Ljvs;)Ljvs;

    move-result-object p1

    invoke-direct {p0, p1}, Ljwh;-><init>(Ljvs;)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgcc;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x3

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/4 v4, 0x4

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v5, 0x5

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez v1, :cond_1

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v2, v2, v1

    if-nez v2, :cond_1

    cmpl-float v1, v3, v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez v4, :cond_1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    :goto_0
    sget-object p1, Lgcc;->b:Lgcc;

    return-object p1
.end method
