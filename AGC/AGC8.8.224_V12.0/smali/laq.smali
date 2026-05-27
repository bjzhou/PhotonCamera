.class public Llaq;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lkym;

.field public final b:[Llac;

.field public final c:Llad;

.field private final d:I


# direct methods
.method public constructor <init>(Llad;Lkym;)V
    .locals 1

    invoke-virtual {p2}, Lkyn;->b()I

    move-result v0

    mul-int/lit8 v0, v0, 0x20

    invoke-direct {p0, p1, p2, v0}, Llaq;-><init>(Llad;Lkym;I)V

    return-void
.end method

.method protected constructor <init>(Llad;Lkym;I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Lkyn;->b()I

    move-result v0

    const/16 v1, 0x20

    mul-int/lit8 v0, v0, 0x20

    const/4 v2, 0x0

    if-lt p3, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "row stride that is shorter than row data size"

    invoke-static {v0, v3}, Lmoz;->f(ZLjava/lang/Object;)V

    iput-object p1, p0, Llaq;->c:Llad;

    iput-object p2, p0, Llaq;->a:Lkym;

    iput p3, p0, Llaq;->d:I

    filled-new-array {v1, p3}, [I

    move-result-object p1

    const/4 p2, 0x4

    new-array p3, p2, [Llac;

    iput-object p3, p0, Llaq;->b:[Llac;

    :goto_1
    if-ge v2, p2, :cond_1

    iget-object p3, p0, Llaq;->b:[Llac;

    new-instance v0, Llac;

    iget-object v1, p0, Llaq;->c:Llad;

    mul-int/lit8 v3, v2, 0x8

    invoke-direct {v0, v1, v3, p1}, Llac;-><init>(Llad;I[I)V

    aput-object v0, p3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lkyn;)Llaq;
    .locals 2

    new-instance v0, Llaq;

    iget-object v1, p0, Llaq;->c:Llad;

    invoke-virtual {p1}, Lkyn;->c()Lkym;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Llaq;-><init>(Llad;Lkym;)V

    return-object v0
.end method

.method public bridge synthetic b(Lkyn;)Llaq;
    .locals 0

    invoke-virtual {p0, p1}, Llaq;->a(Lkyn;)Llaq;

    move-result-object p1

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Llaq;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Llaq;

    iget-object v1, p1, Llaq;->b:[Llac;

    iget v1, p0, Llaq;->d:I

    iget v3, p1, Llaq;->d:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Llaq;->a:Lkym;

    iget-object v3, p1, Llaq;->a:Lkym;

    invoke-virtual {v1, v3}, Lkyn;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Llaq;->c:Llad;

    iget-object p1, p1, Llaq;->c:Llad;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Llaq;->a:Lkym;

    invoke-virtual {v0}, Lkyn;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Llaq;->d:I

    add-int/2addr v0, v1

    iget-object v1, p0, Llaq;->c:Llad;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "RGBANorm8"

    return-object v0
.end method
