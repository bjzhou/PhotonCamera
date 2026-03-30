.class public abstract synthetic Lj$/nio/file/t;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic A()Ljava/nio/file/StandardOpenOption;
    .locals 1

    sget-object v0, Ljava/nio/file/StandardOpenOption;->DELETE_ON_CLOSE:Ljava/nio/file/StandardOpenOption;

    return-object v0
.end method

.method public static bridge synthetic B()Ljava/nio/file/StandardOpenOption;
    .locals 1

    sget-object v0, Ljava/nio/file/StandardOpenOption;->SPARSE:Ljava/nio/file/StandardOpenOption;

    return-object v0
.end method

.method public static bridge synthetic C()Ljava/nio/file/StandardOpenOption;
    .locals 1

    sget-object v0, Ljava/nio/file/StandardOpenOption;->SYNC:Ljava/nio/file/StandardOpenOption;

    return-object v0
.end method

.method public static bridge synthetic D()Ljava/nio/file/StandardOpenOption;
    .locals 1

    sget-object v0, Ljava/nio/file/StandardOpenOption;->DSYNC:Ljava/nio/file/StandardOpenOption;

    return-object v0
.end method

.method public static bridge synthetic a(Ljava/nio/file/WatchEvent$Kind;)Ljava/lang/Class;
    .locals 0

    invoke-interface {p0}, Ljava/nio/file/WatchEvent$Kind;->type()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic b(Ljava/nio/file/WatchEvent$Kind;)Ljava/lang/String;
    .locals 0

    invoke-interface {p0}, Ljava/nio/file/WatchEvent$Kind;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic c(Ljava/nio/file/attribute/AclFileAttributeView;)Ljava/lang/String;
    .locals 0

    invoke-interface {p0}, Ljava/nio/file/attribute/AclFileAttributeView;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic d(Ljava/lang/Object;)Ljava/nio/file/Path;
    .locals 0

    check-cast p0, Ljava/nio/file/Path;

    return-object p0
.end method

.method public static bridge synthetic e(Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .locals 0

    invoke-interface {p0}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic f()Ljava/nio/file/StandardCopyOption;
    .locals 1

    sget-object v0, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    return-object v0
.end method

.method public static bridge synthetic g()Ljava/nio/file/StandardOpenOption;
    .locals 1

    sget-object v0, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    return-object v0
.end method

.method public static bridge synthetic h()Ljava/nio/file/WatchEvent$Kind;
    .locals 1

    sget-object v0, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_CREATE:Ljava/nio/file/WatchEvent$Kind;

    return-object v0
.end method

.method public static bridge synthetic i(Ljava/lang/Object;)Ljava/nio/file/attribute/DosFileAttributeView;
    .locals 0

    check-cast p0, Ljava/nio/file/attribute/DosFileAttributeView;

    return-object p0
.end method

.method public static bridge synthetic j(Ljava/nio/file/attribute/FileOwnerAttributeView;)Ljava/nio/file/attribute/UserPrincipal;
    .locals 0

    invoke-interface {p0}, Ljava/nio/file/attribute/FileOwnerAttributeView;->getOwner()Ljava/nio/file/attribute/UserPrincipal;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic k(Ljava/nio/file/WatchService;)V
    .locals 0

    invoke-interface {p0}, Ljava/nio/file/WatchService;->close()V

    return-void
.end method

.method public static bridge synthetic l(Ljava/nio/file/attribute/FileOwnerAttributeView;Ljava/nio/file/attribute/UserPrincipal;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/nio/file/attribute/FileOwnerAttributeView;->setOwner(Ljava/nio/file/attribute/UserPrincipal;)V

    return-void
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Ljava/nio/file/Path;

    return p0
.end method

.method public static bridge synthetic n(Ljava/nio/file/PathMatcher;Ljava/nio/file/Path;)Z
    .locals 0

    invoke-interface {p0, p1}, Ljava/nio/file/PathMatcher;->matches(Ljava/nio/file/Path;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic o()Ljava/nio/file/StandardCopyOption;
    .locals 1

    sget-object v0, Ljava/nio/file/StandardCopyOption;->COPY_ATTRIBUTES:Ljava/nio/file/StandardCopyOption;

    return-object v0
.end method

.method public static bridge synthetic p()Ljava/nio/file/StandardOpenOption;
    .locals 1

    sget-object v0, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    return-object v0
.end method

.method public static bridge synthetic q()Ljava/nio/file/WatchEvent$Kind;
    .locals 1

    sget-object v0, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_DELETE:Ljava/nio/file/WatchEvent$Kind;

    return-object v0
.end method

.method public static bridge synthetic r(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Ljava/nio/file/attribute/DosFileAttributeView;

    return p0
.end method

.method public static bridge synthetic s()Ljava/nio/file/StandardCopyOption;
    .locals 1

    sget-object v0, Ljava/nio/file/StandardCopyOption;->ATOMIC_MOVE:Ljava/nio/file/StandardCopyOption;

    return-object v0
.end method

.method public static bridge synthetic t()Ljava/nio/file/StandardOpenOption;
    .locals 1

    sget-object v0, Ljava/nio/file/StandardOpenOption;->APPEND:Ljava/nio/file/StandardOpenOption;

    return-object v0
.end method

.method public static bridge synthetic u()Ljava/nio/file/WatchEvent$Kind;
    .locals 1

    sget-object v0, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_MODIFY:Ljava/nio/file/WatchEvent$Kind;

    return-object v0
.end method

.method public static bridge synthetic v(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Ljava/nio/file/attribute/PosixFileAttributeView;

    return p0
.end method

.method public static bridge synthetic w()Ljava/nio/file/StandardOpenOption;
    .locals 1

    sget-object v0, Ljava/nio/file/StandardOpenOption;->TRUNCATE_EXISTING:Ljava/nio/file/StandardOpenOption;

    return-object v0
.end method

.method public static bridge synthetic x()Ljava/nio/file/WatchEvent$Kind;
    .locals 1

    sget-object v0, Ljava/nio/file/StandardWatchEventKinds;->OVERFLOW:Ljava/nio/file/WatchEvent$Kind;

    return-object v0
.end method

.method public static bridge synthetic y()Ljava/nio/file/StandardOpenOption;
    .locals 1

    sget-object v0, Ljava/nio/file/StandardOpenOption;->CREATE:Ljava/nio/file/StandardOpenOption;

    return-object v0
.end method

.method public static bridge synthetic z()Ljava/nio/file/StandardOpenOption;
    .locals 1

    sget-object v0, Ljava/nio/file/StandardOpenOption;->CREATE_NEW:Ljava/nio/file/StandardOpenOption;

    return-object v0
.end method
