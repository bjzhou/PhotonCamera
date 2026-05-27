.class public final Lpad;
.super Ljava/io/InputStream;

# interfaces
.implements Lj$/io/InputStreamRetargetInterface;


# instance fields
.field final synthetic a:Lpae;


# direct methods
.method public constructor <init>(Lpae;)V
    .locals 0

    iput-object p1, p0, Lpad;->a:Lpae;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public final available()I
    .locals 4

    iget-object v0, p0, Lpad;->a:Lpae;

    iget-boolean v1, v0, Lpae;->c:Z

    if-nez v1, :cond_0

    iget-object v0, v0, Lpae;->b:Lozw;

    iget-wide v0, v0, Lozw;->b:J

    const-wide/32 v2, 0x7fffffff

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    return v1

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, Lpad;->a:Lpae;

    invoke-virtual {v0}, Lpae;->close()V

    return-void
.end method

.method public final read()I
    .locals 7

    iget-object v0, p0, Lpad;->a:Lpae;

    iget-boolean v1, v0, Lpae;->c:Z

    if-nez v1, :cond_1

    iget-object v1, v0, Lpae;->b:Lozw;

    iget-wide v2, v1, Lozw;->b:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    iget-object v0, v0, Lpae;->a:Lpai;

    invoke-interface {v0, v1}, Lpai;->t(Lozw;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Lpad;->a:Lpae;

    iget-object v0, v0, Lpae;->b:Lozw;

    invoke-virtual {v0}, Lozw;->b()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final read([BII)I
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lpad;->a:Lpae;

    iget-boolean v0, v0, Lpae;->c:Z

    if-nez v0, :cond_1

    int-to-long v3, p2

    int-to-long v5, p3

    array-length v0, p1

    int-to-long v1, v0

    invoke-static/range {v1 .. v6}, Lljz;->o(JJJ)V

    iget-object v0, p0, Lpad;->a:Lpae;

    iget-object v1, v0, Lpae;->b:Lozw;

    iget-wide v2, v1, Lozw;->b:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    iget-object v0, v0, Lpae;->a:Lpai;

    invoke-interface {v0, v1}, Lpai;->t(Lozw;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget-object v0, p0, Lpad;->a:Lpae;

    iget-object v0, v0, Lpae;->b:Lozw;

    invoke-virtual {v0, p1, p2, p3}, Lozw;->c([BII)I

    move-result p1

    return p1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lpad;->a:Lpae;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ".inputStream()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic transferTo(Ljava/io/OutputStream;)J
    .locals 2

    invoke-static {p0, p1}, Lj$/io/DesugarInputStream;->transferTo(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v0

    return-wide v0
.end method
