.class public final synthetic Lj$/nio/file/attribute/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/nio/file/attribute/FileOwnerAttributeView;


# instance fields
.field public final synthetic a:Lj$/nio/file/attribute/z;


# direct methods
.method private synthetic constructor <init>(Lj$/nio/file/attribute/z;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/nio/file/attribute/y;->a:Lj$/nio/file/attribute/z;

    return-void
.end method

.method public static synthetic a(Lj$/nio/file/attribute/z;)Ljava/nio/file/attribute/FileOwnerAttributeView;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/nio/file/attribute/x;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/nio/file/attribute/x;

    iget-object p0, p0, Lj$/nio/file/attribute/x;->a:Ljava/nio/file/attribute/FileOwnerAttributeView;

    return-object p0

    :cond_1
    instance-of v0, p0, Lj$/nio/file/attribute/c;

    if-eqz v0, :cond_2

    check-cast p0, Lj$/nio/file/attribute/c;

    invoke-static {p0}, Lj$/nio/file/attribute/b;->a(Lj$/nio/file/attribute/c;)Ljava/nio/file/attribute/AclFileAttributeView;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of v0, p0, Lj$/nio/file/attribute/K;

    if-eqz v0, :cond_3

    check-cast p0, Lj$/nio/file/attribute/K;

    invoke-static {p0}, Lj$/nio/file/attribute/J;->a(Lj$/nio/file/attribute/K;)Ljava/nio/file/attribute/PosixFileAttributeView;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance v0, Lj$/nio/file/attribute/y;

    invoke-direct {v0, p0}, Lj$/nio/file/attribute/y;-><init>(Lj$/nio/file/attribute/z;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/nio/file/attribute/y;->a:Lj$/nio/file/attribute/z;

    instance-of v1, p1, Lj$/nio/file/attribute/y;

    if-eqz v1, :cond_0

    check-cast p1, Lj$/nio/file/attribute/y;

    iget-object p1, p1, Lj$/nio/file/attribute/y;->a:Lj$/nio/file/attribute/z;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic getOwner()Ljava/nio/file/attribute/UserPrincipal;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/y;->a:Lj$/nio/file/attribute/z;

    invoke-interface {v0}, Lj$/nio/file/attribute/z;->getOwner()Lj$/nio/file/attribute/V;

    move-result-object v0

    invoke-static {v0}, Lj$/nio/file/attribute/U;->a(Lj$/nio/file/attribute/V;)Ljava/nio/file/attribute/UserPrincipal;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/y;->a:Lj$/nio/file/attribute/z;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final synthetic name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/y;->a:Lj$/nio/file/attribute/z;

    invoke-interface {v0}, Lj$/nio/file/attribute/z;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic setOwner(Ljava/nio/file/attribute/UserPrincipal;)V
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/y;->a:Lj$/nio/file/attribute/z;

    invoke-static {p1}, Lj$/nio/file/attribute/T;->a(Ljava/nio/file/attribute/UserPrincipal;)Lj$/nio/file/attribute/V;

    move-result-object p1

    invoke-interface {v0, p1}, Lj$/nio/file/attribute/z;->b(Lj$/nio/file/attribute/V;)V

    return-void
.end method
