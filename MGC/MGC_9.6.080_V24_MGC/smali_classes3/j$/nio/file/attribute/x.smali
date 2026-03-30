.class public final synthetic Lj$/nio/file/attribute/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/nio/file/attribute/E;


# instance fields
.field public final synthetic a:Ljava/nio/file/attribute/GroupPrincipal;


# direct methods
.method private synthetic constructor <init>(Ljava/nio/file/attribute/GroupPrincipal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/nio/file/attribute/x;->a:Ljava/nio/file/attribute/GroupPrincipal;

    return-void
.end method

.method public static synthetic a(Ljava/nio/file/attribute/GroupPrincipal;)Lj$/nio/file/attribute/x;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lj$/nio/file/attribute/x;

    invoke-direct {v0, p0}, Lj$/nio/file/attribute/x;-><init>(Ljava/nio/file/attribute/GroupPrincipal;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/nio/file/attribute/x;->a:Ljava/nio/file/attribute/GroupPrincipal;

    instance-of v1, p1, Lj$/nio/file/attribute/x;

    if-eqz v1, :cond_0

    check-cast p1, Lj$/nio/file/attribute/x;

    iget-object p1, p1, Lj$/nio/file/attribute/x;->a:Ljava/nio/file/attribute/GroupPrincipal;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/x;->a:Ljava/nio/file/attribute/GroupPrincipal;

    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/x;->a:Ljava/nio/file/attribute/GroupPrincipal;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final synthetic implies(Ljavax/security/auth/Subject;)Z
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/x;->a:Ljava/nio/file/attribute/GroupPrincipal;

    invoke-static {v0, p1}, Lj$/nio/file/attribute/r;->u(Ljava/security/Principal;Ljavax/security/auth/Subject;)Z

    move-result p1

    return p1
.end method

.method public final synthetic toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/x;->a:Ljava/nio/file/attribute/GroupPrincipal;

    invoke-interface {v0}, Ljava/security/Principal;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
