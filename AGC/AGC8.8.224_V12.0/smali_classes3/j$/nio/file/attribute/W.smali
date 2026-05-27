.class public final synthetic Lj$/nio/file/attribute/W;
.super Lj$/nio/file/attribute/Y;


# instance fields
.field public final synthetic a:Ljava/nio/file/attribute/UserPrincipalLookupService;


# direct methods
.method private synthetic constructor <init>(Ljava/nio/file/attribute/UserPrincipalLookupService;)V
    .locals 0

    invoke-direct {p0}, Lj$/nio/file/attribute/Y;-><init>()V

    iput-object p1, p0, Lj$/nio/file/attribute/W;->a:Ljava/nio/file/attribute/UserPrincipalLookupService;

    return-void
.end method

.method public static synthetic e(Ljava/nio/file/attribute/UserPrincipalLookupService;)Lj$/nio/file/attribute/Y;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/nio/file/attribute/X;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/nio/file/attribute/X;

    iget-object p0, p0, Lj$/nio/file/attribute/X;->a:Lj$/nio/file/attribute/Y;

    return-object p0

    :cond_1
    new-instance v0, Lj$/nio/file/attribute/W;

    invoke-direct {v0, p0}, Lj$/nio/file/attribute/W;-><init>(Ljava/nio/file/attribute/UserPrincipalLookupService;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/String;)Lj$/nio/file/attribute/H;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/W;->a:Ljava/nio/file/attribute/UserPrincipalLookupService;

    invoke-virtual {v0, p1}, Ljava/nio/file/attribute/UserPrincipalLookupService;->lookupPrincipalByGroupName(Ljava/lang/String;)Ljava/nio/file/attribute/GroupPrincipal;

    move-result-object p1

    invoke-static {p1}, Lj$/nio/file/attribute/F;->a(Ljava/nio/file/attribute/GroupPrincipal;)Lj$/nio/file/attribute/H;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic b(Ljava/lang/String;)Lj$/nio/file/attribute/V;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/W;->a:Ljava/nio/file/attribute/UserPrincipalLookupService;

    invoke-virtual {v0, p1}, Ljava/nio/file/attribute/UserPrincipalLookupService;->lookupPrincipalByName(Ljava/lang/String;)Ljava/nio/file/attribute/UserPrincipal;

    move-result-object p1

    invoke-static {p1}, Lj$/nio/file/attribute/T;->a(Ljava/nio/file/attribute/UserPrincipal;)Lj$/nio/file/attribute/V;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lj$/nio/file/attribute/W;

    if-eqz v0, :cond_0

    check-cast p1, Lj$/nio/file/attribute/W;

    iget-object p1, p1, Lj$/nio/file/attribute/W;->a:Ljava/nio/file/attribute/UserPrincipalLookupService;

    :cond_0
    iget-object v0, p0, Lj$/nio/file/attribute/W;->a:Ljava/nio/file/attribute/UserPrincipalLookupService;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/W;->a:Ljava/nio/file/attribute/UserPrincipalLookupService;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
