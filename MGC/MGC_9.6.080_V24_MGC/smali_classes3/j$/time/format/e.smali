.class final Lj$/time/format/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/time/format/f;


# instance fields
.field private final a:[Lj$/time/format/f;

.field private final b:Z


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Z)V
    .locals 1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lj$/time/format/f;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lj$/time/format/f;

    invoke-direct {p0, p1, p2}, Lj$/time/format/e;-><init>([Lj$/time/format/f;Z)V

    return-void
.end method

.method constructor <init>([Lj$/time/format/f;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/time/format/e;->a:[Lj$/time/format/f;

    iput-boolean p2, p0, Lj$/time/format/e;->b:Z

    return-void
.end method


# virtual methods
.method public final a()Lj$/time/format/e;
    .locals 3

    iget-boolean v0, p0, Lj$/time/format/e;->b:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lj$/time/format/e;

    iget-object v1, p0, Lj$/time/format/e;->a:[Lj$/time/format/f;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lj$/time/format/e;-><init>([Lj$/time/format/f;Z)V

    return-object v0
.end method

.method public final k(Lj$/time/format/v;Ljava/lang/StringBuilder;)Z
    .locals 7

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iget-boolean v1, p0, Lj$/time/format/e;->b:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lj$/time/format/v;->g()V

    :cond_0
    :try_start_0
    iget-object v2, p0, Lj$/time/format/e;->a:[Lj$/time/format/f;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v3, :cond_3

    aget-object v6, v2, v4

    invoke-interface {v6, p1, p2}, Lj$/time/format/f;->k(Lj$/time/format/v;Ljava/lang/StringBuilder;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lj$/time/format/v;->a()V

    :cond_1
    return v5

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lj$/time/format/v;->a()V

    :cond_4
    return v5

    :goto_1
    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lj$/time/format/v;->a()V

    :cond_5
    throw p2
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lj$/time/format/e;->a:[Lj$/time/format/f;

    if-eqz v1, :cond_3

    iget-boolean v2, p0, Lj$/time/format/e;->b:Z

    if-eqz v2, :cond_0

    const-string v3, "["

    goto :goto_0

    :cond_0
    const-string v3, "("

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    const-string v1, "]"

    goto :goto_2

    :cond_2
    const-string v1, ")"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
