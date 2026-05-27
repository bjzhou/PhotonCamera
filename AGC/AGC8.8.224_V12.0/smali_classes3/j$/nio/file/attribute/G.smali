.class public final synthetic Lj$/nio/file/attribute/G;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/nio/file/attribute/GroupPrincipal;


# instance fields
.field public final synthetic a:Lj$/nio/file/attribute/H;


# direct methods
.method private synthetic constructor <init>(Lj$/nio/file/attribute/H;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/nio/file/attribute/G;->a:Lj$/nio/file/attribute/H;

    return-void
.end method

.method public static synthetic a(Lj$/nio/file/attribute/H;)Ljava/nio/file/attribute/GroupPrincipal;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/nio/file/attribute/F;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/nio/file/attribute/F;

    iget-object p0, p0, Lj$/nio/file/attribute/F;->a:Ljava/nio/file/attribute/GroupPrincipal;

    return-object p0

    :cond_1
    new-instance v0, Lj$/nio/file/attribute/G;

    invoke-direct {v0, p0}, Lj$/nio/file/attribute/G;-><init>(Lj$/nio/file/attribute/H;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/nio/file/attribute/G;->a:Lj$/nio/file/attribute/H;

    instance-of v1, p1, Lj$/nio/file/attribute/G;

    if-eqz v1, :cond_0

    check-cast p1, Lj$/nio/file/attribute/G;

    iget-object p1, p1, Lj$/nio/file/attribute/G;->a:Lj$/nio/file/attribute/H;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/G;->a:Lj$/nio/file/attribute/H;

    check-cast v0, Lj$/nio/file/attribute/F;

    invoke-virtual {v0}, Lj$/nio/file/attribute/F;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/G;->a:Lj$/nio/file/attribute/H;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final synthetic implies(Ljavax/security/auth/Subject;)Z
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/G;->a:Lj$/nio/file/attribute/H;

    check-cast v0, Lj$/nio/file/attribute/F;

    invoke-virtual {v0, p1}, Lj$/nio/file/attribute/F;->implies(Ljavax/security/auth/Subject;)Z

    move-result p1

    return p1
.end method

.method public final synthetic toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/G;->a:Lj$/nio/file/attribute/H;

    check-cast v0, Lj$/nio/file/attribute/F;

    invoke-virtual {v0}, Lj$/nio/file/attribute/F;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
