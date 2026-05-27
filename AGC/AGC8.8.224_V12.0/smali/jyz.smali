.class public final Ljyz;
.super Ljava/lang/Object;

# interfaces
.implements Ljyd;


# instance fields
.field public final a:Lnow;

.field public final b:Lkbc;

.field public c:Ljwx;

.field public d:Ljxa;

.field public e:Ljxr;

.field public f:I

.field public g:I

.field public h:I

.field public final i:Landroid/os/Handler;

.field public j:I

.field public k:J

.field public l:Lnou;

.field public m:I

.field public n:Ljxv;

.field public final o:Ljava/util/List;

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Lnou;

.field public u:Landroid/view/Surface;

.field public v:Ljye;

.field public w:Landroid/media/MediaCodec$Callback;

.field public x:Lkmx;

.field public y:I

.field private z:Lnou;


# direct methods
.method public constructor <init>(Lnow;Landroid/os/Handler;Lkbc;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljxr;->a:Ljxr;

    iput-object v0, p0, Ljyz;->e:Ljxr;

    const/4 v0, 0x1

    iput v0, p0, Ljyz;->g:I

    const/4 v0, 0x3

    iput v0, p0, Ljyz;->h:I

    const/4 v0, 0x6

    iput v0, p0, Ljyz;->y:I

    const/4 v0, 0x0

    iput v0, p0, Ljyz;->j:I

    const-wide v1, 0xee6b2800L

    iput-wide v1, p0, Ljyz;->k:J

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v1

    iput-object v1, p0, Ljyz;->l:Lnou;

    iput v0, p0, Ljyz;->m:I

    new-instance v1, Ljxq;

    invoke-direct {v1}, Ljxq;-><init>()V

    iput-object v1, p0, Ljyz;->n:Ljxv;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ljyz;->o:Ljava/util/List;

    iput-boolean v0, p0, Ljyz;->p:Z

    iput-boolean v0, p0, Ljyz;->q:Z

    iput-boolean v0, p0, Ljyz;->r:Z

    iput-boolean v0, p0, Ljyz;->s:Z

    sget-object v0, Lmpx;->a:Lmpx;

    invoke-static {v0}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v0

    iput-object v0, p0, Ljyz;->t:Lnou;

    iput-object p1, p0, Ljyz;->a:Lnow;

    iput-object p2, p0, Ljyz;->i:Landroid/os/Handler;

    iput-object p3, p0, Ljyz;->b:Lkbc;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljyc;
    .locals 2

    iget-object v0, p0, Ljyz;->z:Lnou;

    if-eqz v0, :cond_0

    new-instance v0, Ljyy;

    invoke-direct {v0, p0}, Ljyy;-><init>(Ljyz;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Either output video file path or descriptor is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final synthetic b(Ljye;)Ljyd;
    .locals 0

    iput-object p1, p0, Ljyz;->v:Ljye;

    return-object p0
.end method

.method public final c(Ljwx;)V
    .locals 0

    iput-object p1, p0, Ljyz;->c:Ljwx;

    return-void
.end method

.method public final d(I)V
    .locals 0

    iput p1, p0, Ljyz;->y:I

    return-void
.end method

.method public final e(Ljxr;)V
    .locals 0

    iput-object p1, p0, Ljyz;->e:Ljxr;

    return-void
.end method

.method public final f(I)V
    .locals 0

    iput p1, p0, Ljyz;->f:I

    return-void
.end method

.method public final g(Landroid/view/Surface;)V
    .locals 2

    iget-object v0, p0, Ljyz;->e:Ljxr;

    sget-object v1, Ljxr;->a:Ljxr;

    if-eq v0, v1, :cond_0

    const-string v0, "VidRMedCodBdr"

    const-string v1, "colorformat will be set to SURFACE as a surface is provided"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Ljxr;->a:Ljxr;

    iput-object v0, p0, Ljyz;->e:Ljxr;

    :cond_0
    iput-object p1, p0, Ljyz;->u:Landroid/view/Surface;

    return-void
.end method

.method public final h(Landroid/location/Location;)V
    .locals 0

    invoke-static {p1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p1

    invoke-static {p1}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object p1

    iput-object p1, p0, Ljyz;->t:Lnou;

    return-void
.end method

.method public final i(Lnou;)V
    .locals 0

    iput-object p1, p0, Ljyz;->t:Lnou;

    return-void
.end method

.method public final j(I)V
    .locals 0

    iput p1, p0, Ljyz;->j:I

    return-void
.end method

.method public final k(J)V
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object p1

    iput-object p1, p0, Ljyz;->l:Lnou;

    return-void
.end method

.method public final l(J)V
    .locals 0

    iput-wide p1, p0, Ljyz;->k:J

    return-void
.end method

.method public final m(Landroid/media/MediaCodec$Callback;)V
    .locals 0

    iput-object p1, p0, Ljyz;->w:Landroid/media/MediaCodec$Callback;

    return-void
.end method

.method public final n(Z)V
    .locals 0

    iput-boolean p1, p0, Ljyz;->q:Z

    return-void
.end method

.method public final o(I)V
    .locals 0

    iput p1, p0, Ljyz;->m:I

    return-void
.end method

.method public final p(Lnou;)V
    .locals 0

    iput-object p1, p0, Ljyz;->z:Lnou;

    return-void
.end method

.method public final q(Ljava/io/FileDescriptor;)V
    .locals 0

    invoke-static {p1}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object p1

    iput-object p1, p0, Ljyz;->z:Lnou;

    return-void
.end method

.method public final r(Ljxa;)V
    .locals 0

    iput-object p1, p0, Ljyz;->d:Ljxa;

    return-void
.end method

.method public final s(Z)V
    .locals 0

    iput-boolean p1, p0, Ljyz;->r:Z

    return-void
.end method

.method public final t()Lnou;
    .locals 1

    iget-object v0, p0, Ljyz;->z:Lnou;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v0

    return-object v0
.end method
