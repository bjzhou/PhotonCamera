.class public abstract Lore;
.super Lopk;

# interfaces
.implements Loqh;
.implements Loqw;


# instance fields
.field public b:Lori;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lopk;-><init>()V

    return-void
.end method


# virtual methods
.method public final cM()Lorl;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final cN()V
    .locals 4

    invoke-virtual {p0}, Lore;->e()Lori;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Lori;->dd()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lore;

    if-eqz v2, :cond_2

    if-eq v1, p0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lori;->d:Loop;

    sget-object v3, Lorj;->f:Loqk;

    invoke-virtual {v2, v1, v3}, Loop;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_2
    instance-of v0, v1, Loqw;

    if-eqz v0, :cond_3

    check-cast v1, Loqw;

    invoke-interface {v1}, Loqw;->cM()Lorl;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lowr;->cP()Z

    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method public final cO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final e()Lori;
    .locals 1

    iget-object v0, p0, Lore;->b:Lori;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "job"

    invoke-static {v0}, Lone;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lopx;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lopx;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lore;->e()Lori;

    move-result-object v2

    invoke-static {v2}, Lopx;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "@"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "[job@"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
