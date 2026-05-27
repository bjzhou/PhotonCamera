.class public final Lokf;
.super Lokh;

# interfaces
.implements Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Lokj;)V
    .locals 0

    invoke-direct {p0, p1}, Lokh;-><init>(Lokj;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lokh;->b:I

    iget-object v1, p0, Lokh;->a:Lokj;

    iget v2, v1, Lokj;->d:I

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lokh;->b:I

    iput v0, p0, Lokh;->c:I

    new-instance v2, Lokg;

    invoke-direct {v2, v1, v0}, Lokg;-><init>(Lokj;I)V

    invoke-virtual {p0}, Lokh;->a()V

    return-object v2

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
