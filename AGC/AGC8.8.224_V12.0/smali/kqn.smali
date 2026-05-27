.class public final Lkqn;
.super Ljava/lang/Object;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/content/ContentResolver;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:Ljava/lang/String;

.field public f:B

.field private g:Landroid/net/Uri;

.field private h:Landroid/net/Uri;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:I

.field private m:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lkqo;
    .locals 15

    iget-byte v0, p0, Lkqn;->f:B

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    iget-object v3, p0, Lkqn;->a:Landroid/content/Context;

    if-eqz v3, :cond_1

    iget-object v4, p0, Lkqn;->b:Landroid/content/ContentResolver;

    if-eqz v4, :cond_1

    iget-object v5, p0, Lkqn;->g:Landroid/net/Uri;

    if-eqz v5, :cond_1

    iget-object v6, p0, Lkqn;->h:Landroid/net/Uri;

    if-eqz v6, :cond_1

    iget-object v7, p0, Lkqn;->c:Ljava/lang/String;

    if-eqz v7, :cond_1

    iget-object v8, p0, Lkqn;->i:Ljava/lang/String;

    if-eqz v8, :cond_1

    iget-object v9, p0, Lkqn;->j:Ljava/lang/String;

    if-eqz v9, :cond_1

    iget-object v11, p0, Lkqn;->e:Ljava/lang/String;

    if-eqz v11, :cond_1

    iget-object v12, p0, Lkqn;->k:Ljava/lang/String;

    if-nez v12, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lkqo;

    iget v10, p0, Lkqn;->d:I

    iget v13, p0, Lkqn;->l:I

    iget v14, p0, Lkqn;->m:I

    move-object v2, v0

    invoke-direct/range {v2 .. v14}, Lkqo;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    return-object v0

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lkqn;->a:Landroid/content/Context;

    if-nez v1, :cond_2

    const-string v1, " context"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lkqn;->b:Landroid/content/ContentResolver;

    if-nez v1, :cond_3

    const-string v1, " contentResolver"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Lkqn;->g:Landroid/net/Uri;

    if-nez v1, :cond_4

    const-string v1, " photoInsertUri"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v1, p0, Lkqn;->h:Landroid/net/Uri;

    if-nez v1, :cond_5

    const-string v1, " videoInsertUri"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v1, p0, Lkqn;->c:Ljava/lang/String;

    if-nez v1, :cond_6

    const-string v1, " displayNameColumnName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-object v1, p0, Lkqn;->i:Ljava/lang/String;

    if-nez v1, :cond_7

    const-string v1, " mimeTypeColumnName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    iget-object v1, p0, Lkqn;->j:Ljava/lang/String;

    if-nez v1, :cond_8

    const-string v1, " isPendingColumnName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    iget-byte v1, p0, Lkqn;->f:B

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_9

    const-string v1, " isPendingTrue"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    iget-byte v1, p0, Lkqn;->f:B

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_a

    const-string v1, " isPendingFalse"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    iget-object v1, p0, Lkqn;->e:Ljava/lang/String;

    if-nez v1, :cond_b

    const-string v1, " relativePathColumnName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    iget-object v1, p0, Lkqn;->k:Ljava/lang/String;

    if-nez v1, :cond_c

    const-string v1, " mediaTypeColumnName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    iget-byte v1, p0, Lkqn;->f:B

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_d

    const-string v1, " mediaTypeImage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    iget-byte v1, p0, Lkqn;->f:B

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_e

    const-string v1, " mediaTypeVideo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
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

    const-string v0, "is_pending"

    iput-object v0, p0, Lkqn;->j:Ljava/lang/String;

    return-void
.end method

.method public final c()V
    .locals 1

    const-string v0, "media_type"

    iput-object v0, p0, Lkqn;->k:Ljava/lang/String;

    return-void
.end method

.method public final d(I)V
    .locals 0

    iput p1, p0, Lkqn;->l:I

    iget-byte p1, p0, Lkqn;->f:B

    or-int/lit8 p1, p1, 0x4

    int-to-byte p1, p1

    iput-byte p1, p0, Lkqn;->f:B

    return-void
.end method

.method public final e(I)V
    .locals 0

    iput p1, p0, Lkqn;->m:I

    iget-byte p1, p0, Lkqn;->f:B

    or-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    iput-byte p1, p0, Lkqn;->f:B

    return-void
.end method

.method public final f()V
    .locals 1

    const-string v0, "mime_type"

    iput-object v0, p0, Lkqn;->i:Ljava/lang/String;

    return-void
.end method

.method public final g(Landroid/net/Uri;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lkqn;->g:Landroid/net/Uri;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null photoInsertUri"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final h(Landroid/net/Uri;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lkqn;->h:Landroid/net/Uri;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null videoInsertUri"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
