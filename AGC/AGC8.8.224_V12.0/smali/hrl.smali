.class public final Lhrl;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field private b:Lhrg;

.field private c:Landroid/graphics/RectF;

.field private d:F

.field private e:I

.field private f:J

.field private g:B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lhrm;
    .locals 10

    iget-byte v0, p0, Lhrl;->g:B

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    iget v3, p0, Lhrl;->a:I

    if-eqz v3, :cond_1

    iget-object v4, p0, Lhrl;->b:Lhrg;

    if-eqz v4, :cond_1

    iget-object v5, p0, Lhrl;->c:Landroid/graphics/RectF;

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lhrm;

    iget v6, p0, Lhrl;->d:F

    iget v7, p0, Lhrl;->e:I

    iget-wide v8, p0, Lhrl;->f:J

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lhrm;-><init>(ILhrg;Landroid/graphics/RectF;FIJ)V

    return-object v0

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lhrl;->a:I

    if-nez v1, :cond_2

    const-string v1, " status"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lhrl;->b:Lhrg;

    if-nez v1, :cond_3

    const-string v1, " trackerType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Lhrl;->c:Landroid/graphics/RectF;

    if-nez v1, :cond_4

    const-string v1, " roi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-byte v1, p0, Lhrl;->g:B

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_5

    const-string v1, " confidence"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-byte v1, p0, Lhrl;->g:B

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_6

    const-string v1, " numberOfRefresherCalls"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-byte v1, p0, Lhrl;->g:B

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_7

    const-string v1, " trackedLengthMs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final b(F)V
    .locals 0

    iput p1, p0, Lhrl;->d:F

    iget-byte p1, p0, Lhrl;->g:B

    or-int/lit8 p1, p1, 0x1

    int-to-byte p1, p1

    iput-byte p1, p0, Lhrl;->g:B

    return-void
.end method

.method public final c(I)V
    .locals 0

    iput p1, p0, Lhrl;->e:I

    iget-byte p1, p0, Lhrl;->g:B

    or-int/lit8 p1, p1, 0x2

    int-to-byte p1, p1

    iput-byte p1, p0, Lhrl;->g:B

    return-void
.end method

.method public final d(Landroid/graphics/RectF;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lhrl;->c:Landroid/graphics/RectF;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null roi"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final e(J)V
    .locals 0

    iput-wide p1, p0, Lhrl;->f:J

    iget-byte p1, p0, Lhrl;->g:B

    or-int/lit8 p1, p1, 0x4

    int-to-byte p1, p1

    iput-byte p1, p0, Lhrl;->g:B

    return-void
.end method

.method public final f(Lhrg;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lhrl;->b:Lhrg;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null trackerType"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
