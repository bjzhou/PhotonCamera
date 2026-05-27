.class public final Lj$/time/zone/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# instance fields
.field private final a:J

.field private final b:Lj$/time/i;

.field private final c:Lj$/time/p;

.field private final d:Lj$/time/p;


# direct methods
.method constructor <init>(JLj$/time/p;Lj$/time/p;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lj$/time/zone/a;->a:J

    const/4 v0, 0x0

    invoke-static {p1, p2, v0, p3}, Lj$/time/i;->G(JILj$/time/p;)Lj$/time/i;

    move-result-object p1

    iput-object p1, p0, Lj$/time/zone/a;->b:Lj$/time/i;

    iput-object p3, p0, Lj$/time/zone/a;->c:Lj$/time/p;

    iput-object p4, p0, Lj$/time/zone/a;->d:Lj$/time/p;

    return-void
.end method

.method constructor <init>(Lj$/time/i;Lj$/time/p;Lj$/time/p;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, p2}, Lj$/time/i;->K(Lj$/time/p;)J

    move-result-wide v0

    iput-wide v0, p0, Lj$/time/zone/a;->a:J

    iput-object p1, p0, Lj$/time/zone/a;->b:Lj$/time/i;

    iput-object p2, p0, Lj$/time/zone/a;->c:Lj$/time/p;

    iput-object p3, p0, Lj$/time/zone/a;->d:Lj$/time/p;

    return-void
.end method


# virtual methods
.method public final a()Lj$/time/i;
    .locals 3

    iget-object v0, p0, Lj$/time/zone/a;->d:Lj$/time/p;

    invoke-virtual {v0}, Lj$/time/p;->z()I

    move-result v0

    iget-object v1, p0, Lj$/time/zone/a;->c:Lj$/time/p;

    invoke-virtual {v1}, Lj$/time/p;->z()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-long v0, v0

    iget-object v2, p0, Lj$/time/zone/a;->b:Lj$/time/i;

    invoke-virtual {v2, v0, v1}, Lj$/time/i;->I(J)Lj$/time/i;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lj$/time/i;
    .locals 1

    iget-object v0, p0, Lj$/time/zone/a;->b:Lj$/time/i;

    return-object v0
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Lj$/time/zone/a;

    iget-wide v0, p0, Lj$/time/zone/a;->a:J

    iget-wide v2, p1, Lj$/time/zone/a;->a:J

    cmp-long p1, v0, v2

    return p1
.end method

.method public final e()Lj$/time/Duration;
    .locals 2

    iget-object v0, p0, Lj$/time/zone/a;->d:Lj$/time/p;

    invoke-virtual {v0}, Lj$/time/p;->z()I

    move-result v0

    iget-object v1, p0, Lj$/time/zone/a;->c:Lj$/time/p;

    invoke-virtual {v1}, Lj$/time/p;->z()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {v0, v1}, Lj$/time/Duration;->ofSeconds(J)Lj$/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lj$/time/zone/a;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lj$/time/zone/a;

    iget-wide v3, p1, Lj$/time/zone/a;->a:J

    iget-wide v5, p0, Lj$/time/zone/a;->a:J

    cmp-long v1, v5, v3

    if-nez v1, :cond_1

    iget-object v1, p0, Lj$/time/zone/a;->c:Lj$/time/p;

    iget-object v3, p1, Lj$/time/zone/a;->c:Lj$/time/p;

    invoke-virtual {v1, v3}, Lj$/time/p;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lj$/time/zone/a;->d:Lj$/time/p;

    iget-object p1, p1, Lj$/time/zone/a;->d:Lj$/time/p;

    invoke-virtual {v1, p1}, Lj$/time/p;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public final f()Lj$/time/p;
    .locals 1

    iget-object v0, p0, Lj$/time/zone/a;->d:Lj$/time/p;

    return-object v0
.end method

.method public final h()Lj$/time/p;
    .locals 1

    iget-object v0, p0, Lj$/time/zone/a;->c:Lj$/time/p;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lj$/time/zone/a;->b:Lj$/time/i;

    invoke-virtual {v0}, Lj$/time/i;->hashCode()I

    move-result v0

    iget-object v1, p0, Lj$/time/zone/a;->c:Lj$/time/p;

    invoke-virtual {v1}, Lj$/time/p;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lj$/time/zone/a;->d:Lj$/time/p;

    invoke-virtual {v1}, Lj$/time/p;->hashCode()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method final i()Ljava/util/List;
    .locals 3

    invoke-virtual {p0}, Lj$/time/zone/a;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lj$/time/zone/a;->c:Lj$/time/p;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lj$/time/zone/a;->d:Lj$/time/p;

    aput-object v2, v0, v1

    invoke-static {v0}, Lj$/desugar/sun/nio/fs/g;->b([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    iget-object v0, p0, Lj$/time/zone/a;->d:Lj$/time/p;

    invoke-virtual {v0}, Lj$/time/p;->z()I

    move-result v0

    iget-object v1, p0, Lj$/time/zone/a;->c:Lj$/time/p;

    invoke-virtual {v1}, Lj$/time/p;->z()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final k()J
    .locals 2

    iget-wide v0, p0, Lj$/time/zone/a;->a:J

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Transition["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lj$/time/zone/a;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Gap"

    goto :goto_0

    :cond_0
    const-string v1, "Overlap"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lj$/time/zone/a;->b:Lj$/time/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lj$/time/zone/a;->c:Lj$/time/p;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lj$/time/zone/a;->d:Lj$/time/p;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
