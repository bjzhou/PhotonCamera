.class public final Lneq;
.super Lnes;


# instance fields
.field private final a:Lnes;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnes;)V
    .locals 2

    invoke-direct {p0}, Lnes;-><init>()V

    iput-object p1, p0, Lneq;->a:Lnes;

    const-string p1, ":"

    iput-object p1, p0, Lneq;->b:Ljava/lang/String;

    const-string p1, "Cannot add a separator after every %s chars"

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Lmoz;->h(ZLjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a([BLjava/lang/CharSequence;)I
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    iget-object v3, p0, Lneq;->b:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lneq;->a:Lnes;

    invoke-virtual {p2, p1, v0}, Lnes;->a([BLjava/lang/CharSequence;)I

    move-result p1

    return p1
.end method

.method public final b(Ljava/lang/Appendable;[BI)V
    .locals 2

    iget-object v0, p0, Lneq;->a:Lnes;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {v1}, Lmoz;->e(Z)V

    new-instance v1, Lnem;

    invoke-direct {v1, p1}, Lnem;-><init>(Ljava/lang/Appendable;)V

    invoke-virtual {v0, v1, p2, p3}, Lnes;->b(Ljava/lang/Appendable;[BI)V

    return-void
.end method

.method public final c(I)I
    .locals 1

    iget-object v0, p0, Lneq;->a:Lnes;

    invoke-virtual {v0, p1}, Lnes;->c(I)I

    move-result p1

    return p1
.end method

.method public final d(I)I
    .locals 4

    iget-object v0, p0, Lneq;->a:Lnes;

    invoke-virtual {v0, p1}, Lnes;->d(I)I

    move-result p1

    iget-object v0, p0, Lneq;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, p1, -0x1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v2, 0x2

    sget-object v3, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-static {v1, v2, v3}, Lnsy;->ag(IILjava/math/RoundingMode;)I

    move-result v1

    mul-int v0, v0, v1

    add-int/2addr p1, v0

    return p1
.end method

.method public final e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lneq;->a:Lnes;

    invoke-virtual {v0, p1}, Lnes;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lneq;->a:Lnes;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".withSeparator(\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lneq;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", 2)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
