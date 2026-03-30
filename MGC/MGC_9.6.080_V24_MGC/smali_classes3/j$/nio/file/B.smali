.class public final synthetic Lj$/nio/file/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/nio/file/D;


# instance fields
.field public final synthetic a:Ljava/nio/file/PathMatcher;


# direct methods
.method private synthetic constructor <init>(Ljava/nio/file/PathMatcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/nio/file/B;->a:Ljava/nio/file/PathMatcher;

    return-void
.end method

.method public static synthetic b(Ljava/nio/file/PathMatcher;)Lj$/nio/file/D;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/nio/file/C;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/nio/file/C;

    iget-object p0, p0, Lj$/nio/file/C;->a:Lj$/nio/file/D;

    return-object p0

    :cond_1
    new-instance v0, Lj$/nio/file/B;

    invoke-direct {v0, p0}, Lj$/nio/file/B;-><init>(Ljava/nio/file/PathMatcher;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Lj$/nio/file/Path;)Z
    .locals 1

    iget-object v0, p0, Lj$/nio/file/B;->a:Ljava/nio/file/PathMatcher;

    invoke-static {p1}, Lj$/nio/file/v;->k(Lj$/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-static {v0, p1}, Lj$/nio/file/t;->n(Ljava/nio/file/PathMatcher;Ljava/nio/file/Path;)Z

    move-result p1

    return p1
.end method

.method public final synthetic equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/nio/file/B;->a:Ljava/nio/file/PathMatcher;

    instance-of v1, p1, Lj$/nio/file/B;

    if-eqz v1, :cond_0

    check-cast p1, Lj$/nio/file/B;

    iget-object p1, p1, Lj$/nio/file/B;->a:Ljava/nio/file/PathMatcher;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/nio/file/B;->a:Ljava/nio/file/PathMatcher;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
