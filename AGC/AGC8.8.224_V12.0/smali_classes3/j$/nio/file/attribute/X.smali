.class public final synthetic Lj$/nio/file/attribute/X;
.super Ljava/nio/file/attribute/UserPrincipalLookupService;


# instance fields
.field public final synthetic a:Lj$/nio/file/attribute/Y;


# direct methods
.method private synthetic constructor <init>(Lj$/nio/file/attribute/Y;)V
    .locals 0

    invoke-direct {p0}, Ljava/nio/file/attribute/UserPrincipalLookupService;-><init>()V

    iput-object p1, p0, Lj$/nio/file/attribute/X;->a:Lj$/nio/file/attribute/Y;

    return-void
.end method

.method public static synthetic a(Lj$/nio/file/attribute/Y;)Ljava/nio/file/attribute/UserPrincipalLookupService;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/nio/file/attribute/W;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/nio/file/attribute/W;

    iget-object p0, p0, Lj$/nio/file/attribute/W;->a:Ljava/nio/file/attribute/UserPrincipalLookupService;

    return-object p0

    :cond_1
    new-instance v0, Lj$/nio/file/attribute/X;

    invoke-direct {v0, p0}, Lj$/nio/file/attribute/X;-><init>(Lj$/nio/file/attribute/Y;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/nio/file/attribute/X;->a:Lj$/nio/file/attribute/Y;

    instance-of v1, p1, Lj$/nio/file/attribute/X;

    if-eqz v1, :cond_0

    check-cast p1, Lj$/nio/file/attribute/X;

    iget-object p1, p1, Lj$/nio/file/attribute/X;->a:Lj$/nio/file/attribute/Y;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/X;->a:Lj$/nio/file/attribute/Y;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final synthetic lookupPrincipalByGroupName(Ljava/lang/String;)Ljava/nio/file/attribute/GroupPrincipal;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/X;->a:Lj$/nio/file/attribute/Y;

    invoke-virtual {v0, p1}, Lj$/nio/file/attribute/Y;->a(Ljava/lang/String;)Lj$/nio/file/attribute/H;

    move-result-object p1

    invoke-static {p1}, Lj$/nio/file/attribute/G;->a(Lj$/nio/file/attribute/H;)Ljava/nio/file/attribute/GroupPrincipal;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic lookupPrincipalByName(Ljava/lang/String;)Ljava/nio/file/attribute/UserPrincipal;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/X;->a:Lj$/nio/file/attribute/Y;

    invoke-virtual {v0, p1}, Lj$/nio/file/attribute/Y;->b(Ljava/lang/String;)Lj$/nio/file/attribute/V;

    move-result-object p1

    invoke-static {p1}, Lj$/nio/file/attribute/U;->a(Lj$/nio/file/attribute/V;)Ljava/nio/file/attribute/UserPrincipal;

    move-result-object p1

    return-object p1
.end method
