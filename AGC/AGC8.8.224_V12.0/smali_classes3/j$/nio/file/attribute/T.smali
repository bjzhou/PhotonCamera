.class public final synthetic Lj$/nio/file/attribute/T;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/nio/file/attribute/V;


# instance fields
.field public final synthetic a:Ljava/nio/file/attribute/UserPrincipal;


# direct methods
.method private synthetic constructor <init>(Ljava/nio/file/attribute/UserPrincipal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/nio/file/attribute/T;->a:Ljava/nio/file/attribute/UserPrincipal;

    return-void
.end method

.method public static synthetic a(Ljava/nio/file/attribute/UserPrincipal;)Lj$/nio/file/attribute/V;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/nio/file/attribute/U;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/nio/file/attribute/U;

    iget-object p0, p0, Lj$/nio/file/attribute/U;->a:Lj$/nio/file/attribute/V;

    return-object p0

    :cond_1
    instance-of v0, p0, Ljava/nio/file/attribute/GroupPrincipal;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/nio/file/attribute/GroupPrincipal;

    invoke-static {p0}, Lj$/nio/file/attribute/F;->a(Ljava/nio/file/attribute/GroupPrincipal;)Lj$/nio/file/attribute/H;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance v0, Lj$/nio/file/attribute/T;

    invoke-direct {v0, p0}, Lj$/nio/file/attribute/T;-><init>(Ljava/nio/file/attribute/UserPrincipal;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lj$/nio/file/attribute/T;

    if-eqz v0, :cond_0

    check-cast p1, Lj$/nio/file/attribute/T;

    iget-object p1, p1, Lj$/nio/file/attribute/T;->a:Ljava/nio/file/attribute/UserPrincipal;

    :cond_0
    iget-object v0, p0, Lj$/nio/file/attribute/T;->a:Ljava/nio/file/attribute/UserPrincipal;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/T;->a:Ljava/nio/file/attribute/UserPrincipal;

    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/T;->a:Ljava/nio/file/attribute/UserPrincipal;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final synthetic implies(Ljavax/security/auth/Subject;)Z
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/T;->a:Ljava/nio/file/attribute/UserPrincipal;

    invoke-interface {v0, p1}, Ljava/security/Principal;->implies(Ljavax/security/auth/Subject;)Z

    move-result p1

    return p1
.end method

.method public final synthetic toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/T;->a:Ljava/nio/file/attribute/UserPrincipal;

    invoke-interface {v0}, Ljava/security/Principal;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
