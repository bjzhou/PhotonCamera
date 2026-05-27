.class public final Lgqq;
.super Ljava/lang/Object;


# instance fields
.field public a:Lklv;

.field public b:Lgya;

.field public c:Lkab;

.field public d:Lnou;

.field public e:Landroid/graphics/Rect;

.field public f:Ljava/lang/Long;

.field public g:Lgyq;

.field private final h:Lkpb;

.field private i:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Lkpb;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lgqq;->a:Lklv;

    sget-object v1, Lgya;->a:Lgya;

    iput-object v1, p0, Lgqq;->b:Lgya;

    sget-object v1, Lkab;->a:Lkab;

    iput-object v1, p0, Lgqq;->c:Lkab;

    iput-object v0, p0, Lgqq;->d:Lnou;

    iput-object v0, p0, Lgqq;->e:Landroid/graphics/Rect;

    iput-object v0, p0, Lgqq;->f:Ljava/lang/Long;

    iput-object v0, p0, Lgqq;->i:Ljava/lang/Long;

    sget-object v0, Lgyq;->a:Lgyq;

    iput-object v0, p0, Lgqq;->g:Lgyq;

    iput-object p1, p0, Lgqq;->h:Lkpb;

    invoke-interface {p1}, Lkpb;->e()Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lgqq;->e:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final a()Lgqr;
    .locals 15

    iget-object v0, p0, Lgqq;->f:Ljava/lang/Long;

    iget-object v1, p0, Lgqq;->i:Ljava/lang/Long;

    if-nez v0, :cond_0

    iget-object v0, p0, Lgqq;->h:Lkpb;

    invoke-interface {v0}, Lkpb;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :cond_0
    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Limw;->a(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :cond_1
    new-instance v14, Lgqr;

    iget-object v3, p0, Lgqq;->h:Lkpb;

    iget-object v4, p0, Lgqq;->b:Lgya;

    iget-object v5, p0, Lgqq;->a:Lklv;

    iget-object v6, p0, Lgqq;->c:Lkab;

    iget-object v7, p0, Lgqq;->d:Lnou;

    iget-object v2, p0, Lgqq;->e:Landroid/graphics/Rect;

    if-nez v2, :cond_2

    invoke-interface {v3}, Lkpb;->e()Landroid/graphics/Rect;

    move-result-object v2

    move-object v8, v2

    goto :goto_0

    :cond_2
    move-object v8, v2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    iget-object v13, p0, Lgqq;->g:Lgyq;

    move-object v2, v14

    invoke-direct/range {v2 .. v13}, Lgqr;-><init>(Lkpb;Lgya;Lklv;Lkab;Lnou;Landroid/graphics/Rect;JJLgyq;)V

    return-object v14
.end method

.method public final b(J)V
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lgqq;->i:Ljava/lang/Long;

    return-void
.end method
