.class public final Lbyb;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lbpn;

.field public final b:Ljava/util/List;

.field public final c:Lbpd;

.field public d:Z

.field public e:Lbxz;

.field public f:Z

.field public g:Lbxz;

.field public h:Landroid/graphics/Bitmap;

.field public i:Lbxz;

.field public j:I

.field public k:I

.field public l:I

.field private final m:Landroid/os/Handler;

.field private final n:Lbsw;

.field private o:Z

.field private p:Lbpb;


# direct methods
.method public constructor <init>(Lbol;Lbpn;IILbqj;Landroid/graphics/Bitmap;)V
    .locals 3

    iget-object v0, p1, Lbol;->a:Lbsw;

    invoke-virtual {p1}, Lbol;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lbol;->c(Landroid/content/Context;)Lbpd;

    move-result-object v1

    invoke-virtual {p1}, Lbol;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lbol;->c(Landroid/content/Context;)Lbpd;

    move-result-object p1

    invoke-virtual {p1}, Lbpd;->b()Lbpb;

    move-result-object p1

    sget-object v2, Lbry;->a:Lbry;

    invoke-static {v2}, Lbzp;->c(Lbry;)Lbzp;

    move-result-object v2

    invoke-virtual {v2}, Lbzg;->M()Lbzg;

    move-result-object v2

    check-cast v2, Lbzp;

    invoke-virtual {v2}, Lbzg;->L()Lbzg;

    move-result-object v2

    check-cast v2, Lbzp;

    invoke-virtual {v2, p3, p4}, Lbzg;->u(II)Lbzg;

    move-result-object p3

    invoke-virtual {p1, p3}, Lbpb;->b(Lbzg;)Lbpb;

    move-result-object p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lbyb;->b:Ljava/util/List;

    iput-object v1, p0, Lbyb;->c:Lbpd;

    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    new-instance v1, Ljgq;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Ljgq;-><init>(Lbyb;I)V

    invoke-direct {p3, p4, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lbyb;->n:Lbsw;

    iput-object p3, p0, Lbyb;->m:Landroid/os/Handler;

    iput-object p1, p0, Lbyb;->p:Lbpb;

    iput-object p2, p0, Lbyb;->a:Lbpn;

    invoke-virtual {p0, p5, p6}, Lbyb;->e(Lbqj;Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method final a()I
    .locals 1

    iget-object v0, p0, Lbyb;->a:Lbpn;

    check-cast v0, Lbpr;

    iget-object v0, v0, Lbpr;->f:Lbpp;

    iget v0, v0, Lbpp;->c:I

    return v0
.end method

.method public final b()V
    .locals 5

    iget-boolean v0, p0, Lbyb;->d:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lbyb;->o:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lbyb;->i:Lbxz;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lbyb;->i:Lbxz;

    invoke-virtual {p0, v0}, Lbyb;->c(Lbxz;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbyb;->o:Z

    iget-object v0, p0, Lbyb;->a:Lbpn;

    check-cast v0, Lbpr;

    iget-object v1, v0, Lbpr;->f:Lbpp;

    iget v2, v1, Lbpp;->c:I

    const/4 v3, 0x0

    if-lez v2, :cond_4

    iget v0, v0, Lbpr;->e:I

    if-gez v0, :cond_2

    goto :goto_0

    :cond_2
    if-ge v0, v2, :cond_3

    iget-object v1, v1, Lbpp;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbpo;

    iget v3, v0, Lbpo;->i:I

    goto :goto_0

    :cond_3
    const/4 v3, -0x1

    goto :goto_0

    :cond_4
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    int-to-long v2, v3

    add-long/2addr v0, v2

    iget-object v2, p0, Lbyb;->a:Lbpn;

    invoke-interface {v2}, Lbpn;->b()V

    new-instance v2, Lbxz;

    iget-object v3, p0, Lbyb;->m:Landroid/os/Handler;

    iget-object v4, p0, Lbyb;->a:Lbpn;

    check-cast v4, Lbpr;

    iget v4, v4, Lbpr;->e:I

    invoke-direct {v2, v3, v4, v0, v1}, Lbxz;-><init>(Landroid/os/Handler;IJ)V

    iput-object v2, p0, Lbyb;->g:Lbxz;

    iget-object v0, p0, Lbyb;->p:Lbpb;

    new-instance v1, Lcah;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v1, v2}, Lcah;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lbzp;

    invoke-direct {v2}, Lbzp;-><init>()V

    invoke-virtual {v2, v1}, Lbzg;->z(Lbqb;)Lbzg;

    move-result-object v1

    check-cast v1, Lbzp;

    invoke-virtual {v0, v1}, Lbpb;->b(Lbzg;)Lbpb;

    move-result-object v0

    iget-object v1, p0, Lbyb;->a:Lbpn;

    invoke-virtual {v0, v1}, Lbpb;->f(Ljava/lang/Object;)Lbpb;

    move-result-object v0

    iget-object v1, p0, Lbyb;->g:Lbxz;

    invoke-virtual {v0, v1}, Lbpb;->l(Lbzz;)V

    return-void

    :cond_5
    :goto_1
    return-void
.end method

.method public final c(Lbxz;)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbyb;->o:Z

    iget-boolean v0, p0, Lbyb;->f:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbyb;->m:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    iget-boolean v0, p0, Lbyb;->d:Z

    if-eqz v0, :cond_3

    iget-object v0, p1, Lbxz;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lbyb;->d()V

    iget-object v0, p0, Lbyb;->e:Lbxz;

    iput-object p1, p0, Lbyb;->e:Lbxz;

    iget-object p1, p0, Lbyb;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_1

    iget-object v2, p0, Lbyb;->b:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbya;

    invoke-interface {v2}, Lbya;->c()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    iget-object p1, p0, Lbyb;->m:Landroid/os/Handler;

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    invoke-virtual {p0}, Lbyb;->b()V

    return-void

    :cond_3
    iput-object p1, p0, Lbyb;->i:Lbxz;

    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lbyb;->h:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lbyb;->n:Lbsw;

    invoke-interface {v1, v0}, Lbsw;->d(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lbyb;->h:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method final e(Lbqj;Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-static {p1}, Lbze;->v(Ljava/lang/Object;)V

    invoke-static {p2}, Lbze;->v(Ljava/lang/Object;)V

    iput-object p2, p0, Lbyb;->h:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lbyb;->p:Lbpb;

    new-instance v1, Lbzp;

    invoke-direct {v1}, Lbzp;-><init>()V

    invoke-virtual {v1, p1}, Lbzg;->B(Lbqj;)Lbzg;

    move-result-object p1

    invoke-virtual {v0, p1}, Lbpb;->b(Lbzg;)Lbpb;

    move-result-object p1

    iput-object p1, p0, Lbyb;->p:Lbpb;

    invoke-static {p2}, Lcaw;->a(Landroid/graphics/Bitmap;)I

    move-result p1

    iput p1, p0, Lbyb;->j:I

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lbyb;->k:I

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lbyb;->l:I

    return-void
.end method

.method public final f()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbyb;->d:Z

    return-void
.end method
