.class public final Ljxp;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lmqp;

.field public final b:Ljwu;

.field public c:Z

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public j:Ljxl;

.field private final k:Z

.field private final l:Z

.field private final m:I

.field private final n:I

.field private final o:I

.field private final p:I


# direct methods
.method public constructor <init>(Ljwu;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lmpx;->a:Lmpx;

    iput-object v0, p0, Ljxp;->a:Lmqp;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljxp;->k:Z

    iput-boolean v0, p0, Ljxp;->c:Z

    const/4 v1, 0x5

    iput v1, p0, Ljxp;->d:I

    const/4 v1, 0x1

    iput v1, p0, Ljxp;->e:I

    const/high16 v1, 0x10000

    iput v1, p0, Ljxp;->f:I

    const/4 v1, 0x2

    iput v1, p0, Ljxp;->g:I

    const/16 v2, 0x8

    iput v2, p0, Ljxp;->h:I

    const v2, 0x8000

    iput v2, p0, Ljxp;->i:I

    iput-boolean v0, p0, Ljxp;->l:Z

    const/4 v0, 0x3

    iput v0, p0, Ljxp;->m:I

    iput v1, p0, Ljxp;->n:I

    const v0, 0x2ee00

    iput v0, p0, Ljxp;->o:I

    const v0, 0xbb80

    iput v0, p0, Ljxp;->p:I

    iput-object p1, p0, Ljxp;->b:Ljwu;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ljxp;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ljxp;

    iget-boolean v1, p0, Ljxp;->c:Z

    iget-boolean v3, p1, Ljxp;->c:Z

    if-ne v1, v3, :cond_2

    iget v1, p1, Ljxp;->d:I

    iget v1, p1, Ljxp;->e:I

    iget v1, p1, Ljxp;->f:I

    iget v1, p1, Ljxp;->g:I

    iget v1, p1, Ljxp;->h:I

    iget v1, p1, Ljxp;->i:I

    iget-boolean v1, p1, Ljxp;->l:Z

    iget v1, p1, Ljxp;->m:I

    iget v1, p1, Ljxp;->n:I

    iget v1, p1, Ljxp;->o:I

    iget v1, p1, Ljxp;->p:I

    iget-object v1, p0, Ljxp;->a:Lmqp;

    iget-object v3, p1, Ljxp;->a:Lmqp;

    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Ljxp;->j:Ljxl;

    iget-object v3, p1, Ljxp;->j:Ljxl;

    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Ljxp;->b:Ljwu;

    iget-object v3, p1, Ljxp;->b:Ljwu;

    if-ne v1, v3, :cond_2

    iget-boolean p1, p1, Ljxp;->k:Z

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 8

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Ljxp;->a:Lmqp;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Ljxp;->j:Ljxl;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iget-object v1, p0, Ljxp;->b:Ljwu;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    iget-boolean v1, p0, Ljxp;->c:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x4

    aput-object v6, v0, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/high16 v1, 0x10000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x6

    aput-object v1, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x7

    aput-object v1, v0, v3

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    const v3, 0x8000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x9

    aput-object v3, v0, v4

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v3, 0xa

    aput-object v2, v0, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0xb

    aput-object v3, v0, v4

    const/16 v3, 0xc

    aput-object v1, v0, v3

    const v1, 0x2ee00

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0xd

    aput-object v1, v0, v3

    const v1, 0xbb80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0xe

    aput-object v1, v0, v3

    const/16 v1, 0xf

    aput-object v2, v0, v1

    invoke-static {v0}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
