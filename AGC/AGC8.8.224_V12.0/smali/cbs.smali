.class public final Lcbs;
.super Ljava/lang/Object;

# interfaces
.implements Lcbr;


# instance fields
.field public final a:Ljvs;

.field public final b:Lfbz;

.field private final c:Likh;

.field private final d:Ljvs;

.field private final e:Lcbi;

.field private final f:Z

.field private final g:Lhyy;


# direct methods
.method public constructor <init>(Likh;Lhyy;Ljvs;Ljvs;Lfbz;ZLcbi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcbs;->c:Likh;

    iput-object p2, p0, Lcbs;->g:Lhyy;

    iput-object p3, p0, Lcbs;->a:Ljvs;

    iput-object p4, p0, Lcbs;->d:Ljvs;

    iput-object p5, p0, Lcbs;->b:Lfbz;

    iput-object p7, p0, Lcbs;->e:Lcbi;

    iput-boolean p6, p0, Lcbs;->f:Z

    return-void
.end method


# virtual methods
.method public final a(Ljuf;Lklv;Landroid/graphics/PointF;Lccv;)Lccx;
    .locals 4

    iget-object v0, p0, Lcbs;->g:Lhyy;

    invoke-virtual {v0}, Lhyy;->a()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcbs;->c:Likh;

    sget-object v2, Lklv;->a:Lklv;

    invoke-virtual {p2, v2}, Lklv;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v2, 0x1

    if-nez p2, :cond_1

    iget-boolean p2, p0, Lcbs;->f:Z

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcbs;->d:Ljvs;

    invoke-interface {p2}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v1, p3, v0, v3}, Likh;->a(Landroid/graphics/PointF;Landroid/graphics/RectF;Z)Landroid/graphics/PointF;

    move-result-object p2

    iget-object v1, p0, Lcbs;->e:Lcbi;

    new-instance v3, Lbkc;

    invoke-direct {v3, p2}, Lbkc;-><init>(Landroid/graphics/PointF;)V

    invoke-interface {v1, v3}, Lcbi;->bp(Lbkc;)Lccx;

    move-result-object p2

    iget-object p4, p4, Lccv;->a:Ljwb;

    new-instance v1, Lctn;

    invoke-direct {v1, p0, p3, v0, v2}, Lctn;-><init>(Lcbs;Landroid/graphics/PointF;Landroid/graphics/RectF;I)V

    sget-object p3, Lnnv;->a:Lnnv;

    invoke-interface {p4, v1, p3}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljuf;->d(Lkad;)V

    return-object p2
.end method
