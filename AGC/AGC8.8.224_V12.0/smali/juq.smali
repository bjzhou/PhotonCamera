.class public final Ljuq;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z

.field public c:B

.field public d:Ljup;

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljur;
    .locals 8

    iget-byte v0, p0, Ljuq;->c:B

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    iget-object v4, p0, Ljuq;->a:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v7, p0, Ljuq;->d:Ljup;

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljur;

    iget v3, p0, Ljuq;->e:I

    iget v5, p0, Ljuq;->f:I

    iget-boolean v6, p0, Ljuq;->b:Z

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Ljur;-><init>(ILjava/lang/String;IZLjup;)V

    return-object v0

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-byte v1, p0, Ljuq;->c:B

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_2

    const-string v1, " threadCount"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Ljuq;->a:Ljava/lang/String;

    if-nez v1, :cond_3

    const-string v1, " name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-byte v1, p0, Ljuq;->c:B

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_4

    const-string v1, " androidThreadPriority"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-byte v1, p0, Ljuq;->c:B

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_5

    const-string v1, " propagateErrors"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v1, p0, Ljuq;->d:Ljup;

    if-nez v1, :cond_6

    const-string v1, " threadBodyDecorator"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Ljuq;->f:I

    iget-byte p1, p0, Ljuq;->c:B

    or-int/lit8 p1, p1, 0x2

    int-to-byte p1, p1

    iput-byte p1, p0, Ljuq;->c:B

    return-void
.end method

.method public final c(I)V
    .locals 0

    iput p1, p0, Ljuq;->e:I

    iget-byte p1, p0, Ljuq;->c:B

    or-int/lit8 p1, p1, 0x1

    int-to-byte p1, p1

    iput-byte p1, p0, Ljuq;->c:B

    return-void
.end method
