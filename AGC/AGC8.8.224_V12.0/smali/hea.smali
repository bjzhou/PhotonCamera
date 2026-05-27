.class public final Lhea;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Landroid/graphics/drawable/Drawable;

.field public c:Ljava/lang/Runnable;

.field public d:Ljava/lang/Runnable;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/Runnable;

.field public g:Ljava/lang/Runnable;

.field public h:Ljava/lang/Runnable;

.field public i:Ljava/lang/Runnable;

.field private j:J

.field private k:Z

.field private l:Z

.field private m:B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lheb;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Lheb;->a:J

    iput-wide v0, p0, Lhea;->j:J

    iget-boolean v0, p1, Lheb;->b:Z

    iput-boolean v0, p0, Lhea;->k:Z

    iget-object v0, p1, Lheb;->c:Ljava/lang/String;

    iput-object v0, p0, Lhea;->a:Ljava/lang/String;

    iget-object v0, p1, Lheb;->d:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lhea;->b:Landroid/graphics/drawable/Drawable;

    iget-object v0, p1, Lheb;->e:Ljava/lang/Runnable;

    iput-object v0, p0, Lhea;->c:Ljava/lang/Runnable;

    iget-object v0, p1, Lheb;->f:Ljava/lang/Runnable;

    iput-object v0, p0, Lhea;->d:Ljava/lang/Runnable;

    iget-object v0, p1, Lheb;->g:Ljava/lang/String;

    iput-object v0, p0, Lhea;->e:Ljava/lang/String;

    iget-object v0, p1, Lheb;->h:Ljava/lang/Runnable;

    iput-object v0, p0, Lhea;->f:Ljava/lang/Runnable;

    iget-object v0, p1, Lheb;->i:Ljava/lang/Runnable;

    iput-object v0, p0, Lhea;->g:Ljava/lang/Runnable;

    iget-object v0, p1, Lheb;->j:Ljava/lang/Runnable;

    iput-object v0, p0, Lhea;->h:Ljava/lang/Runnable;

    iget-object v0, p1, Lheb;->k:Ljava/lang/Runnable;

    iput-object v0, p0, Lhea;->i:Ljava/lang/Runnable;

    iget-boolean p1, p1, Lheb;->l:Z

    iput-boolean p1, p0, Lhea;->l:Z

    const/4 p1, 0x7

    iput-byte p1, p0, Lhea;->m:B

    return-void
.end method


# virtual methods
.method public final a()Lheb;
    .locals 7

    invoke-virtual {p0}, Lhea;->b()Lheb;

    move-result-object v0

    iget-object v1, v0, Lheb;->c:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    iget-object v1, v0, Lheb;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    iget-object v4, v0, Lheb;->e:Ljava/lang/Runnable;

    if-nez v1, :cond_2

    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    const/4 v5, 0x1

    :goto_1
    invoke-static {v5}, Lmoz;->p(Z)V

    if-eqz v4, :cond_4

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    goto :goto_2

    :cond_4
    const/4 v2, 0x1

    :goto_2
    invoke-static {v2}, Lmoz;->p(Z)V

    invoke-static {v3}, Lmoz;->p(Z)V

    iget-object v1, v0, Lheb;->c:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v2, v0, Lheb;->g:Ljava/lang/String;

    if-nez v2, :cond_5

    invoke-virtual {v0}, Lheb;->b()Lhea;

    move-result-object v0

    iput-object v1, v0, Lhea;->e:Ljava/lang/String;

    invoke-virtual {v0}, Lhea;->b()Lheb;

    move-result-object v0

    goto :goto_3

    :cond_5
    :goto_3
    iget-wide v1, v0, Lheb;->a:J

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-nez v6, :cond_6

    invoke-virtual {v0}, Lheb;->b()Lhea;

    move-result-object v0

    invoke-virtual {v0, v3}, Lhea;->d(Z)V

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lhea;->e(J)V

    invoke-virtual {v0}, Lhea;->a()Lheb;

    move-result-object v0

    :cond_6
    return-object v0
.end method

.method public final b()Lheb;
    .locals 17

    move-object/from16 v0, p0

    iget-byte v1, v0, Lhea;->m:B

    const/4 v2, 0x7

    if-eq v1, v2, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-byte v2, v0, Lhea;->m:B

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    const-string v2, " timeoutMillis"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-byte v2, v0, Lhea;->m:B

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    const-string v2, " autoHideOnClick"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-byte v2, v0, Lhea;->m:B

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_2

    const-string v2, " sticky"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Missing required properties:"

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    new-instance v1, Lheb;

    iget-wide v4, v0, Lhea;->j:J

    iget-boolean v6, v0, Lhea;->k:Z

    iget-object v7, v0, Lhea;->a:Ljava/lang/String;

    iget-object v8, v0, Lhea;->b:Landroid/graphics/drawable/Drawable;

    iget-object v9, v0, Lhea;->c:Ljava/lang/Runnable;

    iget-object v10, v0, Lhea;->d:Ljava/lang/Runnable;

    iget-object v11, v0, Lhea;->e:Ljava/lang/String;

    iget-object v12, v0, Lhea;->f:Ljava/lang/Runnable;

    iget-object v13, v0, Lhea;->g:Ljava/lang/Runnable;

    iget-object v14, v0, Lhea;->h:Ljava/lang/Runnable;

    iget-object v15, v0, Lhea;->i:Ljava/lang/Runnable;

    iget-boolean v2, v0, Lhea;->l:Z

    move-object v3, v1

    move/from16 v16, v2

    invoke-direct/range {v3 .. v16}, Lheb;-><init>(JZLjava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Z)V

    return-object v1
.end method

.method public final c(Z)V
    .locals 0

    iput-boolean p1, p0, Lhea;->k:Z

    iget-byte p1, p0, Lhea;->m:B

    or-int/lit8 p1, p1, 0x2

    int-to-byte p1, p1

    iput-byte p1, p0, Lhea;->m:B

    return-void
.end method

.method public final d(Z)V
    .locals 0

    iput-boolean p1, p0, Lhea;->l:Z

    iget-byte p1, p0, Lhea;->m:B

    or-int/lit8 p1, p1, 0x4

    int-to-byte p1, p1

    iput-byte p1, p0, Lhea;->m:B

    return-void
.end method

.method public final e(J)V
    .locals 0

    iput-wide p1, p0, Lhea;->j:J

    iget-byte p1, p0, Lhea;->m:B

    or-int/lit8 p1, p1, 0x1

    int-to-byte p1, p1

    iput-byte p1, p0, Lhea;->m:B

    return-void
.end method
