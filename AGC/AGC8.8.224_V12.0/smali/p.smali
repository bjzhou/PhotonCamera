.class public final Lp;
.super Ljava/lang/Number;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x42016b294abcff1dL


# instance fields
.field public final a:D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final b:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final c:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final d:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final e:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final f:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final g:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>(DI)V
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    if-nez p3, :cond_0

    const/4 v6, 0x0

    goto :goto_1

    :cond_0
    cmpg-double v5, p1, v2

    if-gez v5, :cond_1

    neg-double v5, p1

    goto :goto_0

    :cond_1
    move-wide v5, p1

    :goto_0
    int-to-double v7, p3

    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-int v7, v7

    int-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v8

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    int-to-long v7, v7

    rem-long/2addr v5, v7

    long-to-int v6, v5

    :goto_1
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    cmpg-double v5, p1, v2

    if-gez v5, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    iput-boolean v2, p0, Lp;->g:Z

    if-eqz v2, :cond_3

    neg-double v2, p1

    goto :goto_3

    :cond_3
    move-wide v2, p1

    :goto_3
    int-to-long v5, v6

    iput-wide v2, p0, Lp;->a:D

    iput p3, p0, Lp;->b:I

    iput-wide v5, p0, Lp;->d:J

    const-wide v2, 0x43abc16d674ec800L    # 1.0E18

    cmpl-double v7, p1, v2

    if-lez v7, :cond_4

    const-wide p1, 0xde0b6b3a7640000L

    goto :goto_4

    :cond_4
    double-to-long p1, p1

    :goto_4
    iput-wide p1, p0, Lp;->f:J

    const-wide/16 p1, 0x0

    cmp-long v2, v5, p1

    if-nez v2, :cond_5

    iput-wide p1, p0, Lp;->e:J

    iput v4, p0, Lp;->c:I

    goto :goto_6

    :cond_5
    move v2, p3

    :goto_5
    const-wide/16 v3, 0xa

    rem-long v7, v5, v3

    cmp-long v9, v7, p1

    if-nez v9, :cond_6

    div-long/2addr v5, v3

    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    :cond_6
    iput-wide v5, p0, Lp;->e:J

    iput v2, p0, Lp;->c:I

    :goto_6
    int-to-double p1, p3

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->pow(DD)D

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x2e

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v2

    :goto_0
    invoke-direct {p0, v0, v1, p1}, Lp;-><init>(DI)V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0

    new-instance p1, Ljava/io/NotSerializableException;

    invoke-direct {p1}, Ljava/io/NotSerializableException;-><init>()V

    throw p1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0

    new-instance p1, Ljava/io/NotSerializableException;

    invoke-direct {p1}, Ljava/io/NotSerializableException;-><init>()V

    throw p1
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    check-cast p1, Lp;

    iget-wide v0, p0, Lp;->f:J

    iget-wide v2, p1, Lp;->f:J

    const/4 v4, 0x1

    const/4 v5, -0x1

    cmp-long v6, v0, v2

    if-eqz v6, :cond_1

    cmp-long p1, v0, v2

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    return v5

    :cond_1
    iget-wide v0, p0, Lp;->a:D

    iget-wide v2, p1, Lp;->a:D

    cmpl-double v6, v0, v2

    if-eqz v6, :cond_3

    cmpg-double p1, v0, v2

    if-ltz p1, :cond_2

    goto :goto_0

    :cond_2
    return v5

    :cond_3
    iget v0, p0, Lp;->b:I

    iget v1, p1, Lp;->b:I

    if-eq v0, v1, :cond_5

    if-lt v0, v1, :cond_4

    goto :goto_0

    :cond_4
    return v5

    :cond_5
    iget-wide v0, p0, Lp;->d:J

    iget-wide v2, p1, Lp;->d:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_7

    cmp-long p1, v0, v2

    if-ltz p1, :cond_6

    goto :goto_0

    :cond_6
    return v5

    :cond_7
    const/4 v4, 0x0

    :goto_0
    return v4
.end method

.method public final doubleValue()D
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lp;->g:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lp;->a:D

    neg-double v0, v0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lp;->a:D

    :goto_0
    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Lp;

    if-nez v2, :cond_2

    return v0

    :cond_2
    check-cast p1, Lp;

    iget-wide v2, p0, Lp;->a:D

    iget-wide v4, p1, Lp;->a:D

    cmpl-double v6, v2, v4

    if-nez v6, :cond_3

    iget v2, p0, Lp;->b:I

    iget v3, p1, Lp;->b:I

    if-ne v2, v3, :cond_3

    iget-wide v2, p0, Lp;->d:J

    iget-wide v4, p1, Lp;->d:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public final floatValue()F
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-wide v0, p0, Lp;->a:D

    double-to-float v0, v0

    return v0
.end method

.method public final hashCode()I
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-wide v0, p0, Lp;->d:J

    iget v2, p0, Lp;->b:I

    iget-wide v3, p0, Lp;->a:D

    const-wide v5, 0x4042800000000000L    # 37.0

    mul-double v3, v3, v5

    double-to-int v3, v3

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x25

    int-to-long v2, v2

    add-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public final intValue()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-wide v0, p0, Lp;->f:J

    long-to-int v1, v0

    return v1
.end method

.method public final longValue()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-wide v0, p0, Lp;->f:J

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lp;->b:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "f"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, p0, Lp;->a:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
