.class public abstract Ldjp;
.super Ljava/lang/Object;

# interfaces
.implements Lche;


# instance fields
.field public final b:J

.field public final c:Lgxy;

.field public final d:Lmvv;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Lj$/time/Instant;

.field public final h:Lj$/time/Instant;

.field public final i:Landroid/net/Uri;

.field public final j:Z

.field public final k:Lkaf;

.field public final l:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JLgxy;Lmvv;Ljava/lang/String;Ljava/lang/String;Lj$/time/Instant;Lj$/time/Instant;Landroid/net/Uri;ZLkaf;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Ldjp;->b:J

    iput-object p3, p0, Ldjp;->c:Lgxy;

    if-eqz p4, :cond_6

    iput-object p4, p0, Ldjp;->d:Lmvv;

    if-eqz p5, :cond_5

    iput-object p5, p0, Ldjp;->e:Ljava/lang/String;

    if-eqz p6, :cond_4

    iput-object p6, p0, Ldjp;->f:Ljava/lang/String;

    if-eqz p7, :cond_3

    iput-object p7, p0, Ldjp;->g:Lj$/time/Instant;

    if-eqz p8, :cond_2

    iput-object p8, p0, Ldjp;->h:Lj$/time/Instant;

    if-eqz p9, :cond_1

    iput-object p9, p0, Ldjp;->i:Landroid/net/Uri;

    iput-boolean p10, p0, Ldjp;->j:Z

    if-eqz p11, :cond_0

    iput-object p11, p0, Ldjp;->k:Lkaf;

    iput p12, p0, Ldjp;->l:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null dimensions"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null uri"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null lastModifiedInstant"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null creationInstant"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null mimeType"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null title"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null allContentIds"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static k()Ldjo;
    .locals 2

    new-instance v0, Ldjo;

    invoke-direct {v0}, Ldjo;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ldjo;->f(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ldjo;->h(Ljava/lang/String;)V

    sget-object v1, Ldjp;->a:Lkaf;

    iput-object v1, v0, Ldjo;->b:Lkaf;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ldjo;->g(I)V

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Ldjp;->l:I

    return v0
.end method

.method public final b()J
    .locals 2

    iget-wide v0, p0, Ldjp;->b:J

    return-wide v0
.end method

.method public final c()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Ldjp;->i:Landroid/net/Uri;

    return-object v0
.end method

.method public final d()Lgxy;
    .locals 1

    iget-object v0, p0, Ldjp;->c:Lgxy;

    return-object v0
.end method

.method public final e()Lkaf;
    .locals 1

    iget-object v0, p0, Ldjp;->k:Lkaf;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ldjp;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    check-cast p1, Ldjp;

    iget-wide v3, p0, Ldjp;->b:J

    iget-wide v5, p1, Ldjp;->b:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_3

    iget-object v1, p0, Ldjp;->c:Lgxy;

    if-nez v1, :cond_1

    iget-object v1, p1, Ldjp;->c:Lgxy;

    if-nez v1, :cond_3

    goto :goto_0

    :cond_1
    iget-object v3, p1, Ldjp;->c:Lgxy;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v1, p0, Ldjp;->d:Lmvv;

    iget-object v3, p1, Ldjp;->d:Lmvv;

    invoke-static {v1, v3}, Llyh;->I(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Ldjp;->e:Ljava/lang/String;

    iget-object v3, p1, Ldjp;->e:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Ldjp;->f:Ljava/lang/String;

    iget-object v3, p1, Ldjp;->f:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Ldjp;->g:Lj$/time/Instant;

    iget-object v3, p1, Ldjp;->g:Lj$/time/Instant;

    invoke-virtual {v1, v3}, Lj$/time/Instant;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Ldjp;->h:Lj$/time/Instant;

    iget-object v3, p1, Ldjp;->h:Lj$/time/Instant;

    invoke-virtual {v1, v3}, Lj$/time/Instant;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Ldjp;->i:Landroid/net/Uri;

    iget-object v3, p1, Ldjp;->i:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Ldjp;->j:Z

    iget-boolean v3, p1, Ldjp;->j:Z

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Ldjp;->k:Lkaf;

    iget-object v3, p1, Ldjp;->k:Lkaf;

    invoke-virtual {v1, v3}, Lkaf;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Ldjp;->l:I

    iget p1, p1, Ldjp;->l:I

    if-ne v1, p1, :cond_3

    return v0

    :cond_3
    :goto_1
    return v2
.end method

.method public final f()Lmvv;
    .locals 1

    iget-object v0, p0, Ldjp;->d:Lmvv;

    return-object v0
.end method

.method public final g()Lj$/time/Instant;
    .locals 1

    iget-object v0, p0, Ldjp;->g:Lj$/time/Instant;

    return-object v0
.end method

.method public final h()Lj$/time/Instant;
    .locals 1

    iget-object v0, p0, Ldjp;->h:Lj$/time/Instant;

    return-object v0
.end method

.method public final hashCode()I
    .locals 4

    iget-wide v0, p0, Ldjp;->b:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    iget-object v2, p0, Ldjp;->c:Lgxy;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    long-to-int v1, v0

    iget-object v0, p0, Ldjp;->d:Lmvv;

    const v3, 0xf4243

    xor-int/2addr v1, v3

    mul-int v1, v1, v3

    xor-int/2addr v1, v2

    mul-int v1, v1, v3

    invoke-virtual {v0}, Lmvv;->hashCode()I

    move-result v0

    xor-int/2addr v0, v1

    iget-object v1, p0, Ldjp;->e:Ljava/lang/String;

    mul-int v0, v0, v3

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Ldjp;->f:Ljava/lang/String;

    mul-int v0, v0, v3

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Ldjp;->g:Lj$/time/Instant;

    mul-int v0, v0, v3

    invoke-virtual {v1}, Lj$/time/Instant;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Ldjp;->h:Lj$/time/Instant;

    mul-int v0, v0, v3

    invoke-virtual {v1}, Lj$/time/Instant;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Ldjp;->i:Landroid/net/Uri;

    mul-int v0, v0, v3

    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Ldjp;->j:Z

    if-eq v1, v2, :cond_1

    const/16 v1, 0x4d5

    goto :goto_1

    :cond_1
    const/16 v1, 0x4cf

    :goto_1
    mul-int v0, v0, v3

    xor-int/2addr v0, v1

    mul-int v0, v0, v3

    iget-object v1, p0, Ldjp;->k:Lkaf;

    invoke-virtual {v1}, Lkaf;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    mul-int v0, v0, v3

    iget v1, p0, Ldjp;->l:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ldjp;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Z
    .locals 1

    iget-boolean v0, p0, Ldjp;->j:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 14

    iget-wide v0, p0, Ldjp;->b:J

    iget-object v2, p0, Ldjp;->c:Lgxy;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ldjp;->d:Lmvv;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ldjp;->e:Ljava/lang/String;

    iget-object v5, p0, Ldjp;->f:Ljava/lang/String;

    iget-object v6, p0, Ldjp;->g:Lj$/time/Instant;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Ldjp;->h:Lj$/time/Instant;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Ldjp;->i:Landroid/net/Uri;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iget-boolean v9, p0, Ldjp;->j:Z

    iget-object v10, p0, Ldjp;->k:Lkaf;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    iget v11, p0, Ldjp;->l:I

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MediaStoreData{contentId="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", shotId="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", allContentIds="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", title="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mimeType="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", creationInstant="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", lastModifiedInstant="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", uri="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", inProgress="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", dimensions="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", orientation="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
