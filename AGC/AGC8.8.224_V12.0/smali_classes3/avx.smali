.class public final Lavx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final a:Lavx;


# instance fields
.field public final b:I

.field public final c:I

.field public final d:I

.field private final e:Ljava/lang/String;

.field private final f:Loja;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lavx;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-direct {v0, v1, v1, v1, v2}, Lavx;-><init>(IIILjava/lang/String;)V

    new-instance v0, Lavx;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v1, v2}, Lavx;-><init>(IIILjava/lang/String;)V

    sput-object v0, Lavx;->a:Lavx;

    new-instance v0, Lavx;

    invoke-direct {v0, v3, v1, v1, v2}, Lavx;-><init>(IIILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lavx;->b:I

    iput p2, p0, Lavx;->c:I

    iput p3, p0, Lavx;->d:I

    iput-object p4, p0, Lavx;->e:Ljava/lang/String;

    new-instance p1, Lpo;

    const/4 p2, 0x7

    invoke-direct {p1, p0, p2}, Lpo;-><init>(Lavx;I)V

    invoke-static {p1}, Lljr;->aP(Lolz;)Loja;

    move-result-object p1

    iput-object p1, p0, Lavx;->f:Loja;

    return-void
.end method

.method private final b()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lavx;->f:Loja;

    invoke-interface {v0}, Loja;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Ljava/math/BigInteger;

    return-object v0
.end method


# virtual methods
.method public final a(Lavx;)I
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lavx;->b()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {p1}, Lavx;->b()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    return p1
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lavx;

    invoke-virtual {p0, p1}, Lavx;->a(Lavx;)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lavx;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lavx;->b:I

    check-cast p1, Lavx;

    iget v2, p1, Lavx;->b:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lavx;->c:I

    iget v2, p1, Lavx;->c:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lavx;->d:I

    iget p1, p1, Lavx;->d:I

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lavx;->b:I

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lavx;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lavx;->d:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lavx;->e:Ljava/lang/String;

    invoke-static {v0}, Lolp;->o(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lavx;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lavx;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v3, p0, Lavx;->c:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lavx;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
