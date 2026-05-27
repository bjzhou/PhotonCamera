.class public final Lkff;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:B

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lkfh;
    .locals 5

    iget-byte v0, p0, Lkff;->b:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lkff;->c:I

    if-eqz v0, :cond_1

    iget v1, p0, Lkff;->d:I

    if-eqz v1, :cond_1

    iget v2, p0, Lkff;->e:I

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Lkfh;

    iget-boolean v4, p0, Lkff;->a:Z

    invoke-direct {v3, v0, v1, v2, v4}, Lkfh;-><init>(IIIZ)V

    return-object v3

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lkff;->c:I

    if-nez v1, :cond_2

    const-string v1, " exposure"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget v1, p0, Lkff;->d:I

    if-nez v1, :cond_3

    const-string v1, " focus"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget v1, p0, Lkff;->e:I

    if-nez v1, :cond_4

    const-string v1, " whiteBalance"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-byte v1, p0, Lkff;->b:B

    if-nez v1, :cond_5

    const-string v1, " forCapture"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
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
    .locals 1

    if-eqz p1, :cond_0

    iput p1, p0, Lkff;->c:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null exposure"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(I)V
    .locals 1

    if-eqz p1, :cond_0

    iput p1, p0, Lkff;->d:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null focus"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d(Z)V
    .locals 0

    iput-boolean p1, p0, Lkff;->a:Z

    const/4 p1, 0x1

    iput-byte p1, p0, Lkff;->b:B

    return-void
.end method

.method public final e(I)V
    .locals 1

    if-eqz p1, :cond_0

    iput p1, p0, Lkff;->e:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null whiteBalance"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
