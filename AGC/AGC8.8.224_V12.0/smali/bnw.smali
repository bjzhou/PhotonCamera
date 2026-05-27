.class public abstract Lbnw;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lboc;


# instance fields
.field protected final d:Ljava/util/Map;

.field protected final e:Ljava/util/List;

.field protected final f:Ljava/util/List;

.field protected g:Z

.field protected h:I

.field protected i:I

.field protected j:I

.field protected k:Lbob;

.field public l:I

.field protected m:Lbob;

.field protected n:B

.field protected o:I

.field protected p:F

.field public q:I

.field public r:Lbnl;

.field public s:Lbnm;

.field public t:Lbnn;

.field protected u:Lbno;

.field protected v:Z

.field protected w:Z

.field protected x:Z

.field protected y:Z

.field public z:Lbob;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lboc;

    const-string v1, "CamSet"

    invoke-direct {v0, v1}, Lboc;-><init>(Ljava/lang/String;)V

    sput-object v0, Lbnw;->a:Lboc;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lbnw;->d:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbnw;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbnw;->f:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(Lbnw;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lbnw;->d:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lbnw;->e:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lbnw;->f:Ljava/util/List;

    iget-object v3, p1, Lbnw;->d:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v0, p1, Lbnw;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p1, Lbnw;->f:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-boolean v0, p1, Lbnw;->g:Z

    iput-boolean v0, p0, Lbnw;->g:Z

    iget v0, p1, Lbnw;->h:I

    iput v0, p0, Lbnw;->h:I

    iget v0, p1, Lbnw;->i:I

    iput v0, p0, Lbnw;->i:I

    iget v0, p1, Lbnw;->j:I

    iput v0, p0, Lbnw;->j:I

    iget-object v0, p1, Lbnw;->k:Lbob;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    new-instance v2, Lbob;

    invoke-direct {v2, v0}, Lbob;-><init>(Lbob;)V

    :goto_0
    iput-object v2, p0, Lbnw;->k:Lbob;

    iget v0, p1, Lbnw;->l:I

    iput v0, p0, Lbnw;->l:I

    iget-object v0, p1, Lbnw;->m:Lbob;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Lbob;

    invoke-direct {v1, v0}, Lbob;-><init>(Lbob;)V

    :goto_1
    iput-object v1, p0, Lbnw;->m:Lbob;

    iget-byte v0, p1, Lbnw;->n:B

    iput-byte v0, p0, Lbnw;->n:B

    iget v0, p1, Lbnw;->o:I

    iput v0, p0, Lbnw;->o:I

    iget v0, p1, Lbnw;->p:F

    iput v0, p0, Lbnw;->p:F

    iget v0, p1, Lbnw;->q:I

    iput v0, p0, Lbnw;->q:I

    iget-object v0, p1, Lbnw;->r:Lbnl;

    iput-object v0, p0, Lbnw;->r:Lbnl;

    iget-object v0, p1, Lbnw;->s:Lbnm;

    iput-object v0, p0, Lbnw;->s:Lbnm;

    iget-object v0, p1, Lbnw;->t:Lbnn;

    iput-object v0, p0, Lbnw;->t:Lbnn;

    iget-object v0, p1, Lbnw;->u:Lbno;

    iput-object v0, p0, Lbnw;->u:Lbno;

    iget-boolean v0, p1, Lbnw;->v:Z

    iput-boolean v0, p0, Lbnw;->v:Z

    iget-boolean v0, p1, Lbnw;->w:Z

    iput-boolean v0, p0, Lbnw;->w:Z

    iget-boolean v0, p1, Lbnw;->x:Z

    iput-boolean v0, p0, Lbnw;->x:Z

    iget-boolean v0, p1, Lbnw;->y:Z

    iput-boolean v0, p0, Lbnw;->y:Z

    iget-object p1, p1, Lbnw;->z:Lbob;

    iput-object p1, p0, Lbnw;->z:Lbob;

    return-void
.end method


# virtual methods
.method public abstract a()Lbnw;
.end method

.method public d()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lbnw;->p:F

    return-void
.end method

.method public final e()Lbob;
    .locals 2

    new-instance v0, Lbob;

    iget-object v1, p0, Lbnw;->m:Lbob;

    invoke-direct {v0, v1}, Lbob;-><init>(Lbob;)V

    return-object v0
.end method

.method public final f()Lbob;
    .locals 2

    new-instance v0, Lbob;

    iget-object v1, p0, Lbnw;->k:Lbob;

    invoke-direct {v0, v1}, Lbob;-><init>(Lbob;)V

    return-object v0
.end method

.method public final g()Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lbnw;->f:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final h()Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lbnw;->e:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final i(I)V
    .locals 1

    if-lez p1, :cond_1

    const/16 v0, 0x64

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    int-to-byte p1, p1

    iput-byte p1, p0, Lbnw;->n:B

    return-void

    :cond_1
    :goto_0
    sget-object p1, Lbnw;->a:Lboc;

    const-string v0, "Ignoring JPEG quality that falls outside the expected range"

    invoke-static {p1, v0}, Lbod;->c(Lboc;Ljava/lang/String;)V

    return-void
.end method

.method public final j(II)V
    .locals 1

    if-le p1, p2, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    iput v0, p0, Lbnw;->i:I

    if-gt p1, p2, :cond_1

    goto :goto_1

    :cond_1
    move p1, p2

    :goto_1
    iput p1, p0, Lbnw;->h:I

    const/4 p1, -0x1

    iput p1, p0, Lbnw;->j:I

    return-void
.end method

.method public final k(Lbob;)V
    .locals 1

    iget-boolean v0, p0, Lbnw;->g:Z

    if-eqz v0, :cond_0

    sget-object p1, Lbnw;->a:Lboc;

    const-string v0, "Attempt to change photo size while locked"

    invoke-static {p1, v0}, Lbod;->c(Lboc;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lbob;

    invoke-direct {v0, p1}, Lbob;-><init>(Lbob;)V

    iput-object v0, p0, Lbnw;->m:Lbob;

    return-void
.end method

.method public final l(Lbob;)V
    .locals 1

    iget-boolean v0, p0, Lbnw;->g:Z

    if-eqz v0, :cond_0

    sget-object p1, Lbnw;->a:Lboc;

    const-string v0, "Attempt to change preview size while locked"

    invoke-static {p1, v0}, Lbod;->c(Lboc;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lbob;

    invoke-direct {v0, p1}, Lbob;-><init>(Lbob;)V

    iput-object v0, p0, Lbnw;->k:Lbob;

    return-void
.end method
