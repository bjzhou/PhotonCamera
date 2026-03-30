.class public final Lj$/util/OptionalInt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:Lj$/util/OptionalInt;


# instance fields
.field private final a:Z

.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lj$/util/OptionalInt;

    invoke-direct {v0}, Lj$/util/OptionalInt;-><init>()V

    sput-object v0, Lj$/util/OptionalInt;->c:Lj$/util/OptionalInt;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lj$/util/OptionalInt;->a:Z

    iput v0, p0, Lj$/util/OptionalInt;->b:I

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/OptionalInt;->a:Z

    iput p1, p0, Lj$/util/OptionalInt;->b:I

    return-void
.end method

.method public static empty()Lj$/util/OptionalInt;
    .locals 1

    sget-object v0, Lj$/util/OptionalInt;->c:Lj$/util/OptionalInt;

    return-object v0
.end method

.method public static of(I)Lj$/util/OptionalInt;
    .locals 1

    new-instance v0, Lj$/util/OptionalInt;

    invoke-direct {v0, p0}, Lj$/util/OptionalInt;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lj$/util/OptionalInt;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lj$/util/OptionalInt;

    iget-boolean v1, p0, Lj$/util/OptionalInt;->a:Z

    if-eqz v1, :cond_3

    iget-boolean v3, p1, Lj$/util/OptionalInt;->a:Z

    if-eqz v3, :cond_3

    iget v1, p0, Lj$/util/OptionalInt;->b:I

    iget p1, p1, Lj$/util/OptionalInt;->b:I

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-boolean p1, p1, Lj$/util/OptionalInt;->a:Z

    if-ne v1, p1, :cond_2

    :goto_0
    return v0
.end method

.method public getAsInt()I
    .locals 2

    iget-boolean v0, p0, Lj$/util/OptionalInt;->a:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lj$/util/OptionalInt;->b:I

    return v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No value present"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 1

    iget-boolean v0, p0, Lj$/util/OptionalInt;->a:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lj$/util/OptionalInt;->b:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ifPresent(Ljava/util/function/IntConsumer;)V
    .locals 1

    iget-boolean v0, p0, Lj$/util/OptionalInt;->a:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lj$/util/OptionalInt;->b:I

    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    :cond_0
    return-void
.end method

.method public isPresent()Z
    .locals 1

    iget-boolean v0, p0, Lj$/util/OptionalInt;->a:Z

    return v0
.end method

.method public orElse(I)I
    .locals 1

    iget-boolean v0, p0, Lj$/util/OptionalInt;->a:Z

    if-eqz v0, :cond_0

    iget p1, p0, Lj$/util/OptionalInt;->b:I

    :cond_0
    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lj$/util/OptionalInt;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OptionalInt["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lj$/util/OptionalInt;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "OptionalInt.empty"

    :goto_0
    return-object v0
.end method
