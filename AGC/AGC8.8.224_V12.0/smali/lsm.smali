.class public final Llsm;
.super Ljava/lang/Object;


# instance fields
.field public a:Z

.field public b:B

.field public c:Llkj;

.field private d:Landroid/net/Uri;

.field private e:Lnxy;

.field private f:Llsh;

.field private g:Lmvv;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Llsn;
    .locals 12

    iget-object v0, p0, Llsm;->g:Lmvv;

    if-nez v0, :cond_0

    sget v0, Lmvv;->d:I

    sget-object v0, Lmyu;->a:Lmvv;

    iput-object v0, p0, Llsm;->g:Lmvv;

    :cond_0
    iget-byte v0, p0, Llsm;->b:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v3, p0, Llsm;->d:Landroid/net/Uri;

    if-eqz v3, :cond_2

    iget-object v4, p0, Llsm;->e:Lnxy;

    if-eqz v4, :cond_2

    iget-object v5, p0, Llsm;->f:Llsh;

    if-eqz v5, :cond_2

    iget-object v7, p0, Llsm;->c:Llkj;

    if-nez v7, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Llsn;

    iget-object v6, p0, Llsm;->g:Lmvv;

    iget-boolean v8, p0, Llsm;->a:Z

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Llsn;-><init>(Landroid/net/Uri;Lnxy;Llsh;Lmvv;Llkj;Z[B[B[B)V

    return-object v0

    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Llsm;->d:Landroid/net/Uri;

    if-nez v1, :cond_3

    const-string v1, " uri"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Llsm;->e:Lnxy;

    if-nez v1, :cond_4

    const-string v1, " schema"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v1, p0, Llsm;->f:Llsh;

    if-nez v1, :cond_5

    const-string v1, " handler"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v1, p0, Llsm;->c:Llkj;

    if-nez v1, :cond_6

    const-string v1, " variantConfig"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-byte v1, p0, Llsm;->b:B

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_7

    const-string v1, " useGeneratedExtensionRegistry"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    iget-byte v1, p0, Llsm;->b:B

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_8

    const-string v1, " enableTracing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final b()V
    .locals 1

    iget-byte v0, p0, Llsm;->b:B

    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Llsm;->b:B

    return-void
.end method

.method public final c(Llsh;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Llsm;->f:Llsh;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null handler"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d(Lnxy;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Llsm;->e:Lnxy;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null schema"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final e(Landroid/net/Uri;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Llsm;->d:Landroid/net/Uri;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null uri"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
