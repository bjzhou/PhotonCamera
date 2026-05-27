.class public final synthetic Lj$/nio/file/A;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/nio/file/PathMatcher;


# instance fields
.field public final synthetic a:Lj$/nio/file/B;


# direct methods
.method private synthetic constructor <init>(Lj$/nio/file/B;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/nio/file/A;->a:Lj$/nio/file/B;

    return-void
.end method

.method public static synthetic a(Lj$/nio/file/B;)Ljava/nio/file/PathMatcher;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/nio/file/z;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/nio/file/z;

    iget-object p0, p0, Lj$/nio/file/z;->a:Ljava/nio/file/PathMatcher;

    return-object p0

    :cond_1
    new-instance v0, Lj$/nio/file/A;

    invoke-direct {v0, p0}, Lj$/nio/file/A;-><init>(Lj$/nio/file/B;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/nio/file/A;->a:Lj$/nio/file/B;

    instance-of v1, p1, Lj$/nio/file/A;

    if-eqz v1, :cond_0

    check-cast p1, Lj$/nio/file/A;

    iget-object p1, p1, Lj$/nio/file/A;->a:Lj$/nio/file/B;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/nio/file/A;->a:Lj$/nio/file/B;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final synthetic matches(Ljava/nio/file/Path;)Z
    .locals 1

    iget-object v0, p0, Lj$/nio/file/A;->a:Lj$/nio/file/B;

    invoke-static {p1}, Lj$/nio/file/s;->a(Ljava/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object p1

    invoke-interface {v0, p1}, Lj$/nio/file/B;->a(Lj$/nio/file/Path;)Z

    move-result p1

    return p1
.end method
