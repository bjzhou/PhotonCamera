.class public final Lgaz;
.super Ljwh;


# instance fields
.field public final a:Z

.field public final b:Z

.field private final c:Lebi;

.field private final d:Z

.field private final e:I


# direct methods
.method public constructor <init>(Ljvs;Ljvs;Lebi;Ldhi;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljvs;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    invoke-static {v0}, Ljvw;->b([Ljvs;)Ljvs;

    move-result-object p2

    invoke-direct {p0, p2}, Ljwh;-><init>(Ljvs;)V

    iput-object p3, p0, Lgaz;->c:Lebi;

    iget p2, p3, Lebi;->b:I

    iget v0, p3, Lebi;->c:I

    if-eq p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lgaz;->a:Z

    sget-object p2, Ldhg;->d:Ldhj;

    invoke-interface {p4, p2}, Ldhi;->l(Ldhj;)Z

    move-result p2

    if-nez p2, :cond_2

    sget-object p2, Ldhg;->n:Ldhj;

    invoke-interface {p4, p2}, Ldhi;->l(Ldhj;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lgaz;->b:Z

    iget p1, p3, Lebi;->b:I

    iput p1, p0, Lgaz;->e:I

    sget-object p1, Ldhg;->e:Ldhj;

    invoke-interface {p4, p1}, Ldhi;->l(Ldhj;)Z

    move-result p1

    iput-boolean p1, p0, Lgaz;->d:Z

    return-void
.end method


# virtual methods
.method protected final bridge synthetic d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lefz;

    iget v1, p0, Lgaz;->e:I

    iget-boolean v2, p0, Lgaz;->a:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lgaz;->c:Lebi;

    iget v1, v0, Lebi;->c:I

    goto :goto_0

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lgaz;->b:Z

    if-eqz v0, :cond_2

    sget-object v0, Lefz;->a:Lefz;

    if-eq p1, v0, :cond_2

    iget-boolean v0, p0, Lgaz;->d:Z

    const/high16 v2, 0x3f000000    # 0.5f

    if-eqz v0, :cond_1

    sget-object v0, Lefz;->b:Lefz;

    invoke-virtual {p1, v0}, Lefz;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/high16 v2, 0x3f400000    # 0.75f

    goto :goto_1

    :cond_1
    :goto_1
    int-to-float p1, v1

    mul-float p1, p1, v2

    float-to-int v1, p1

    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
