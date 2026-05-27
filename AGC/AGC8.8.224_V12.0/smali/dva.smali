.class public final Ldva;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field private final d:Ldsx;

.field private e:I

.field private f:Lduu;

.field private g:J

.field private h:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(Ldsx;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2328

    iput v0, p0, Ldva;->e:I

    const/4 v0, 0x1

    iput v0, p0, Ldva;->a:I

    sget-object v0, Lduz;->a:Lduz;

    iput-object v0, p0, Ldva;->f:Lduu;

    const/4 v0, 0x4

    iput v0, p0, Ldva;->c:I

    const/16 v0, 0x1e

    iput v0, p0, Ldva;->b:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ldva;->g:J

    const/4 v0, 0x0

    iput-object v0, p0, Ldva;->h:Ljava/util/concurrent/TimeUnit;

    iput-object p1, p0, Ldva;->d:Ldsx;

    return-void
.end method


# virtual methods
.method public final a()Lduv;
    .locals 10

    iget-object v0, p0, Ldva;->h:Ljava/util/concurrent/TimeUnit;

    if-eqz v0, :cond_0

    iget v0, p0, Ldva;->b:I

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v3, p0, Ldva;->g:J

    iget-object v5, p0, Ldva;->h:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    mul-long v0, v0, v2

    long-to-int v1, v0

    iput v1, p0, Ldva;->e:I

    :cond_0
    iget v0, p0, Ldva;->a:I

    new-instance v8, Lduw;

    invoke-direct {v8, v0}, Lduw;-><init>(I)V

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Ldux;

    invoke-direct {v0}, Ldux;-><init>()V

    move-object v9, v0

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Lduy;

    invoke-direct {v1, v0}, Lduy;-><init>(I)V

    move v5, v0

    move-object v9, v1

    :goto_0
    new-instance v0, Lduv;

    iget-object v2, p0, Ldva;->d:Ldsx;

    iget v3, p0, Ldva;->e:I

    iget v6, p0, Ldva;->c:I

    iget-object v7, p0, Ldva;->f:Lduu;

    move-object v1, v0

    move v4, v5

    invoke-direct/range {v1 .. v9}, Lduv;-><init>(Ldsx;IIIILduu;Lduw;Ldut;)V

    return-object v0
.end method

.method public final b()V
    .locals 1

    sget-object v0, Lduz;->b:Lduz;

    iput-object v0, p0, Ldva;->f:Lduu;

    return-void
.end method

.method public final c(JLjava/util/concurrent/TimeUnit;)V
    .locals 0

    iput-wide p1, p0, Ldva;->g:J

    iput-object p3, p0, Ldva;->h:Ljava/util/concurrent/TimeUnit;

    return-void
.end method
