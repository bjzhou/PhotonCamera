.class final Lt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ln;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final a:I

.field private final b:Z

.field private final c:Z

.field private final d:D

.field private final e:D

.field private final f:[J

.field private final g:I


# direct methods
.method public constructor <init>(IZIZDD[J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lt;->a:I

    iput-boolean p2, p0, Lt;->b:Z

    iput-boolean p4, p0, Lt;->c:Z

    iput-wide p5, p0, Lt;->d:D

    iput-wide p7, p0, Lt;->e:D

    iput-object p9, p0, Lt;->f:[J

    iput p3, p0, Lt;->g:I

    return-void
.end method


# virtual methods
.method public final a(Lp;)Z
    .locals 10

    iget v0, p0, Lt;->g:I

    add-int/lit8 v1, v0, -0x1

    packed-switch v1, :pswitch_data_0

    iget-wide v1, p1, Lp;->a:D

    goto :goto_2

    :pswitch_0
    iget v1, p1, Lp;->c:I

    goto :goto_0

    :pswitch_1
    iget v1, p1, Lp;->b:I

    :goto_0
    int-to-double v1, v1

    goto :goto_2

    :pswitch_2
    iget-wide v1, p1, Lp;->e:J

    goto :goto_1

    :pswitch_3
    iget-wide v1, p1, Lp;->d:J

    goto :goto_1

    :pswitch_4
    iget-wide v1, p1, Lp;->f:J

    :goto_1
    long-to-double v1, v1

    :goto_2
    iget-boolean v3, p0, Lt;->c:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    double-to-long v6, v1

    long-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v6, v1, v6

    const-wide/16 v8, 0x0

    cmpl-double v3, v6, v8

    if-nez v3, :cond_1

    :cond_0
    const/4 v3, 0x7

    if-ne v0, v3, :cond_3

    iget p1, p1, Lp;->b:I

    if-eqz p1, :cond_3

    :cond_1
    iget-boolean p1, p0, Lt;->b:Z

    if-nez p1, :cond_2

    return v4

    :cond_2
    return v5

    :cond_3
    iget p1, p0, Lt;->a:I

    if-eqz p1, :cond_4

    int-to-double v6, p1

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    rem-double/2addr v1, v6

    goto :goto_3

    :cond_4
    :goto_3
    iget-wide v6, p0, Lt;->d:D

    cmpl-double p1, v1, v6

    if-ltz p1, :cond_5

    iget-wide v6, p0, Lt;->e:D

    cmpg-double p1, v1, v6

    if-gtz p1, :cond_5

    const/4 p1, 0x1

    goto :goto_4

    :cond_5
    const/4 p1, 0x0

    :goto_4
    if-eqz p1, :cond_7

    iget-object v0, p0, Lt;->f:[J

    if-eqz v0, :cond_7

    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_5
    if-nez p1, :cond_7

    iget-object v3, p0, Lt;->f:[J

    array-length v6, v3

    if-ge v0, v6, :cond_7

    aget-wide v6, v3, v0

    long-to-double v6, v6

    cmpl-double p1, v1, v6

    if-ltz p1, :cond_6

    add-int/lit8 p1, v0, 0x1

    aget-wide v6, v3, p1

    long-to-double v6, v6

    cmpg-double p1, v1, v6

    if-gtz p1, :cond_6

    const/4 p1, 0x1

    goto :goto_6

    :cond_6
    const/4 p1, 0x0

    :goto_6
    add-int/lit8 v0, v0, 0x2

    goto :goto_5

    :cond_7
    iget-boolean v0, p0, Lt;->b:Z

    if-ne v0, p1, :cond_8

    return v4

    :cond_8
    return v5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lt;->g:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "j"

    goto :goto_0

    :pswitch_0
    const-string v0, "w"

    goto :goto_0

    :pswitch_1
    const-string v0, "v"

    goto :goto_0

    :pswitch_2
    const-string v0, "t"

    goto :goto_0

    :pswitch_3
    const-string v0, "f"

    goto :goto_0

    :pswitch_4
    const-string v0, "i"

    goto :goto_0

    :pswitch_5
    const-string v0, "n"

    :goto_0
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget v0, p0, Lt;->a:I

    if-eqz v0, :cond_0

    const-string v0, " % "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lt;->a:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    iget-wide v0, p0, Lt;->d:D

    iget-wide v2, p0, Lt;->e:D

    const-string v4, " = "

    const-string v5, " != "

    cmpl-double v7, v0, v2

    if-eqz v7, :cond_3

    iget-boolean v0, p0, Lt;->c:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lt;->b:Z

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lt;->b:Z

    if-eqz v0, :cond_2

    const-string v4, " within "

    goto :goto_1

    :cond_2
    const-string v4, " not within "

    goto :goto_1

    :cond_3
    iget-boolean v0, p0, Lt;->b:Z

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    move-object v4, v5

    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lt;->f:[J

    if-eqz v0, :cond_6

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_2
    iget-object v0, p0, Lt;->f:[J

    array-length v1, v0

    if-ge v8, v1, :cond_7

    aget-wide v1, v0, v8

    long-to-double v1, v1

    add-int/lit8 v3, v8, 0x1

    aget-wide v3, v0, v3

    long-to-double v3, v3

    if-eqz v8, :cond_5

    const/4 v0, 0x1

    const/4 v5, 0x1

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    :goto_3
    move-object v0, v6

    invoke-static/range {v0 .. v5}, Lw;->b(Ljava/lang/StringBuilder;DDZ)V

    add-int/lit8 v8, v8, 0x2

    goto :goto_2

    :cond_6
    iget-wide v1, p0, Lt;->d:D

    iget-wide v3, p0, Lt;->e:D

    const/4 v5, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Lw;->b(Ljava/lang/StringBuilder;DDZ)V

    :cond_7
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
