.class public final synthetic Lj$/nio/file/attribute/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/nio/file/attribute/u;


# instance fields
.field public final synthetic a:Ljava/nio/file/attribute/AclFileAttributeView;


# direct methods
.method private synthetic constructor <init>(Ljava/nio/file/attribute/AclFileAttributeView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/nio/file/attribute/a;->a:Ljava/nio/file/attribute/AclFileAttributeView;

    return-void
.end method

.method public static synthetic c(Ljava/nio/file/attribute/AclFileAttributeView;)Lj$/nio/file/attribute/a;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lj$/nio/file/attribute/a;

    invoke-direct {v0, p0}, Lj$/nio/file/attribute/a;-><init>(Ljava/nio/file/attribute/AclFileAttributeView;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic b(Lj$/nio/file/attribute/E;)V
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/a;->a:Ljava/nio/file/attribute/AclFileAttributeView;

    invoke-static {p1}, Lj$/nio/file/attribute/D;->a(Lj$/nio/file/attribute/E;)Ljava/nio/file/attribute/UserPrincipal;

    move-result-object p1

    invoke-static {v0, p1}, Lj$/nio/file/t;->l(Ljava/nio/file/attribute/FileOwnerAttributeView;Ljava/nio/file/attribute/UserPrincipal;)V

    return-void
.end method

.method public final synthetic equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/nio/file/attribute/a;->a:Ljava/nio/file/attribute/AclFileAttributeView;

    instance-of v1, p1, Lj$/nio/file/attribute/a;

    if-eqz v1, :cond_0

    check-cast p1, Lj$/nio/file/attribute/a;

    iget-object p1, p1, Lj$/nio/file/attribute/a;->a:Ljava/nio/file/attribute/AclFileAttributeView;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic getOwner()Lj$/nio/file/attribute/E;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/a;->a:Ljava/nio/file/attribute/AclFileAttributeView;

    invoke-static {v0}, Lj$/nio/file/t;->j(Ljava/nio/file/attribute/FileOwnerAttributeView;)Ljava/nio/file/attribute/UserPrincipal;

    move-result-object v0

    invoke-static {v0}, Lj$/nio/file/attribute/C;->a(Ljava/nio/file/attribute/UserPrincipal;)Lj$/nio/file/attribute/E;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/a;->a:Ljava/nio/file/attribute/AclFileAttributeView;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final synthetic name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/a;->a:Ljava/nio/file/attribute/AclFileAttributeView;

    invoke-static {v0}, Lj$/nio/file/t;->c(Ljava/nio/file/attribute/AclFileAttributeView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
