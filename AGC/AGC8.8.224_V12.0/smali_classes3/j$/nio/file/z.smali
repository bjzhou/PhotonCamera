.class public final synthetic Lj$/nio/file/z;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/nio/file/B;


# instance fields
.field public final synthetic a:Ljava/nio/file/PathMatcher;


# direct methods
.method private synthetic constructor <init>(Ljava/nio/file/PathMatcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/nio/file/z;->a:Ljava/nio/file/PathMatcher;

    return-void
.end method

.method public static synthetic b(Ljava/nio/file/PathMatcher;)Lj$/nio/file/B;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/nio/file/A;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/nio/file/A;

    iget-object p0, p0, Lj$/nio/file/A;->a:Lj$/nio/file/B;

    return-object p0

    :cond_1
    new-instance v0, Lj$/nio/file/z;

    invoke-direct {v0, p0}, Lj$/nio/file/z;-><init>(Ljava/nio/file/PathMatcher;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Lj$/nio/file/Path;)Z
    .locals 1

    iget-object v0, p0, Lj$/nio/file/z;->a:Ljava/nio/file/PathMatcher;

    invoke-static {p1}, Lj$/nio/file/t;->a(Lj$/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/nio/file/PathMatcher;->matches(Ljava/nio/file/Path;)Z

    move-result p1

    return p1
.end method

.method public final synthetic equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lj$/nio/file/z;

    if-eqz v0, :cond_0

    check-cast p1, Lj$/nio/file/z;

    iget-object p1, p1, Lj$/nio/file/z;->a:Ljava/nio/file/PathMatcher;

    :cond_0
    iget-object v0, p0, Lj$/nio/file/z;->a:Ljava/nio/file/PathMatcher;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/nio/file/z;->a:Ljava/nio/file/PathMatcher;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
