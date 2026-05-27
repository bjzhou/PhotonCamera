.class final Lj$/nio/file/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private a:I

.field final synthetic b:Lj$/nio/file/Path;


# direct methods
.method constructor <init>(Lj$/nio/file/Path;)V
    .locals 0

    iput-object p1, p0, Lj$/nio/file/r;->b:Lj$/nio/file/Path;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lj$/nio/file/r;->a:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lj$/nio/file/r;->a:I

    iget-object v1, p0, Lj$/nio/file/r;->b:Lj$/nio/file/Path;

    invoke-interface {v1}, Lj$/nio/file/Path;->getNameCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lj$/nio/file/r;->a:I

    iget-object v1, p0, Lj$/nio/file/r;->b:Lj$/nio/file/Path;

    invoke-interface {v1}, Lj$/nio/file/Path;->getNameCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget v0, p0, Lj$/nio/file/r;->a:I

    invoke-interface {v1, v0}, Lj$/nio/file/Path;->getName(I)Lj$/nio/file/Path;

    move-result-object v0

    iget v1, p0, Lj$/nio/file/r;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lj$/nio/file/r;->a:I

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
