.class final Lj$/util/t;
.super Lj$/util/n;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# static fields
.field private static final serialVersionUID:J = -0x2348186ae0b7b9b1L


# direct methods
.method private writeReplace()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lj$/util/n;

    iget-object v1, p0, Lj$/util/n;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Lj$/util/n;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public final subList(II)Ljava/util/List;
    .locals 2

    new-instance v0, Lj$/util/t;

    iget-object v1, p0, Lj$/util/n;->b:Ljava/util/List;

    invoke-interface {v1, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lj$/util/n;-><init>(Ljava/util/List;)V

    return-object v0
.end method
